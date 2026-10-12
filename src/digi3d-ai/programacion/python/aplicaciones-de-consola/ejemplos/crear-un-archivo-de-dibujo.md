# Crear un archivo de dibujo
<!-- id: crear-un-archivo-de-dibujo -->

Cada módulo de `digi21.io` tiene, además de `open`, una función `create` que crea un archivo de
dibujo y devuelve un [`DrawingWriter`](../../referencia/digi21.base/drawingwriter.md). Con él se
escriben geometrías creadas desde Python o leídas de otro archivo, así que sirve tanto para
generar un dibujo desde cero como para **convertir un archivo de un formato a otro**.

| Módulo | Formato |
|---|---|
| [`digi21.io.bindouble`](../../referencia/digi21.io/bindouble.md) | BinDouble (`.bind`) |
| [`digi21.io.bin`](../../referencia/digi21.io/bin.md) | Bin (`.bin`) |
| [`digi21.io.asciidigi`](../../referencia/digi21.io/asciidigi.md) | ASCII Digi (`.asc`) |
| [`digi21.io.dgn`](../../referencia/digi21.io/dgn.md) | MicroStation DGN (`.dgn`) |
| [`digi21.io.dwg`](../../referencia/digi21.io/dwg.md) | AutoCAD DWG (`.dwg`) |
| [`digi21.io.dxf`](../../referencia/digi21.io/dxf.md) | AutoCAD DXF (`.dxf`) |

Hay más módulos (GeoJSON, KML, SVG, WKT, GeoPackage, SHP, PDF, GeoMedia, PostGIS, IFC y VEC) con sus
propias páginas de ejemplo; este tema usa los seis de la tabla.

Los parámetros de cada formato (precisión, versión de AutoCAD, plantilla…) están en la página de su
módulo, en el índice de [digi21.io](../../referencia/digi21.io/README.md).

## Crear un archivo BIN desde cero

```python
import digi21.io.bin as bin_
from digi21.base import Line, Point, Polygon, Text

with bin_.create("parcelas.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["VERT"]))
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["PARC"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                  (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["ROTULO"], text_height=2.5))

print(writer.written, "entidades escritas en", writer.path)
```

```
4 entidades escritas en parcelas.bin
```

- `crs` es el sistema de coordenadas del archivo, como `"EPSG:<código>"` o como WKT. Es
  obligatorio en los seis formatos de la tabla, que lo guardan. El formato BIN lo escribe en `parcelas.prj`.
- El bloque `with` cierra el escritor al terminar. El archivo **no está completo hasta que se
  cierra**; sin `with`, llama a `writer.close()`.
- El formato BIN guarda los códigos con 6 caracteres como máximo.

Para comprobarlo, se lee con `open`:

```python
for geometry in bin_.open("parcelas.bin"):
    print(type(geometry).__name__, [c.code for c in geometry.codes], len(geometry), "vértices")
```

```
Point ['VERT'] 1 vértices
Line ['LINDE'] 3 vértices
Polygon ['PARC'] 4 vértices
Text ['ROTULO'] 1 vértices
```

## Convertir un archivo BIN a DXF

Se abre el origen con `open` y se pasa cada geometría al escritor del formato de destino. El
sistema de coordenadas se copia con [`DrawingFile.crs`](../../referencia/digi21.base/drawingfile.md):

```python
import digi21.io.bin as bin_
import digi21.io.dxf as dxf

origen = bin_.open("parcelas.bin")
with dxf.create("parcelas.dxf", crs=origen.crs, version=7) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("No se ha escrito:", type(geometry).__name__, [c.code for c in geometry.codes])

print(f"{writer.written} entidades escritas, {writer.rejected} rechazadas")
```

```
No se ha escrito: Polygon ['PARC']
3 entidades escritas, 1 rechazadas
```

`add` devuelve `False` cuando la geometría no se escribe. Aquí el exportador de DXF no admite
polígonos. `version=7` escribe un DXF de AutoCAD 2013.

## Revisar los avisos del exportador

El exportador informa de lo que ha hecho con cada código en `warnings`:

```python
for aviso in writer.warnings:
    print(aviso)
```

```
No se han localizado parámetros para traducir a DWG/DXF entidades con el código: "(desconocido)". Las entidades con este código se almacenarán en la capa: "(desconocido)".
No se localizó ninguna entrada para traducir el código: VERT. La entidad se ha almacenado en la capa 'VERT'.
No se localizó ninguna entrada para traducir el código: LINDE. La entidad se ha almacenado en la capa 'LINDE'.
No se localizó ninguna entrada para traducir el código: PARC. La entidad se ha almacenado en la capa 'PARC'.
Error al almacenar una entidad: No se pueden almacenar polígonos en un archivo dwg.
No se localizó ninguna entrada para traducir el código: ROTULO. La entidad se ha almacenado en la capa 'ROTULO'.
```

Sin tabla de códigos, cada código va a una capa con su nombre. Para asignar capas, colores y
niveles, pasa una [`DigiTab`](../../referencia/digi21.base/digitab.md) a `create`:

```python
import digi21.base as base
import digi21.io.bin as bin_
import digi21.io.dxf as dxf

digitab = base.DigiTab.load("Digi.tab.xml")
origen = bin_.open("parcelas.bin", digitab)
with dxf.create("parcelas.dxf", digitab, crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)
```

Con DGN, una geometría cuyo código no tiene traducción DGN en la tabla se escribe en un nivel con
el nombre del código y con los parámetros por defecto, y `warnings` lo indica. Para que DGN reciba la
traducción de la tabla, importa `digi21.io.dgn` antes de `DigiTab.load` (ver
[digi21.io.dgn](../../referencia/digi21.io/dgn.md)).

## Errores

Los parámetros incorrectos lanzan `ValueError`; por ejemplo, olvidar `crs`:

```python
import digi21.io.dxf as dxf

try:
    dxf.create("sin-src.dxf")
except ValueError as error:
    print(error)
```

```
crs is required: this format stores the coordinate reference system. Pass a WKT string or 'EPSG:<code>'.
```

Los errores del exportador llegan como `RuntimeError` con su mensaje.

## Exportar el dibujo activo desde Digi3D.AI

Un guion del [panel de Python](../../panel-de-python/README.md) puede exportar el dibujo que
está abierto en Digi3D.AI con la orden
[EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md):

```python
import digi3d

view = digi3d.current_view()
view.run_command("PARAMETROS_IMPORTACION=.dxf 7 0 1 0")
view.run_command(r"EXPORTAR=C:\trabajos\parcelas.dxf")
```

Sin la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md),
EXPORTAR abre el cuadro de diálogo de parámetros del formato y espera a que el usuario lo
acepte. Los valores son los mismos que los parámetros de `create`, en el orden de la página de
cada formato en
[Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md).
EXPORTAR también puede abrir un cuadro de diálogo si no consigue transformar las coordenadas del
dibujo al sistema del archivo de destino. Este ejemplo no se ha ejecutado.

## Véase también

- [Referencia: digi21.io](../../referencia/digi21.io/README.md)
- [Referencia: DrawingWriter](../../referencia/digi21.base/drawingwriter.md)
- [Leer un archivo de dibujo](leer-un-archivo-de-dibujo.md)
- [Crear geometrías](crear-geometrias.md)
