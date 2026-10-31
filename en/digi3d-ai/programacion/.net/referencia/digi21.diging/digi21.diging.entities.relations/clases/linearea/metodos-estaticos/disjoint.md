# Disjoint
<!-- id: disjoint-2 -->
<!-- origen: 835624e9c8de7123bd5d2c0691f8b75ee5168efd -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the line and area are disjoint.

![Line disjoint from an area](../../../../../../../../../images/lineaareanocoincidentes1.png)

```csharp
public static bool Disjoint(ReadOnlyLine line, ReadOnlyLine area)
public static bool Disjoint(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

### Disjoint(ReadOnlyLine, ReadOnlyLine)

`true` if both conditions are met:

* No vertex of `line` coincides with a vertex of `area`, or their bounding boxes in the XY plane do not touch.
* Not all vertices of `line` are inside `area`.

This overload only excludes lines whose vertices are all inside the area. The method also returns `true` if the line has some vertices inside the area and others outside, without any vertices in common with the area.

### Disjoint(ReadOnlyLine, ReadOnlyPolygon)

Uses the same criterion as the previous overload, accounting for holes:

* If the bounding boxes of `line` and `area` in the XY plane do not touch, returns `true`.
* If a vertex of `line` coincides with a vertex of the outer ring or a hole, returns `false`.
* Otherwise, returns `true` unless all vertices of `line` are inside the polygon. A vertex inside a hole is outside the polygon.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |
