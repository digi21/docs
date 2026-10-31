# DrawingFile
<!-- id: drawingfile-3 -->
<!-- origen: b849c94f491d46e0a10e367888f82cd47bfa3bd1 -->

Module: [digi21.base](README.md)

An open drawing file. Not constructed directly: returned by `open` in [digi21.io](../digi21.io/README.md) modules. **Iterate** to retrieve [geometries](geometry.md) one at a time.

## Properties

| Property | Type | Description |
|---|---|---|
| `path` | `str` | Drawing file path. GeoJSON, KML, SVG, WKT, GeoPackage, SHP, GeoMedia, PostGIS, IFC, and VEC modules return an absolute path; SHP returns the layer folder |
| `crs` | `str` | File coordinate system WKT, or an empty string if absent. Pass to `create` when converting formats |

## Iteration

| Operation | Description |
|---|---|
| `for geometry in drawing:` | Read file geometries one at a time |

> Iteration is **lazy**: geometries are read as needed. Each keeps its source file open and remains valid without a retained `DrawingFile` reference (for example, `list(modulo.open(ruta))`). Treat file geometries as read-only.

### Files loaded in Digi3D.AI

Files in [`view.files`](../digi3d/drawing-view.md#geometries-in-each-file) and `view.drawing_file` are also `DrawingFile`. They iterate in memory and also support length and indexing:

| Operation | Description |
|---|---|
| `for geometry in drawing:` | Iterate over loaded geometries, including deleted ones |
| `len(drawing)` | Loaded geometry count |
| `drawing[i]` | Geometry at position `i` |

Loaded geometries belong to the application: `view.add` additions appear during iteration. A `DrawingFile` opened with `open` supports neither `len` nor indexing, raising `TypeError`.

## Example

```python
import digi21.io.dwg as dwg

drawing = dwg.open("parcela.dwg")
print(drawing.path)
for geometry in drawing:
    print(type(geometry).__name__)
```

## See also

* [digi21.io](../digi21.io/README.md)
* [DrawingWriter](drawingwriter.md) — write a new drawing file.
* [Course: reading a drawing file](../../aplicaciones-de-consola/ejemplos/leer-un-archivo-de-dibujo.md)
