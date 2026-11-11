# ClosingNodeZ
<!-- id: digi21.diging.digitab.closingnodez -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Operación que realiza una topología cuando el primer y el último vértice del contorno de un polígono, que coinciden en X e Y, tienen coordenadas Z distintas. Es el valor de [TopologyDefinition.ClosingNodeZ](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md).

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public enum ClosingNodeZ
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Unchanged` | 0 | El contorno no se modifica, de modo que puede no cerrar en Z. |
| `FirstVertex` | 1 | La coordenada Z del primer vértice se escribe en los dos vértices. |
| `LastVertex` | 2 | La coordenada Z del último vértice se escribe en los dos vértices. |
| `Highest` | 3 | La mayor de las dos coordenadas Z se escribe en los dos vértices. |
| `Lowest` | 4 | La menor de las dos coordenadas Z se escribe en los dos vértices. |
| `Average` | 5 | La media de las dos coordenadas Z se escribe en los dos vértices. |
