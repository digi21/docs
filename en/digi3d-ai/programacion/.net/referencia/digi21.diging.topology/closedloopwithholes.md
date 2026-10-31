# ClosedLoopWithHoles
<!-- id: digi21.diging.topology.closedloopwithholes -->
<!-- origen: e93820bc5461dfbd4896e84ec3d7672b031e80b5 -->

Namespace: `Digi21.DigiNG.Topology`  
Assembly: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Topology polygon with its holes. The type of elements returned by [TopologyAnalyzer.AnalyzeTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md).

```csharp
public class ClosedLoopWithHoles : ClosedLoop
```

Inherits `Polygon`, `Centroid` and `Entities` from [ClosedLoop](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloop.md).

## Constructors

```csharp
public ClosedLoopWithHoles()
```

Creates an empty polygon: `Polygon` and `Centroid` are `null`, and `Entities` and `Holes` are empty lists. Do not pass a `ClosedLoopWithHoles` created this way to `TopologyAnalyzer.AnalyzeCentroids`: it throws `NullReferenceException` because `Polygon` is `null`.

## Properties

| Property | Description |
| :--- | :--- |
| `List<ClosedLoop> Holes` | Islands inside the polygon, as `ClosedLoop`. Only populated if `AnalyzeTopology` was called with `analyzePolygonRelationship` set to `true`. Holes are also in `Polygon.Holes`. Each hole's `Centroid` is `null`. |

## Example

The [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md#example) example shows each polygon's hole count.
