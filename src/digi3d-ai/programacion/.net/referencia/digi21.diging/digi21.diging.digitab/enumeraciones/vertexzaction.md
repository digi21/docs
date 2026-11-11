# VertexZAction
<!-- id: digi21.diging.digitab.vertexzaction -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Operación que realiza una topología con la coordenada Z de los vértices intermedios de un segmento, que son los vértices que no son nodos. Es el valor de [TopologyZRule.VertexAction](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md). La acción se aplica según la condición [VertexZCondition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/vertexzcondition.md).

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public enum VertexZAction
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Keep` | 0 | El vértice conserva su coordenada Z. |
| `Interpolate` | 1 | La coordenada Z se interpola linealmente entre los dos nodos del segmento. |
| `CentroidZ` | 2 | El vértice recibe la coordenada Z del centroide del polígono. |
| `ProjectOnDtm` | 3 | El vértice recibe la coordenada Z que da el modelo digital del terreno (MDT) en la X y la Y del vértice. |
