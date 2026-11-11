# TopologyCode
<!-- id: digi21.diging.digitab.topologycode -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Código que interviene en una topología, con la configuración que tiene en ella.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public sealed class TopologyCode
```

La clase no tiene constructores públicos. Un objeto `TopologyCode` se obtiene de [TopologyDefinition.Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md). Las propiedades de `TopologyCode` son de solo lectura.

Los datos corresponden a los cuadros de diálogo [Seleccionar códigos para topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/seleccionar-codigos-para-topologia.md) del editor de tablas de códigos.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Name` | Nombre del código. Puede contener los comodines `*` y `?`. |
| [TopologyCodeRelationship](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/topologycoderelationship.md) `Relationship` | Efecto de la presencia del código en un anillo sobre la decisión de que el anillo forme un polígono. |
| `string ExcludeCondition` | Expresión de Python que excluye una geometría de la topología cuando su resultado es verdadero. Una cadena vacía desactiva la condición de exclusión. Para analizar una topología con una condición de exclusión, `TopologyAnalyzer.AnalyzeTopology` necesita el delegado [TopologyAnalysisHandlers.EvaluateExcludeCondition](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalysishandlers.md). |
| `int Priority` | Prioridad del código. Si una línea tiene varios códigos de la topología, se usa la configuración del código con mayor prioridad. La regla de nodo [NodeZRule.HighestPriorityLine](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/nodezrule.md) compara este valor entre los dos segmentos. |
| [TopologyZRule](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md) `DefaultZRule` | Regla de coordenada Z de los segmentos con este código, cuando `ZRulesByOtherCode` no tiene ninguna entrada para el código del segmento adyacente. |
| `IReadOnlyDictionary<string, TopologyZRule>` `ZRulesByOtherCode` | Reglas de coordenada Z que sustituyen a `DefaultZRule` cuando el segmento se encuentra con un segmento cuyo código es la clave del diccionario. |

## Ejemplo

Este programa muestra los códigos de una topología con su relación, su prioridad y su condición de exclusión:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 2)
{
    Console.WriteLine("Uso: CodigosDeTopologia <tabla.tab.xml> <nombre de la topología>");
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
    var exclusión = código.ExcludeCondition.Length == 0 ? "sin condición de exclusión" : $"excluye si {código.ExcludeCondition}";
    Console.WriteLine($"{código.Name}: {código.Relationship}, prioridad {código.Priority}, {exclusión}, {código.ZRulesByOtherCode.Count} reglas de Z por otro código");
}

return 0;
```
