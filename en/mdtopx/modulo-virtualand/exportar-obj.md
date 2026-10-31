# Export OBJ with textures
<!-- id: exportar-obj -->
<!-- origen: 4027c19cfe248ca010a9f6fb166f721a55f7e5ad -->

[VirtuaLand Load](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-cargar.md)

Exports the digital terrain model to Wavefront OBJ with loaded orthophotos as textures, for viewing in 3D programs such as Blender, SketchUp, Unity or MeshLab. **Export OBJ** is in the VirtuaLand tab's **Load** group beside [Textures](cargar-texturas/README.md). Available only with a digital model containing triangles.

MDTopX requests an `.obj` file name and writes the following in the same folder:

* **`<nombre>.obj`**: digital model surface, with vertices shared between triangles.
* **`<nombre>.mtl`**: materials, one per texture tile.
* **`<nombre>_textura_N.png`**: PNG textures. If an orthophoto has transparency, such as the urban classification [ground orthophoto](../modulo-mms/urbana/clasificacion-urbana/README.md#orthophotos), the PNG retains it and the material uses it.
* **`<nombre>_origen.txt`**: coordinate origin, described below.

On completion, the results window reports how many loaded textures were exported, "Operation completed successfully" and the elapsed time.

## Textures

Exports orthophotos loaded with [Load textures](cargar-texturas/README.md) and those [integrated into the digital model](integrar-texturas.md). If none exist, only geometry is exported.

* Each orthophoto loaded from a file is read again at full resolution, even if loaded at a lower display resolution. Only the portion covering the digital model is exported.
* Integrated textures are exported using the image stored in the digital model, even if the orthophoto file no longer exists.
* Large orthophotos are split into tiles of at most 4096 pixels because many viewers cannot load larger textures. Each tile is a material with its own PNG.
* Triangles crossing a tile boundary are split there so none extends beyond its texture. These cuts do not open the mesh.
* Where two orthophotos overlap, the last loaded takes precedence, as in the digital model view. Transparent areas of the last orthophoto reveal the one below.
* Triangles covered by no orthophoto are exported with a plain gray material.

Only orthogonal orthophotos, georeferenced in plan, are used. Only the digital model surface is exported, excluding objects such as buildings or trees.

## Coordinates

OBJ programs use single-precision floating-point coordinates. With raw UTM coordinates, the mesh loses precision and "shakes" when zooming in. Vertices are therefore written relative to an origin: the digital model's minimum, rounded to the meter. The origin is recorded in an `.obj` comment line (`# origen X Y Z`) and in `<nombre>_origen.txt`. Add it to each vertex to recover project coordinates.

The Z axis points upward, as in MDTopX. Some programs assume Y points upward. In Blender, for example, choose **Up: Z** and **Forward: Y** when importing to keep the model upright.

## Opening an OBJ in MDTopX

MDTopX also opens Wavefront OBJ files as digital terrain models with [Open](../operaciones-con-archivos/abrir-archivo.md):

* Vertices and faces are read; polygons with more than three sides are split into triangles.
* Textures, normals and materials are not read. File groups and objects form a single digital model.
* Z is assumed to point upward. An OBJ with Y upward opens on its side.
* If MDTopX exported the OBJ, the origin from the `# origen` line or `<nombre>_origen.txt` is added, restoring the model's coordinates.

The `.OBJ` files MDTopX saves beside point clouds to store object groupings use another format with the same extension. MDTopX distinguishes them from Wavefront by their contents.

Saving a digital model with **Save as** and the `.obj` extension writes only geometry, without textures.
