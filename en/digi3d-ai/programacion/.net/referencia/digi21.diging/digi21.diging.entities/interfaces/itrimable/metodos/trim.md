# Trim
<!-- id: trim-2 -->
<!-- origen: 85dc685c55b99b30b12b7aa64634b4edab9b5f57 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns the parts of the entity outside a closed boundary line as new polygons. Method of [ITrimable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/itrimable/).

```csharp
IEnumerable<Polygon> Trim(ReadOnlyLine limit, bool coordinateZFromThisEntity)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `limit` | Enclosed area subtracted from this entity. Not modified. |
| `coordinateZFromThisEntity` | `true` to calculate result vertices' Z from this entity; `false` to calculate it from `limit`. |

## Return value

An enumeration of new [Polygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/polygon/) objects without a drawing file (`Owner` is `null`), with this entity's codes, including in their holes. This entity is not modified.

The method calculates this entity's intersections with `limit`, forms areas enclosed by sections of the entity and boundary line, and returns each enclosed area inside this entity and outside `limit`. It analyzes each area's centroid to determine whether the area is inside this entity and outside the boundary line.

- If `limit` does not intersect this entity and is outside it, the result is a polygon with this entity's geometry. If `limit` covers this entity entirely, the enumeration is empty.
- If this entity is an open line, the enumeration is empty: no enclosed area is inside it.
- If `limit` is not closed, no enclosed area is inside `limit`, and the method returns all parts of this entity split by `limit`.

Z calculation: the method triangulates the outer boundary (and holes, for a polygon) of the entity selected by `coordinateZFromThisEntity`. Each vertex of the result's outer boundary receives the Z of the triangulation vertex with the same X and Y or, if none matches, the Z interpolated in the containing triangle. Vertices falling in no triangle and vertices of the result's holes retain the sections' Z.

## Exceptions

| Exception | When |
| :--- | :--- |
| `Exception` | Topological analysis of the sections finds duplicate points or single-point arcs, or lacks sufficient data to form enclosed areas. The message is in English. |

## Example

The [IClippable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#example) uses `Trim` with a polygon and a closed boundary.
