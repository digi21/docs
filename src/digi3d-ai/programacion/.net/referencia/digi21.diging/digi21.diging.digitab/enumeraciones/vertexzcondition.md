# VertexZCondition
<!-- id: digi21.diging.digitab.vertexzcondition -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Condición con la que se aplica una [VertexZAction](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/vertexzaction.md) a los vértices intermedios de un segmento. Es el valor de [TopologyZRule.VertexCondition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md).

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public enum VertexZCondition
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Always` | 0 | La acción se aplica siempre. |
| `IfBothEndpointsMatchAdjacentSegmentsInXyz` | 1 | La acción se aplica si, en cada extremo, el segmento y el segmento adyacente tienen iguales la X, la Y y la Z. |
| `IfAtLeastOneEndpointMatchesAdjacentSegmentInXyz` | 2 | La acción se aplica si, en uno de los extremos o en los dos, el segmento y el segmento adyacente a ese extremo tienen iguales la X, la Y y la Z. |
| `IfBothNodesUseCurrentSegmentZ` | 3 | La acción se aplica si los dos nodos reciben la coordenada Z del segmento al que se aplica la regla. |

## Acción cuando la condición es falsa

Si la condición es falsa, los vértices intermedios del segmento no reciben la acción de `VertexAction` y reciben otra:

| `VertexAction` | Acción que se aplica si la condición es falsa |
| :--- | :--- |
| `Keep` | `Interpolate` |
| `Interpolate` | `Keep` |
| `CentroidZ` | `Keep` |
| `ProjectOnDtm` | `Interpolate` |

Otros casos:

- Si el polígono no tiene centroide, `CentroidZ` aplica `Keep`.
- Si el código nativo de Digi3D.AI no tiene ninguna función de proyección sobre un modelo digital del terreno (MDT), `ProjectOnDtm` aplica `Interpolate`. `TopologyAnalyzer.CreatePolygon` y `CreatePolygons` siempre proporcionan esa función al código nativo: si `projectZ` es `null` o devuelve `null`, la función devuelve la coordenada Z del propio vértice y `ProjectOnDtm` conserva esa Z. Desde los métodos .NET `CreatePolygon` y `CreatePolygons` no se llega al caso en que `ProjectOnDtm` aplica `Interpolate`.
