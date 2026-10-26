# TopologyAnalyzer
<!-- id: digi21.diging.topology.topologyanalyzer -->

Espacio de nombres: `Digi21.DigiNG.Topology`  
Ensamblado: [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)

Forma los polígonos encerrados por un conjunto de líneas (la topología) y asigna a cada polígono un centroide, es decir, un texto situado en su interior.

```csharp
public static class TopologyAnalyzer
```

## Cómo se forman los polígonos

`AnalyzeTopology` trabaja con arcos y nodos. Un arco es una línea; un nodo es una coordenada XY en la que termina algún arco. El algoritmo recorre los arcos alrededor de cada nodo, ordenados por acimut, y forma anillos cerrados:

- Un anillo con área positiva es un polígono: se devuelve como un [ClosedLoopWithHoles](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/closedloopwithholes.md).
- Un anillo con área negativa es una isla. Las islas no se devuelven como polígonos. Si `analyzePolygonRelationship` es `true`, cada isla que queda dentro de un polígono se añade a `Holes` de ese polígono; una isla que está dentro de otra isla del mismo polígono no se añade.
- Un anillo que pasa dos veces por el mismo vértice no encierra área y no se devuelve. Se notifica con `openPolygon`.

Solo las líneas forman arcos, y solo los extremos de las líneas (primer y último vértice) son nodos: dos líneas que se cruzan sin compartir un extremo no se dividen en el punto de cruce. Usa [IntersectionDetector](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/intersectiondetector.md) para encontrar esos cruces.

Entidades que se tienen en cuenta:

| Entidad | Uso |
| :--- | :--- |
| `ReadOnlyLine` con 2 vértices o más | Arco. |
| `ReadOnlyLine` con menos de 2 vértices, `ReadOnlyPoint` | Se notifica con `entityWithOnlyOnePoint` y el método lanza una excepción. |
| `ReadOnlyText` | Se guarda como centroide, pero `AnalyzeTopology` no lo asigna a ningún polígono: llama a `AnalyzeCentroids`. |
| `ReadOnlyPolygon`, `ReadOnlyComplex` | Se ignoran. |

Se ignoran también las entidades eliminadas (`Deleted`), las ocultas y las que no tienen ningún código encendido en la ventana de dibujo.

## Métodos estáticos

### AnalyzeTopology

```csharp
public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities, bool analyzePolygonRelationship)

public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities, bool analyzePolygonRelationship, Action<int> progressChanged)

public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities,
    bool analyzePolygonRelationship,
    Action<int> progressChanged,
    Action<ReadOnlyLine> lineWithDoublePoints,
    Action<Entity> entityWithOnlyOnePoint,
    Action<IEnumerable<ReadOnlyLine>> openPolygon)
```

Forma los polígonos de `entities` y los devuelve en una lista. Los parámetros que faltan en las sobrecargas cortas valen `null`, y un delegado `null` no se llama.

| Parámetro | Descripción |
| :--- | :--- |
| `entities` | Entidades de la topología. La secuencia se recorre una sola vez, al principio del análisis. |
| `analyzePolygonRelationship` | `true` para buscar las islas que están dentro de cada polígono y añadirlas a su `Holes`. Con `false`, `Holes` queda vacío. |
| `progressChanged` | Recibe el porcentaje de avance, de 0 a 99. Se llama mientras se forman los anillos y otra vez, desde 0, mientras se buscan las islas. |
| `lineWithDoublePoints` | Recibe cada línea cuyos dos primeros vértices, o sus dos últimos, tienen la misma X e Y. |
| `entityWithOnlyOnePoint` | Recibe cada punto y cada línea con menos de 2 vértices. |
| `openPolygon` | Recibe las líneas de cada anillo que pasa dos veces por el mismo vértice. Una línea que el anillo recorre en los dos sentidos aparece dos veces. |

Los delegados `lineWithDoublePoints` y `entityWithOnlyOnePoint` se llaman con todas las entidades con problemas, y después el método lanza la excepción:

| Excepción | Cuándo |
| :--- | :--- |
| `Exception` con el mensaje «Detectadas líneas con puntos dobles» | Alguna línea tiene iguales en XY sus dos primeros vértices o sus dos últimos. La excepción «Detectadas líneas con puntos dobles» tiene prioridad sobre la excepción «Detectadas entidades con un único punto». |
| `Exception` con el mensaje «Detectadas entidades con un único punto» | `entities` contiene un punto o una línea con menos de 2 vértices. |
| `Exception` con el mensaje «No hay datos suficientes» | `entities` no contiene ninguna línea válida. |

Los mensajes se muestran en el idioma de Digi3D.AI. Los vértices dobles en medio de una línea no producen error.

### AnalyzeCentroids

```csharp
public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids)

public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids,
    Action<int> progressChanged)

public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids,
    Action<ClosedLoopWithHoles, IEnumerable<ReadOnlyText>> duplicatedCentroids)

public static void AnalyzeCentroids(
    this IEnumerable<ClosedLoopWithHoles> polygons, IEnumerable<ReadOnlyText> centroids,
    Action<ClosedLoopWithHoles, IEnumerable<ReadOnlyText>> duplicatedCentroids,
    Action<int> progressChanged)
```

Asigna a la propiedad `Centroid` de cada polígono de `polygons` el primer texto de `centroids`, en orden de Y creciente, cuyo punto de inserción está dentro del polígono o en su borde. Un punto dentro de un hueco del polígono está fuera. Si el polígono no contiene ningún texto, `Centroid` no cambia.

| Parámetro | Descripción |
| :--- | :--- |
| `polygons` | Polígonos que devolvió `AnalyzeTopology`. |
| `centroids` | Textos que pueden ser centroides. |
| `duplicatedCentroids` | Recibe cada polígono que contiene más de un texto, junto con todos esos textos (el asignado incluido). |
| `progressChanged` | Recibe el porcentaje de avance, de 0 a 99: se llama antes de analizar cada polígono, cuando el porcentaje cambia. |

Los polígonos se analizan en el orden de `polygons`. Un texto asignado como centroide a un polígono no se tiene en cuenta en los polígonos siguientes, ni para asignarlo ni para `duplicatedCentroids`. Un texto que un polígono contiene pero no se le asigna sigue disponible para los polígonos siguientes.

Lanza `NullReferenceException` si algún elemento de `polygons` tiene `Polygon` a `null`, por ejemplo un `ClosedLoopWithHoles` creado con su constructor.

## Ejemplo

Este programa forma la topología de un archivo `.bin` y muestra, de cada polígono, su área, su número de huecos y el texto de su centroide:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.DigiNG.Topology;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: Parcelas <archivo.bin>");
    return 1;
}

using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

// El archivo solo se puede recorrer una vez: se guardan sus entidades.
var entidades = archivo.Where(entidad => !entidad.Deleted).ToList();

try
{
    var polígonos = entidades
        .AnalyzeTopology(
            analyzePolygonRelationship: true,
            progressChanged: null,
            lineWithDoublePoints: línea => Console.WriteLine($"Puntos dobles: {línea}"),
            entityWithOnlyOnePoint: entidad => Console.WriteLine($"Un solo punto: {entidad}"),
            openPolygon: líneas => Console.WriteLine($"Anillo sin área de {líneas.Count()} líneas"))
        .ToList();

    polígonos.AnalyzeCentroids(
        entidades.OfType<ReadOnlyText>(),
        (polígono, textos) => Console.WriteLine($"{textos.Count()} centroides en un polígono"));

    foreach (var polígono in polígonos)
    {
        var centroide = polígono.Centroid?.Txt ?? "(sin centroide)";
        Console.WriteLine($"{centroide}: {polígono.Polygon.Area:F2} m², {polígono.Holes.Count} huecos");
    }
}
catch (Exception ex)
{
    Console.WriteLine(ex.Message);
    return 1;
}

return 0;
```
