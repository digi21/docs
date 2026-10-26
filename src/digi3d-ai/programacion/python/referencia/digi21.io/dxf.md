# digi21.io.dxf
<!-- id: digi21.io.dxf -->

Módulo: [digi21.io](README.md)

Lee y escribe archivos DXF (`.dxf`) de AutoCAD, en ASCII o en binario. Usa el mismo exportador que
[digi21.io.dwg](dwg.md); su página de formato es la de
[DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md).

```python
import digi21.io.dxf as dxf
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.dxf`, ASCII o binario. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). Sin tabla de códigos, el código de cada
entidad es el nombre de su capa. El sistema de coordenadas se obtiene del archivo `.prj` con el mismo
nombre que el dibujo. Si `path` no existe, lanza `FileNotFoundError`.

Un sombreado (HATCH) se lee como en [digi21.io.dwg](dwg.md#open): un `Polygon` con sus huecos, o un
`Complex` de polígonos si tiene varios bucles exteriores.

## create

```python
create(path, digitab=None, crs="", *, version=3, binary=False, import_blocks_as_point=True,
       use_drawing_colors=False) -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.dxf`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Da a cada código su capa (elemento `iodwg:transform`). Si no se indica, se usa una vacía y cada código va a una capa con su nombre. |
| `crs` | `str` | `""` | Sistema de coordenadas: un WKT o `"EPSG:<código>"`. **Obligatorio**. Se escribe en un archivo `.prj` junto al dibujo. |
| `version` | `int` | `3` | Versión de AutoCAD, de 0 a 7, ambos incluidos: 0 = 11/12, 1 = 13, 2 = 14, 3 = 2000, 4 = 2004, 5 = 2007, 6 = 2010, 7 = 2013. Si el valor está fuera de rango, se lanza `ValueError`. |
| `binary` | `bool` | `False` | Escribe un DXF binario en lugar de uno ASCII. |
| `import_blocks_as_point` | `bool` | `True` | Al leer, cada referencia de bloque se convierte en un punto. |
| `use_drawing_colors` | `bool` | `False` | Las entidades con color propio en el archivo conservan ese color. |

Los parámetros a partir de `version` son los de la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md)
para DXF, en el mismo orden, y se pasan solo por nombre.

Qué hace el exportador:

- Escribe cada `Polygon`, y cada `Complex` formado solo por polígonos, como un sombreado (HATCH) de
  relleno sólido, igual que [digi21.io.dwg](dwg.md#create). El sombreado es plano: todos los
  vértices toman la Z del primero, salvo que la propiedad **Polígonos con Z no constante** del código
  indique otro comportamiento. Un `Complex` con otras geometrías no se escribe: `add` devuelve
  `False` y `warnings` recoge el error.
- No escribe las geometrías cuyo código está marcado en la tabla de códigos para que no se exporte.
- Sin `iodwg:transform`, escribe cada código en una capa con su nombre, y `warnings` lo indica.
- Si junto al destino ya hay un `.prj` con el mismo nombre, lo **conserva** en lugar de escribir
  `crs`, y `warnings` lo avisa.

Excepciones de `create`: `ValueError` si falta `crs`, no es válido o `version` está fuera de rango;
`FileNotFoundError` si la carpeta de `path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un archivo desde cero

```python
import digi21.io.dxf as dxf
from digi21.base import Line, Point, Polygon, Text

with dxf.create("parcelas.dxf", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["010123"]))
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652), (500100, 4400080, 655)]))
    writer.add(Polygon(["020402"], [(500000, 4400000, 650), (500100, 4400000, 652),
                                    (500100, 4400080, 655), (500000, 4400000, 650)]))
    writer.add(Text("Parcela 12", (500050, 4400040, 653), ["020402"], text_height=2.5))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

La parcela se escribe como un sombreado.

### Leer y clasificar por tipo

```python
import digi21.io.dxf as dxf
from digi21.base import Line, Polygon, Text

for geometry in dxf.open("parcelas.dxf"):
    capa = geometry.codes[0].code
    if isinstance(geometry, Text):
        print(capa, "texto:", geometry.text)
    elif isinstance(geometry, Polygon):
        print(capa, "polígono con", len(list(geometry.holes)), "huecos")
    elif isinstance(geometry, Line):
        print(capa, "línea cerrada" if geometry.closed else "línea abierta", len(geometry), "vértices")
    else:
        print(capa, type(geometry).__name__)
```

```
010123 Point
040645 línea abierta 3 vértices
020402 polígono con 0 huecos
020402 texto: Parcela 12
```

`Polygon` deriva de `Line`: por eso el ejemplo comprueba primero si la geometría es de tipo `Polygon`.

### Convertir un archivo BinDouble a DXF

```python
import digi21.io.bindouble as bind
import digi21.io.dxf as dxf

origen = bind.open("parcelas.bind")
with dxf.create("parcelas-convertido.dxf", crs=origen.crs, version=7) as writer:
    for geometry in origen:
        if not writer.add(geometry):
            print("No se ha escrito:", type(geometry).__name__, [c.code for c in geometry.codes])

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).
Ninguna geometría se rechaza: el polígono se escribe como un sombreado.

### Escribir un DXF binario

```python
import digi21.io.dxf as dxf
from digi21.base import Line

with dxf.create("binario.dxf", crs="EPSG:25830", binary=True) as writer:
    writer.add(Line(["040645"], [(500000, 4400000, 650), (500100, 4400000, 652)]))

with open("binario.dxf", "rb") as archivo:
    print(archivo.read(22))
print([type(g).__name__ for g in dxf.open("binario.dxf")])
```

```
b'AutoCAD Binary DXF\r\n\x1a\x00'
['Line']
```

`open` lee el DXF binario sin parámetros adicionales.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.dwg](dwg.md)
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md)
