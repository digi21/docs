# Error types
<!-- id: tipos-de-errores -->
<!-- origen: 2f1c65191a41c0da80fd37ed7e47a109a769bb24 -->

A quality control communicates its result through its return value. `digi3d` defines four error and warning types, documented in [Exceptions](/digi3d-ai/programacion/python/referencia/digi3d/exceptions.md). Although called exceptions there, return them using `return`: they do not derive from `BaseException` and cannot be raised with `raise`.

| Result | Page |
| :--- | :--- |
| `None` | [Geometry has no errors](la-geometria-no-tiene-errores.md) |
| `GeometryWarning` | [Geometry has no errors but a warning is shown](la-geometria-no-tiene-errores-pero-mostrar-una-advertencia-al-usuario.md) |
| `GeometryError` | [Errors in the analyzed geometry](errores-de-la-geometria-que-se-esta-analizando.md) |
| `GeometryRelationError` | [Errors between geometries](errores-entre-dos-o-mas-geometrias.md) |
| `DatabaseFieldError` | [Database errors](errores-de-base-de-datos.md) |

Return a list of these objects for multiple problems. During digitizing, geometry error messages are combined in a dialog and warnings in a balloon. On demand, each list item becomes a task.

Python quality controls cannot replace the analyzed geometry: Digi3D.AI reads only the four types above and their lists, ignoring other return values.
