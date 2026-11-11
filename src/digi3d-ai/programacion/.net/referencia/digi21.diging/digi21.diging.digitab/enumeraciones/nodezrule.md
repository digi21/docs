# NodeZRule
<!-- id: digi21.diging.digitab.nodezrule -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Coordenada Z que recibe un nodo, que es el extremo compartido por dos segmentos, cuando los dos segmentos tienen coordenadas Z distintas en ese extremo. Es el valor de [TopologyZRule.NodeRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md). Corresponde a la opción **Coordenada Z que proporciona un tramo con este código al nodo** del cuadro de diálogo [Seleccionar códigos para topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/seleccionar-codigos-para-topologia.md#coordenada-z-que-proporciona-un-tramo-con-este-código-al-nodo-para-el-caso-general).

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public enum NodeZRule
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `HighestPriorityLine` | 0 | La coordenada Z del segmento cuyo código tiene mayor prioridad ([TopologyCode.Priority](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md)). |
| `ThisCode` | 1 | La coordenada Z del segmento que tiene este código. |
| `OtherCode` | 2 | La coordenada Z del otro segmento. |
| `HighestZ` | 3 | La mayor de las coordenadas Z de los dos segmentos. |
| `LowestZ` | 4 | La menor de las coordenadas Z de los dos segmentos. |
| `CentroidZ` | 5 | La coordenada Z del centroide del polígono. Si el polígono no tiene centroide, el nodo recibe la coordenada Z del segmento al que se aplica la regla. |
| `Interpolate` | 6 | Valor 6 de la tabla de códigos, que el editor de tablas de códigos muestra como **Interpolar**. No interpola: asigna al nodo la coordenada Z del centroide del polígono o, si el polígono no tiene centroide, la coordenada Z del segmento al que se aplica la regla. |
| `ProjectOnDtm` | 7 | La coordenada Z que se obtiene al proyectar el nodo sobre un modelo digital del terreno (MDT). |

El valor `Interpolate` (6, **Interpolar** en el editor de tablas de códigos) no interpola entre los dos segmentos: asigna al nodo la coordenada Z del centroide del polígono o, si no hay centroide, la del segmento al que se aplica la regla. El nombre `Interpolate` es el nombre público del valor en el ensamblado y en el paquete.
