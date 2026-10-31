# Package `mdtopx.io.malla`
<!-- id: mdtopx-io-malla -->
<!-- origen: 7cd005b97183983285eb6377d74a35b3cf6f6e78 -->

**Triangulated mesh** (TIN) formats. Read into `scene.meshes`, one `MeshEntity` per mesh, containing `mesh` (`vertices` and `triangles`). Follow the [common interface](mdtopx-io.md#common-format-interface): `info`, `read`, `write`.

| Module | Format | Reads | Writes | Options |
|---|---|:-:|:-:|---|
| `mdt` | Native MDTopX MDT (`.mdt`) | ✔ | — | — |
| `stl` | Stereolithography (`.stl`) | ✔ | ✔ | `write`: `ascii` (False) |
| `obj` | Wavefront OBJ (`.obj`), writes textures | ✔ | ✔ | `write`: `local_origin` (True), `texture_size` (4096) |

## Native MDTopX MDT

The `mdt` module reads MDTopX digital terrain models, `.mdt` files from any version: 3, used by MDTop, through the current version 9. Version 9 is version 8 with [integrated textures](../../modulo-virtualand/integrar-texturas.md) appended. It reads only **geometry**:

| `.mdt` contents | In the scene |
|---|---|
| Terrain triangulation | `scene.meshes[0]` (`id` = 0) |
| Objects such as buildings, trees or bridges, each with its triangulation | `scene.meshes[1:]` (`id` = 1, 2…), in file order |
| Each mesh's triangle code | Mesh `layer_code` |
| Breakline codes | `scene.layers`, one per unique code |
| Each triangle's constrained sides | `Triangle` `constraint1`, `constraint2`, `constraint3`: index in `scene.layers` of the breakline code for sides a-b, b-c and c-a (`-1` = none) |
| Model boundaries | `scene.polylines` |

Triangle indices `a`, `b`, `c` start at 0 and reference their own mesh's `vertices`. Deleted triangles are not loaded.

The reference system, contour settings, point LiDAR attributes, textures and associated database (`.dbf`) are not read.

> This format declares no extension, so an `IoHost` cannot find it. Always read it with `mdt.read()`.

### Example

```python
from collections import Counter
from mdtopx.io.malla import mdt

escena = mdt.read(r"C:\datos\Triangulación de CAMPUS_SUR.mdt")

print("Mallas:", len(escena.meshes), "| límites:", len(escena.polylines))
print("Objetos por código:", Counter(m.layer_code for m in escena.meshes[1:]))

codigos = [capa.name for capa in escena.layers]
print("Códigos de ruptura:", codigos)

# Terrain. Lists are copied on each access: store them once in variables.
terreno = escena.meshes[0]
vertices = terreno.mesh.vertices
triangulos = terreno.mesh.triangles
print(f"Terreno: {len(vertices)} puntos, {len(triangulos)} triángulos")

zs = [v.z for v in vertices]
print(f"Cotas: {min(zs):.3f} a {max(zs):.3f}")

# Breakline sides by code
rupturas = Counter()
for t in triangulos:
    for r in (t.constraint1, t.constraint2, t.constraint3):
        if r >= 0:
            rupturas[codigos[r]] += 1
print("Lados de ruptura:", dict(rupturas))

# Model boundaries
for limite in escena.polylines[:3]:
    print(f"Límite {limite.layer_code}: {len(limite.vertices)} vértices, "
          f"cerrado={limite.closed}, perímetro={limite.perimeter:.2f} m")
```

To display progress when reading a large file, pass a function in `progress`:

```python
escena = mdt.read(ruta, progress=lambda f: print(f"\r{f:.0%}", end="") or True)
```

## STL

The `stl` module automatically detects and reads binary or ASCII STL files. It writes binary, or ASCII with `ascii=True`, exporting all scene meshes.

Save `.mdt` terrain as STL:

```python
import mdtopx
from mdtopx.io.malla import mdt, stl

escena = mdt.read(r"C:\datos\Terreno.mdt")

solo_terreno = mdtopx.Scene()
solo_terreno.meshes = [escena.meshes[0]]
stl.write(r"C:\datos\Terreno.stl", solo_terreno)
```

## Wavefront OBJ

The `obj` module reads an OBJ mesh: vertices and faces, splitting polygons into triangles, ignoring textures, normals and materials, and merging groups into one mesh. It writes scene meshes with **georeferenced plan images** from `scene.images` as textures: an `.obj`, an `.mtl` and a PNG per texture tile. This matches MDTopX's [Export OBJ with textures](../../modulo-virtualand/exportar-obj.md):

- Images are split into tiles no larger than `texture_size` pixels; triangles crossing tile boundaries are split there. Where images overlap, the last in `scene.images` takes precedence except where transparent (`has_alpha`).
- With `local_origin=True`, vertices are written relative to the mesh minimum rounded to the meter, recorded in the `.obj` line `# origen X Y Z` and `<nombre>_origen.txt`. Reading an OBJ with this origin adds it back.
- Z points upward.

Export `.mdt` terrain with an orthophoto texture:

```python
import mdtopx
from mdtopx.io.malla import mdt, obj
from mdtopx.io.image import tiff

escena = mdtopx.Scene()
escena.meshes = [mdt.read(r"C:\datos\Terreno.mdt").meshes[0]]
escena.images = tiff.read(r"C:\datos\orto.tif").images  # with georeferencing stored in the GeoTIFF
obj.write(r"C:\datos\Terreno.obj", escena)
```
