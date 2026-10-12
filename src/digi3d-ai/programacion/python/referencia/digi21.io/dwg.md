# digi21.io.dwg
<!-- id: digi21.io.dwg -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos [DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md)
(`.dwg`) de AutoCAD. Los archivos DXF tienen su propio módulo, [digi21.io.dxf](dxf.md), con el mismo
exportador.

```python
import digi21.io.dwg as dwg
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.dwg`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). Sin tabla de códigos, el código de cada
entidad es el nombre de su capa. El sistema de coordenadas sale del archivo
`.prj` con el mismo nombre que el dibujo. Si `path` no existe, lanza `FileNotFoundError`.

Un sombreado (HATCH) con un único bucle exterior se lee como un `Polygon` con sus huecos, y uno con
varios bucles exteriores, como un `Complex` con un `Polygon` por exterior. La página del
[formato DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md#polígonos-y-sombreados)
explica cómo se clasifican los bucles.

## create

```python
create(path, digitab=None, crs="", *, version=3, template="", import_blocks=False,
       blocks_folder="", import_blocks_as_point=True, import_palette=False,
       use_drawing_colors=False) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.dwg`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Da a cada código su capa (elemento `iodwg:transform`). Si no se indica, se usa una vacía y cada código va a una capa con su nombre. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se escribe en un archivo `.prj` junto al dibujo. |
| `version` | `int` | `3` | Versión de AutoCAD, de 0 a 7: 0 = 11/12, 1 = 13, 2 = 14, 3 = 2000, 4 = 2004, 5 = 2007, 6 = 2010, 7 = 2013. Fuera de rango, `ValueError`. |
| `template` | `str` | `""` | Archivo `.dwg` que se usa como plantilla. Si está vacío, se crea un dibujo nuevo. |
| `import_blocks` | `bool` | `False` | Al abrir un archivo existente, crea un `.bin` por cada bloque en `blocks_folder`. |
| `blocks_folder` | `str` | `""` | Carpeta de los `.bin` de los bloques. |
| `import_blocks_as_point` | `bool` | `True` | Al leer, cada referencia de bloque se convierte en un punto. |
| `import_palette` | `bool` | `False` | Al abrir un archivo existente, sustituye la paleta por la de AutoCAD. |
| `use_drawing_colors` | `bool` | `False` | Las entidades con color propio en el archivo conservan ese color. |

Los parámetros a partir de `version` son los de la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
para DWG, en el mismo orden, y se pasan solo por nombre.

Qué hace el exportador:

- Escribe cada `Polygon` como un sombreado (HATCH) de relleno sólido: un bucle por el contorno y
  otro por cada hueco. El sombreado es plano: todos los vértices toman la Z del primero (tercer
  ejemplo), y `warnings` lo avisa una vez por código. La propiedad **Polígonos con Z no constante**
  de la traducción DWG del código (`<iodwg:polygon nonConstantZ="..."/>`) permite escribir esos
  polígonos como polilínea 3D cerrada o no escribirlos; consulta
  [Archivos AutoCAD DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md).
- Escribe un `Complex` formado solo por polígonos como un único sombreado (cuarto ejemplo), en la
  capa del código del `Complex`: al releerlo, todas las partes tienen ese código. Un `Complex` con
  otras geometrías no se escribe: `add` devuelve `False` y `warnings` recoge el error.
- No escribe, y `add` devuelve `False`, un polígono con un anillo de menos de tres vértices ni una
  geometría que al leerla daría otros polígonos: partes de un `Complex` que se solapan, una parte
  dentro de otra sin estar en uno de sus huecos, o un hueco fuera de su polígono.
- No escribe las geometrías cuyo código la tabla dice que no se exporta.
- Sin `iodwg:transform`, escribe cada código en una capa con su nombre, y `warnings` lo indica.
- Si junto al destino ya hay un `.prj` con el mismo nombre, lo **conserva** en lugar de escribir
  `crs`, y `warnings` lo avisa.
- Si el archivo no se puede guardar al cerrar el escritor, `warnings` recoge el error.

Excepciones de `create`: `ValueError` si falta `crs`, no es válido o `version` está fuera de rango;
`FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo de AutoCAD 2013 desde cero

```python
import digi21.io.dwg as dwg
from digi21.base import Line, Point, Polygon, Text

with dwg.create("parcelas.dwg", crs="EPSG:25830", version=7) as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    print(writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                          (500100, 4400080, 655), (500000, 4400000, 650)])))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
True
4 escritas, 0 rechazadas
```

El polígono se escribe como un sombreado.

### Leer y contar por capa y por tipo

```python
import collections

import digi21.io.dwg as dwg

conteo = collections.Counter()
for geometry in dwg.open("parcelas.dwg"):
    conteo[(geometry.codes[0].code, type(geometry).__name__)] += 1

for (capa, tipo), n in sorted(conteo.items()):
    print(capa, tipo, n)
```

```
010123 Point 1
020402 Polygon 1
020402 Text 1
040645 Line 1
```

### Convertir un archivo BinDouble a DWG

```python
import digi21.io.bindouble as bind
import digi21.io.dwg as dwg
from digi21.base import Polygon

origen = bind.open("parcelas.bind")
with dwg.create("parcelas-convertido.dwg", crs=origen.crs) as writer:
    for geometry in origen:
        writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")

for geometry in dwg.open("parcelas-convertido.dwg"):
    if isinstance(geometry, Polygon):
        print("Polygon:", [tuple(v) for v in geometry])
```

```
4 escritas, 0 rechazadas
Polygon: [(500000.0, 4400000.0, 650.0), (500100.0, 4400000.0, 650.0), (500100.0, 4400080.0, 650.0), (500000.0, 4400000.0, 650.0)]
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md). El
polígono de origen tiene Z 650, 652 y 655; el sombreado es plano y el polígono releído tiene la Z del
primer vértice en todos.

### Escribir un polígono con un hueco y una isla

```python
import digi21.io.dwg as dwg
from digi21.base import Complex, Line, Polygon

manzana = Polygon(["020402"], [(0, 0, 10), (100, 0, 10), (100, 100, 10), (0, 100, 10), (0, 0, 10)])
manzana.add_hole(Line(["020402"], [(20, 20, 10), (80, 20, 10), (80, 80, 10), (20, 80, 10), (20, 20, 10)]))
patio = Polygon(["020402"], [(40, 40, 10), (60, 40, 10), (60, 60, 10), (40, 60, 10), (40, 40, 10)])

parcela = Complex(["020402"])
parcela.add(manzana)
parcela.add(patio)

with dwg.create("manzana.dwg", crs="EPSG:25830") as writer:
    print(writer.add(parcela))

for geometry in dwg.open("manzana.dwg"):
    print(type(geometry).__name__)
    for parte in geometry.geometries:
        print(" ", type(parte).__name__, "con", len(list(parte.holes)), "huecos")
```

```
True
Complex
  Polygon con 1 huecos
  Polygon con 0 huecos
```

El complejo se escribe como un único sombreado con tres bucles. Al leerlo, el bucle del patio está
dentro del hueco de la manzana, así que es otro exterior: el resultado es un `Complex` con dos
polígonos.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.dxf](dxf.md)
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md)
