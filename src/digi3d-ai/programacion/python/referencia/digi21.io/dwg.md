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

- **No escribe polígonos ni complejos**: `add` devuelve `False` y `warnings` recoge el error. Para
  conservar un polígono, escribe su contorno y sus huecos como líneas cerradas (tercer ejemplo).
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
False
3 escritas, 1 rechazadas
```

El polígono no se escribe.

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
020402 Text 1
040645 Line 1
```

### Convertir un archivo BinDouble a DWG sin perder los polígonos

```python
import digi21.io.bindouble as bind
import digi21.io.dwg as dwg
from digi21.base import Line, Polygon

origen = bind.open("parcelas.bind")
with dwg.create("parcelas-convertido.dwg", crs=origen.crs) as writer:
    for geometry in origen:
        if isinstance(geometry, Polygon):
            # DWG no admite polígonos: se escriben el contorno y los huecos como líneas cerradas.
            for anillo in [geometry, *geometry.holes]:
                writer.add(Line([c.code for c in geometry.codes], list(anillo)))
        else:
            writer.add(geometry)

print(writer.written, "escritas,", writer.rejected, "rechazadas")
```

```
4 escritas, 0 rechazadas
```

`parcelas.bind` es el archivo que crea el primer ejemplo de [digi21.io.bindouble](bindouble.md).
`list(anillo)` da los vértices `(x, y, z)` del anillo; `Line(códigos, vértices)` crea con ellos una
línea nueva.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [digi21.io.dxf](dxf.md)
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md)
