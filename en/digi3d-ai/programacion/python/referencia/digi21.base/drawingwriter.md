# DrawingWriter
<!-- id: drawingwriter -->
<!-- origen: ee2caebd7915f62422cc0ad0b959cb917e826260 -->

Module: [digi21.base](README.md)

Write geometries to a new drawing file. Not constructed directly: returned by `create` in [digi21.io](../digi21.io/README.md#create) modules.

The file is **incomplete until closed**. Use a context manager (`with`) to close when the `with` block finishes, or call `close()` after writing.

## Properties

| Property | Type | Description |
|---|---|---|
| `path` | `str` | Drawing file path |
| `closed` | `bool` | `True` when closed |
| `written` | `int` | Written entity count. For formats without multiple codes per entity, one geometry with *n* codes counts as *n* entities |
| `rejected` | `int` | Unwritten geometry count: deleted, virtual, vertexless, unsupported types, untranslatable codes, or exporter errors. `warnings` explains each reason once |
| `warnings` | `list[str]` | Format exporter warnings (codes missing table translations, created layers, entity write errors, etc.) |

## Methods

| Method | Returns | Description |
|---|---|---|
| `add(geometry)` | `bool` | Write a [geometry](geometry.md) copy. Return `False` if unwritten (incrementing `rejected`). Raise `ValueError` for geometry without codes |
| `close()` | `None` | Finish the file, doing nothing if already closed. Raise `RuntimeError` for exporter finalization errors (such as failure to replace the destination); the writer still closes |

Calling `add` on a closed writer, or reusing it in `with`, raises `ValueError`. Format exporter errors raise `RuntimeError` with the error message. If `with` exits with an exception, a closing error does not replace it.

## Geometry handling

* Write a **copy** without modifying the supplied geometry, which may come from [DrawingFile](drawingfile.md) iteration.
* Look up every code in the [code table](digitab.md) passed to `create`. Its properties (layer, level, color, etc.) guide export.
* Formats without multiple codes per entity receive one copy per code, like [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md).
* Copies remain in memory until the writer closes.

## Example

```python
import digi21.io.bin as bin_
from digi21.base import Line, Point

with bin_.create("parcelas.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["VERT"]))
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)]))

print(writer.written, "entidades escritas")
```

## See also

* [digi21.io](../digi21.io/README.md) — `create` and format parameters.
* [DrawingFile](drawingfile.md)
* [Course: creating a drawing file](../../aplicaciones-de-consola/ejemplos/crear-un-archivo-de-dibujo.md)
