# digi21.io.ifc
<!-- id: digi21.io.ifc -->

Módulo: [digi21.io](README.md)

Lee y escribe modelos de edificio [IFC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md)
(`.ifc`). El exportador solo escribe **caras** de edificios, que convierte en muros y forjados.

```python
import digi21.io.ifc as ifc
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo `.ifc`. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Tabla de códigos (opcional). Si no se indica, se usa una vacía. |

Devuelve un [DrawingFile](../digi21.base/drawingfile.md). Cada elemento del modelo se lee como un
[Complex](../digi21.base/complex.md) con el código de su clase IFC (`IfcWall`, `IfcSlab`…) cuyas
líneas son las aristas del sólido. Si `path` no existe, lanza `FileNotFoundError`.

La biblioteca de IFC escribe en la salida estándar una línea como
`messageCallback not set. Lost message: Detected IFC version: IFC4X1` al leer el archivo.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parámetro | Tipo | Por defecto | Descripción |
|---|---|---|---|
| `path` | `str` | — | Ruta del archivo `.ifc`. Si existe, se sustituye. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Tabla de códigos. Si no se indica, se usa una vacía. |
| `crs` | `str` | `""` | Opcional. El exportador declara un sistema local fijo. |

El formato no tiene parámetros en la orden
[PARAMETROS_IMPORTACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md).

Qué escribe el exportador:

- Solo **caras**: líneas o polígonos de **más de tres vértices** cuyos códigos son `LIMEXT` seguido de
  las componentes x, y y z de su normal. Rechaza cualquier otra geometría, y `warnings` lo explica.
- Una cara cuya normal tiene una z menor que 0,1 es un muro (`IfcWall`); el resto, un forjado
  (`IfcSlab`). Las dos se extruyen 0,3 m a lo largo de la normal.
- Una geometría no repite códigos, así que las componentes iguales de la normal se escriben con
  textos distintos: `["LIMEXT", "1", "0", "0.0"]`.
- Escribe el modelo al cerrar el escritor.

Excepciones de `create`: `ValueError` si `crs` no es válido; `FileNotFoundError` si la carpeta de
`path` no existe.

## Ejemplos

Los ejemplos de esta página se han ejecutado con Python 3.12; la salida que se muestra es la real.

### Crear un modelo con un muro y un forjado

```python
import digi21.io.ifc as ifc
from digi21.base import Line, Polygon

# Cada cara lleva el código LIMEXT seguido de las componentes x, y, z de su normal. Los códigos de una
# geometría no se repiten, así que las componentes iguales se escriben distintas: "0" y "0.0".
muro = Polygon(["LIMEXT", "1", "0", "0.0"], [(10, 0, 0), (10, 5, 0), (10, 5, 3), (10, 0, 3), (10, 0, 0)])
forjado = Polygon(["LIMEXT", "0", "0.0", "1"], [(0, 0, 3), (10, 0, 3), (10, 5, 3), (0, 5, 3), (0, 0, 3)])

with ifc.create("edificio.ifc") as writer:
    writer.add(muro)
    writer.add(forjado)
    print(writer.add(Line(["040645"], [(0, 0, 0), (10, 0, 0)])))

print(writer.written, "escritas,", writer.rejected, "rechazadas")
print(writer.warnings)
```

```
False
2 escritas, 1 rechazadas
['IFC only stores faces whose codes are LIMEXT followed by the x, y and z components of their normal.']
```

### Leer y contar por clase IFC

```python
import collections

import digi21.io.ifc as ifc

conteo = collections.Counter()
for geometry in ifc.open("edificio.ifc"):
    conteo[(geometry.codes[0].code, type(geometry).__name__, len(geometry))] += 1

for (codigo, tipo, lineas), n in sorted(conteo.items()):
    print(codigo, tipo, lineas, "líneas:", n)
```

```
messageCallback not set. Lost message: Detected IFC version: IFC4X1
IfcSlab Complex 2 líneas: 1
IfcWall Complex 2 líneas: 1
```

### Convertir las caras de un archivo BinDouble a IFC

```python
import digi21.io.bindouble as bind
import digi21.io.ifc as ifc

origen = bind.open("edificio.bind")
with ifc.create("edificio-convertido.ifc") as writer:
    for geometry in origen:
        if geometry.code_count == 4 and geometry.codes[0].code == "LIMEXT":
            writer.add(geometry)

print(writer.written, "caras escritas")
```

```
3 caras escritas
```

`edificio.bind` tiene tres caras con el código `LIMEXT` (dos muros y un forjado) y una línea con otro
código, que el filtro descarta antes de llamar a `add`.

## Véase también

- [digi21.io](README.md) — índice de módulos y lo que tienen en común.
- [Complex](../digi21.base/complex.md)
- [DrawingFile](../digi21.base/drawingfile.md) y [DrawingWriter](../digi21.base/drawingwriter.md)
- [Formato IFC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md)
