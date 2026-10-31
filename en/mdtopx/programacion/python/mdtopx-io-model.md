# Package `mdtopx.io.model`
<!-- id: mdtopx-io-model -->
<!-- origen: f2aa89ae587ffb5ff73af7d22ec42c8ec3d91e5f -->

**BIM model** formats.

| Module | Format | Reads | Writes | Options |
|---|---|:-:|:-:|---|
| `ifc` | IFC 4.3 (`.ifc`) | — | ✔ | `write`: `origin` ((0, 0, 0)) |

## IFC

`ifc.write` converts the scene into an IFC 4.3 model:

| In the scene | In IFC |
|---|---|
| Meshes (`scene.meshes`) | Terrain (`IfcGeographicElement` of type `TERRAIN`), with upward-facing face normals. |
| Closed polylines with nonzero `normal` | Walls (`IfcWall`) if the normal is almost horizontal (`abs(normal.z) < 0.1`), slabs (`IfcSlab`) otherwise, extruded along the normal. |
| Other polylines | 3D annotations (`IfcAnnotation`). |

`origin` is an `(x, y, z)` point subtracted from all coordinates. Ground coordinates, such as UTM, are retained by default; some viewers work better with coordinates near 0.

## Example

Export terrain from an MDTopX digital model to IFC:

```python
import mdtopx
from mdtopx.io.malla import mdt
from mdtopx.io.model import ifc

escena = mdt.read(r"C:\datos\Terreno.mdt")

terreno = mdtopx.Scene()
terreno.meshes = [escena.meshes[0]]
ifc.write(r"C:\datos\Terreno.ifc", terreno)
```
