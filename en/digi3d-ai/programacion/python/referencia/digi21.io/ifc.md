# digi21.io.ifc
<!-- id: digi21.io.ifc -->
<!-- origen: 5d67fbcfe96aa2b4646e384de59dee20d341ea28 -->

Module: [digi21.io](README.md)

Reads and writes [IFC](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md) building models (`.ifc`). The exporter writes only building **faces**, converting them into walls and slabs.

```python
import digi21.io.ifc as ifc
```

## open

```python
open(path, digitab=None) -> DrawingFile
```

| Argument | Type | Description |
|---|---|---|
| `path` | `str` | `.ifc` file path. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | Optional code table. An empty one is used if omitted. |

Returns a [DrawingFile](../digi21.base/drawingfile.md). Each model element is a [Complex](../digi21.base/complex.md) with its IFC class code (`IfcWall`, `IfcSlab`…) and lines representing solid edges. Raises `FileNotFoundError` if `path` does not exist.

The IFC library writes a line such as `messageCallback not set. Lost message: Detected IFC version: IFC4X1` to standard output when reading.

## create

```python
create(path, digitab=None, crs="") -> DrawingWriter
```

| Parameter | Type | Default | Description |
|---|---|---|---|
| `path` | `str` | — | `.ifc` file path. Replaces an existing file. |
| `digitab` | [DigiTab](../digi21.base/digitab.md) | `None` | Code table. An empty one is used if omitted. |
| `crs` | `str` | `""` | Optional. The exporter declares a fixed local system. |

The format has no [IMPORTATION_PARAMETERS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) parameters.

Exporter output:

- Only **faces**: lines or polygons with **more than three vertices** whose codes are `LIMEXT` followed by the x, y and z components of their normal. Other geometries are rejected and explained in `warnings`.
- A face with a normal Z component below 0.1 becomes a wall (`IfcWall`); others become slabs (`IfcSlab`). Both types are extruded 0.3 m along the normal.
- Geometry codes cannot repeat, so equal normal components use different strings: `["LIMEXT", "1", "0", "0.0"]`.
- Writes the model when the writer closes.

`create` exceptions: `ValueError` for invalid `crs`; `FileNotFoundError` if the `path` folder does not exist.

## Examples

These examples were run with Python 3.12; the output shown is the actual output.

### Create a model with a wall and a slab

```python
import digi21.io.ifc as ifc
from digi21.base import Line, Polygon

# Each face has LIMEXT followed by its normal x, y, z components. A geometry cannot repeat codes,
# so equal components use different strings: "0" and "0.0".
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

### Read and count by IFC class

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

### Convert BinDouble faces to IFC

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

`edificio.bind` contains three `LIMEXT` faces (two walls and a slab) and a line with another code, discarded by the filter before `add`.

## See also

- [digi21.io](README.md) — module index and shared behavior.
- [Complex](../digi21.base/complex.md)
- [DrawingFile](../digi21.base/drawingfile.md) and [DrawingWriter](../digi21.base/drawingwriter.md)
- [IFC format](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/ifc.md)
