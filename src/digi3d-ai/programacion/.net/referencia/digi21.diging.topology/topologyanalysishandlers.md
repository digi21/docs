# TopologyAnalysisHandlers
<!-- id: digi21.diging.topology.topologyanalysishandlers -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Delegados que [TopologyAnalyzer.AnalyzeTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md) invoca mientras forma la topología de una [TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md). Los delegados de notificación pueden ser `null`. `EvaluateExcludeCondition` es obligatorio si algún código de la topología tiene una condición de exclusión que no está vacía.

Requiere el paquete `Digi21.DigiNG.Topology` 26.1.0 y Digi3D.AI 2027.0.0.428 o posterior.

```csharp
public sealed class TopologyAnalysisHandlers
```

## Constructores

```csharp
public TopologyAnalysisHandlers()
```

Crea un objeto con todos los delegados a `null`.

## Propiedades

Cada propiedad se puede leer y asignar. `AnalyzeTopology` lee las propiedades una sola vez, al empezar: asignar una propiedad durante el análisis no afecta al análisis en curso.

| Propiedad | Descripción |
| :--- | :--- |
| `Action<int> ProgressChanged` | Recibe el porcentaje de avance, de 0 a 100, de cada fase del análisis: la formación de los anillos y la asignación de huecos y centroides a los anillos. El porcentaje vuelve a empezar en 0 en cada fase. |
| `Action<ReadOnlyLine> LineWithDoublePoints` | Recibe cada línea con un código de la topología cuyos dos primeros vértices, o sus dos últimos, tienen la misma X e Y. Si se notifica alguna línea, `AnalyzeTopology` lanza una excepción cuando termina el análisis. |
| `Action<Entity> EntityWithFewerThanTwoVertices` | Recibe cada punto y cada línea con menos de dos vértices que tiene un código de la topología. Si se notifica alguna entidad, `AnalyzeTopology` lanza una excepción cuando termina el análisis. |
| `Action<IEnumerable<ReadOnlyLine>> RingWithoutArea` | Recibe las líneas de cada anillo que no encierra ningún área. Ese anillo no forma un polígono. |
| `Action<ClosedLoopWithHoles> PolygonWithoutCentroid` | Recibe cada polígono que no contiene ningún centroide. Solo se invoca si [TopologyDefinition.ReportPolygonsWithoutCentroid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) es `true`; si es `false`, `AnalyzeTopology` descarta esos polígonos sin notificarlos. |
| `Action<IEnumerable<ReadOnlyText>> DuplicatedCentroids` | Recibe los centroides de cada polígono que contiene más de un centroide. Si ninguna entidad tiene un código de la topología, de modo que no se puede formar ningún anillo, recibe todos los textos que se han leído como centroides. |
| `Action<IEnumerable<ReadOnlyText>> CentroidsWithoutPolygon` | Recibe una sola vez los centroides que no están dentro de ningún polígono. |
| `Action<Entity> EntityNotInValidPolygon` | Recibe cada línea o polígono que tiene un código con la relación [Required o GuaranteesPolygon](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/topologycoderelationship.md) y no forma parte de ningún polígono válido. Solo se invoca si `ReportPolygonsWithoutCentroid` es `false`. Recibe la misma instancia que se pasó en la colección `entities`. |
| `Func<Entity, string, bool> EvaluateExcludeCondition` | Evalúa la [condición de exclusión](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md) de un código para una entidad que tiene ese código, y devuelve `true` para excluir la entidad de la topología. Recibe la entidad y la condición, que es una expresión de Python. Es obligatorio si algún código de la topología tiene una condición de exclusión que no está vacía. |

## Excepciones lanzadas por los delegados

Si un delegado lanza una excepción, `AnalyzeTopology` deja de invocar delegados, deja que termine el análisis nativo y lanza esa excepción cuando termina.

## Condiciones de exclusión fuera de Digi3D.AI

Las condiciones de exclusión de los códigos son expresiones de Python que Digi3D.AI evalúa con su intérprete. `AnalyzeTopology` no las evalúa por sí mismo: el programa tiene que evaluar la expresión con su propio código en `EvaluateExcludeCondition`, o no analizar las topologías que tienen alguna condición de exclusión. El procedimiento [Crear las topologías de la tabla de códigos desde un programa externo](/digi3d-ai/programacion/.net/crear-topologias-desde-un-programa-externo.md#topologías-con-condiciones-de-exclusión) explica ambas opciones.

## Ejemplo

Este programa forma una topología de una tabla de códigos sobre un archivo `.bind` y cuenta los errores que notifica cada delegado:

```csharp
using Digi21.DigiNG.DigiTab;
using Digi21.DigiNG.IO.BinDouble;
using Digi21.DigiNG.Topology;

if (args.Length != 3)
{
    Console.WriteLine("Uso: Recintos <archivo.bind> <tabla.tab.xml> <nombre de la topología>");
    return 1;
}

using var tabla = DigiTab.Load(args[1]);
using var topología = tabla.GetTopology(args[2]);

if (topología is null)
{
    Console.WriteLine($"La tabla de códigos no define la topología {args[2]}.");
    return 1;
}

using var archivo = new BinDouble(args[0], tabla, true);
var entidades = archivo.ToList();

int numeroDeAnillosSinArea = 0, numeroDePoligonosSinCentroide = 0, numeroDePoligonosConVariosCentroides = 0, numeroDeCentroidesSinPoligono = 0;
var manejadores = new TopologyAnalysisHandlers
{
    RingWithoutArea = líneas => numeroDeAnillosSinArea++,
    PolygonWithoutCentroid = recinto => numeroDePoligonosSinCentroide++,
    DuplicatedCentroids = textos => numeroDePoligonosConVariosCentroides++,
    CentroidsWithoutPolygon = textos => numeroDeCentroidesSinPoligono += textos.Count(),
};

try
{
    var recintos = entidades.AnalyzeTopology(topología, manejadores).ToList();
    Console.WriteLine($"{recintos.Count} polígonos; {numeroDeAnillosSinArea} anillos sin área; {numeroDePoligonosSinCentroide} polígonos sin centroide; " +
        $"{numeroDePoligonosConVariosCentroides} polígonos con varios centroides; {numeroDeCentroidesSinPoligono} centroides fuera de un polígono.");
}
catch (Exception ex)
{
    Console.WriteLine(ex.Message);
    return 1;
}

return 0;
```
