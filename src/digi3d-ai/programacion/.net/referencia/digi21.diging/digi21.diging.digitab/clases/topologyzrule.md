# TopologyZRule
<!-- id: digi21.diging.digitab.topologyzrule -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Regla que decide las coordenadas Z de los nodos y de los vértices de un segmento de una topología.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public sealed class TopologyZRule
```

La clase no tiene constructores públicos. Un objeto `TopologyZRule` se obtiene de [TopologyCode.DefaultZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md) y de [TopologyCode.ZRulesByOtherCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md). Las propiedades de `TopologyZRule` son de solo lectura.

La regla corresponde a las opciones **Coordenada Z que proporciona un tramo con este código al nodo** y **Coordenada Z a asignar a los vértices de un tramo con este código** del cuadro de diálogo [Seleccionar códigos para topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/seleccionar-codigos-para-topologia.md#coordenada-z-que-proporciona-un-tramo-con-este-código-al-nodo-para-el-caso-general). `TopologyAnalyzer.CreatePolygon` y `CreatePolygons` aplican estas reglas cuando [TopologyDefinition.PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) o [TopologyCentroid.PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycentroid.md) vale `FromGeometries`.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [NodeZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/nodezrule.md) `NodeRule` | Regla que se aplica al nodo de los extremos del segmento. |
| [VertexZAction](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/vertexzaction.md) `VertexAction` | Operación que se aplica a los vértices intermedios del segmento. |
| [VertexZCondition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/vertexzcondition.md) `VertexCondition` | Condición con la que se aplica `VertexAction`. |
| `string DtmTag` | Etiqueta de los modelos digitales del terreno (MDT) sobre los que se proyectan los nodos y los vértices intermedios. Una etiqueta vacía admite cualquier MDT. |

## Ejemplo

Este programa muestra, de cada código de una topología, la regla de Z que se aplica a sus segmentos:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 2)
{
    Console.WriteLine("Uso: ReglasZ <tabla.tab.xml> <nombre de la topología>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);
using var topología = tabla.GetTopology(args[1]);

if (topología is null)
{
    Console.WriteLine($"La tabla de códigos no define la topología {args[1]}.");
    return 1;
}

foreach (var código in topología.Codes)
{
    var regla = código.DefaultZRule;
    Console.WriteLine($"{código.Name}: nodo {regla.NodeRule}, vértices {regla.VertexAction} ({regla.VertexCondition}), etiqueta de MDT «{regla.DtmTag}»");
}

return 0;
```
