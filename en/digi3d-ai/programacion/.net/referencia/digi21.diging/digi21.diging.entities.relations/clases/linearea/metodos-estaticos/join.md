# Join
<!-- id: join-2 -->
<!-- origen: e0b7a2d3a28c7e6b9b85ff78437aa8d7d2fdfc90 -->

Namespace: [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the line touches the area at an intermediate line vertex, without following or crossing the boundary.

![Line joining an area](../../../../../../../../../images/lineajuntaarea.png)

```csharp
public static bool Join(ReadOnlyLine line, ReadOnlyLine area)
public static bool Join(ReadOnlyLine line, ReadOnlyPolygon area)
```

| Parameter | Description |
| :--- | :--- |
| `line` | Line. |
| `area` | Area: a closed [ReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlyline/) or a [ReadOnlyPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypolygon/). |

## Return value

`Join(ReadOnlyLine, ReadOnlyLine)` returns `true` if all three conditions are met:

* An intermediate vertex of `line` (neither the first nor the last) coincides with a vertex of `area`.
* The line shares no edge with the area: no two consecutive line vertices coincide with two consecutive area vertices.
* The line does not cross the area's boundary at a common vertex. Only the first intermediate line vertex coinciding with an area vertex other than the area's first and last is analyzed. At that vertex, the line crosses if the neighboring vertices of each entity lie on opposite sides of the other entity's edge leaving that vertex.

`Join(ReadOnlyLine, ReadOnlyPolygon)` returns `true` if all three conditions are met for the polygon's outer ring or one of its holes.

If only a line endpoint coincides, the method returns `false`; use [EndpointJoin](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/clases/linearea/metodos-estaticos/endpointjoin.md) for that case.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `line` or `area` is `null`. |
