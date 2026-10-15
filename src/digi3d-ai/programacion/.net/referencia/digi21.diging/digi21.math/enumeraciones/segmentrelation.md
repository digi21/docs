# SegmentRelation
<!-- id: segmentrelation -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Posición relativa de las rectas que pasan por los extremos de dos [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md). La devuelven `Segment.AnalyzeRelation` (en el espacio) y `Segment.AnalyzeRelationPlaneXY` (en el plano X, Y).

```csharp
public enum SegmentRelation
```

El cálculo se hace con las rectas, no con los segmentos: dos segmentos con relación `Cutted` pueden no tocarse si el punto de corte de las rectas está fuera de alguno de ellos.

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Crossed` | 0 | Las rectas se cruzan: no son paralelas y no están en el mismo plano. Solo lo devuelve `AnalyzeRelation`. |
| `Cutted` | 1 | Las rectas se cortan en un punto. |
| `Paralel` | 2 | Las rectas son paralelas y distintas. |
| `Coincident` | 3 | Las rectas son la misma recta. |

## Ejemplo

El ejemplo de [Segment](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/segment.md) compara la relación de dos segmentos en el espacio y en el plano X, Y.
