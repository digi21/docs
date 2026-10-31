# Clip
<!-- id: clip -->
<!-- origen: 9287f1b571ccddd7f45b35a9b47f317406f1f8c6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Splits the entity using a boundary line and returns the parts as new entities. Method of [IClippable](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/).

```csharp
IEnumerable<Entity> Clip(ReadOnlyLine limit)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `limit` | Line used to split the entity. May be open or closed. Not modified. |

## Return value

An enumeration of new read/write entities without a drawing file (`Owner` is `null`), with this entity's codes. This entity is not modified.

The method calculates this entity's intersections with `limit`. If the entity is an open line, it splits the line at the calculated intersections. If the entity is a closed line or polygon, it forms areas enclosed by sections of the entity and boundary line and returns those whose interior point is not outside this entity:

| Type | Result |
| :--- | :--- |
| `ReadOnlyLine`, `Line` closed in X and Y | One closed `Line` per enclosed area. If `limit` does not intersect the line, the enumeration is empty. |
| Open `ReadOnlyLine`, `Line` | Sections into which `limit` splits this line: with N intersections, N + 1 lines, including the first and last sections. `limit` is not split. If `limit` does not intersect the line, the enumeration is empty. |
| `ReadOnlyPolygon`, `Polygon` | One `Polygon`, including its holes, per enclosed area; areas inside a polygon hole are not returned. If `limit` does not intersect the boundary or holes, the polygon is split only if `limit` is entirely inside it. If the result is a single polygon, the enumeration is empty. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity is a line with fewer than 2 vertices. |
| `Exception` | Topological analysis of the sections finds duplicate points or single-point arcs, or lacks sufficient data to form enclosed areas. The message is in the Digi3D.AI interface language. |

## Example

The [IClippable example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/interfaces/iclippable/#example) splits a polygon using a closed line.
