# ClosedLoopWithHoles
<!-- id: digi21.diging.topology.closedloopwithholes -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Polígono de una topología con sus huecos. Es el tipo de los elementos que devuelve [TopologyAnalyzer.AnalyzeTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md).

```csharp
public class ClosedLoopWithHoles : ClosedLoop
```

Hereda de [ClosedLoop](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloop.md) las propiedades `Polygon`, `Centroid` y `Entities`.

## Constructores

```csharp
public ClosedLoopWithHoles()
```

Crea un polígono vacío: `Polygon` y `Centroid` valen `null`, y `Entities` y `Holes` son listas vacías. No pases un `ClosedLoopWithHoles` creado así a `TopologyAnalyzer.AnalyzeCentroids`: lanza `NullReferenceException` porque `Polygon` es `null`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `List<ClosedLoop> Holes` | Islas que quedan dentro del polígono, como `ClosedLoop`. Solo se rellena si se llamó a `AnalyzeTopology` con `analyzePolygonRelationship` a `true`. Los huecos están también en `Polygon.Holes`. El `Centroid` de cada hueco vale `null`. |

## Ejemplo

El ejemplo de [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md#ejemplo) muestra el número de huecos de cada polígono.
