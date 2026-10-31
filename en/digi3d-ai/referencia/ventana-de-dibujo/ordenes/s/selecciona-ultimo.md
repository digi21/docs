# SELECT\_LAST
<!-- id: selecciona-ultimo -->
<!-- origen: 3db8e179d6760a09e0e9fb08422d23e48c7504f0 -->

Select the last entity recorded in the drawing file when a running command requests entity selection.

## Parameters

Without parameters, search for the last entity of any type. Each parameter is a letter restricting the search to an entity type; supply multiple letters separated by spaces to find the last entity of any specified type.

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1...n | [Geometry type](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) to search | `l` lines, `p` points and point-based complex entities, `c` lines, points, and point-based complex entities, `t` texts, `h` polygons, `g` complex entities, `b` images, `o` OLE objects, `*` all preceding types | Yes |

## Notes

Use this command to speed up stereoplotting or editing.

Traverse the active drawing file backward and take the first visible entity within the area of interest of a specified type. Deleted entities are considered only when [DELETED](/digi3d-ai/referencia/ventana-de-dibujo/variables/b/borrados.md) is enabled. If the running command accepts single selection, it receives the entity as selected at its last vertex; otherwise, it receives a data button press at that vertex.

### Example:

Combining _SELECT\_LAST_ with [ZOOM\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoom-entidad.md) is useful if a point was digitized at infinity. Run _ZOOM\_ENTITY_, then _SELECT\_LAST_ to reach the entity quickly and delete it.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Select last entity |
| Toolbar | Selections |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [DELETE\_LAST](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-ultimo.md)<br>[RUN\_COMMAND\_PASSING\_LAST\_GEOMETRY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/ejecuta-orden-pasandole-ultima-geometria.md)<br>[SELECT\_INDEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-indice.md) |
| Internal name | {86671AB1-AFE0-4af5-8695-8BF8B5BE1E67} |
