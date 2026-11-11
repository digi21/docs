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

Las sobrecargas de `AnalyzeTopology` que reciben `TopologyDefinition` y los métodos `CreatePolygon` y `CreatePolygons` usan una [definición de topología](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) de la tabla de códigos y requieren el paquete `Digi21.DigiNG.Topology` 26.1.0 y Digi3D.AI 2027.0.0.428 o posterior. Las demás sobrecargas están en el paquete desde la versión 26.0.0.

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

### AnalyzeTopology con una definición de topología

```csharp
public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities, TopologyDefinition topology)

public static IEnumerable<ClosedLoopWithHoles> AnalyzeTopology(
    this IEnumerable<Entity> entities, TopologyDefinition topology, TopologyAnalysisHandlers handlers)
```

Forma la topología de `entities` con la [definición de topología](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) de la tabla de códigos que indica `topology`, como lo hace la orden [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)`=#nombre`. Requiere el paquete `Digi21.DigiNG.Topology` 26.1.0 y Digi3D.AI 2027.0.0.428 o posterior.

| Parámetro | Descripción |
| :--- | :--- |
| `entities` | Entidades que se analizan. Solo intervienen las entidades que no están eliminadas, que no están ocultas, que no están fuera de la zona de interés y que tienen un código de la topología. |
| `topology` | Definición de la topología. Proporciona los códigos, la exigencia de continuidad 3D (`Requires3DContinuity`) y el texto de los centroides de huecos (`HoleCentroidText`). |
| `handlers` | Delegados que reciben el avance y los errores, y que evalúan las condiciones de exclusión. Puede ser `null`. Lee [TopologyAnalysisHandlers](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalysishandlers.md). |

Devuelve los polígonos válidos que no son huecos, cada uno con sus huecos y su centroide. El centroide vale `null` si el polígono no contiene ninguno. La colección está vacía si ninguna entidad tiene un código de la topología o si no se forma ningún polígono.

Los polígonos que devuelve el método conservan referencias a las entidades de `entities`, y `CreatePolygon` lee las coordenadas nativas de esas entidades. No liberes las entidades ni cierres el archivo de dibujo del que se leyeron mientras uses los polígonos.

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `entities` o `topology` es `null`. |
| `ArgumentException` | Un código de la topología tiene una condición de exclusión que no está vacía y no hay delegado `EvaluateExcludeCondition`: la sobrecarga sin `handlers` lanza la excepción siempre, y la sobrecarga con `handlers` la lanza si `handlers` o su propiedad `EvaluateExcludeCondition` es `null`. También, si `entities` contiene un elemento `null`. |
| `ObjectDisposedException` | Se ha llamado a `Dispose` en `topology`. |
| `Exception` | Los dos primeros o los dos últimos vértices de una línea tienen la misma X e Y, o una entidad es un punto o una línea con menos de dos vértices. Antes de lanzar la excepción, el método pasa cada entidad afectada al delegado `LineWithDoublePoints` o `EntityWithFewerThanTwoVertices`, si no es `null`. |

#### Diferencias con la orden BINTOP

- `AnalyzeTopology` lanza una excepción cuando detecta puntos dobles o entidades con un solo punto; la orden muestra un globo.
- Los errores y avisos se notifican con los delegados de `TopologyAnalysisHandlers`; la orden los añade al panel de tareas y, si se pide, a un fichero de errores.
- Sin entidades con los códigos de la topología, el método devuelve una colección vacía; la orden escribe «No se han encontrado entidades con las que trabajar».
- El resultado es la colección que devuelve el método; el método no la guarda con ningún nombre.
- Cuando detecta puntos dobles o entidades con un solo punto, `AnalyzeTopology` lanza una excepción sin corregir los puntos dobles ni eliminar las entidades de tipo punto. La orden los corrige y los borra cuando se ejecuta desde su cuadro de diálogo.

### CreatePolygon

```csharp
public static Polygon CreatePolygon(
    this ClosedLoopWithHoles loop, TopologyDefinition topology)

public static Polygon CreatePolygon(
    this ClosedLoopWithHoles loop, TopologyDefinition topology, Func<Point3D, double?> projectZ)

public static Polygon CreatePolygon(
    this ClosedLoopWithHoles loop, TopologyDefinition topology, Func<Point3D, string, double?> projectZ)
```

Crea el polígono que genera la definición de topología de la tabla de códigos para un recinto, como lo hace la orden [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md). Requiere el paquete `Digi21.DigiNG.Topology` 26.1.0 y Digi3D.AI 2027.0.0.428 o posterior.

| Parámetro | Descripción |
| :--- | :--- |
| `loop` | Recinto con centroide que devolvió `AnalyzeTopology`. |
| `topology` | Definición de la topología. Proporciona el código del polígono (`PolygonCode`), las reglas de la coordenada Z y el texto de los centroides de huecos. |
| `projectZ` | Función que devuelve la coordenada Z de un punto sobre un modelo digital del terreno (MDT), o `null` si ningún MDT contiene el punto. `CreatePolygon` llama a `projectZ` cuando aplica las reglas de coordenada Z que proyectan sobre un MDT. Si `projectZ` es `null` o devuelve `null`, `CreatePolygon` conserva la coordenada Z original del vértice. |

Las tres sobrecargas se diferencian en cómo se obtiene la Z de un MDT:

| Sobrecarga | Efecto |
| :--- | :--- |
| Sin `projectZ` | En las reglas que proyectan sobre un MDT, cada vértice conserva su coordenada Z original. |
| `Func<Point3D, double?>` | `CreatePolygon` llama a `projectZ` con el punto, sin etiqueta de MDT. |
| `Func<Point3D, string, double?>` | `CreatePolygon` llama a `projectZ` con el punto y la etiqueta de MDT que indica la regla ([TopologyDefinition.DtmTag](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) o [TopologyZRule.DtmTag](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md)). Una etiqueta vacía significa cualquier MDT. [DigitalTerrainModelCollection.Project](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodelcollection.md) tiene esta firma. |

Si pasas el literal `null` como `projectZ`, el compilador no puede elegir entre las dos sobrecargas con delegado: convierte el `null` al tipo del delegado, por ejemplo `(Func<Point3D, double?>)null`.

Devuelve un polígono nuevo que no pertenece a ningún archivo de dibujo. El código y la coordenada Z del polígono, y los datos de base de datos que recibe del centroide, se explican en [Qué toma el polígono de la definición de topología](#qué-toma-el-polígono-de-la-definición-de-topología). Añade el polígono a un archivo con `IDrawingFile.Add(Polygon)` y llama a `Dispose` cuando ya no lo necesites.

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `loop` o `topology` es `null`. |
| `ArgumentException` | `loop` no tiene centroide, el centroide no tiene código, el texto del centroide es el `HoleCentroidText` de la definición, o un anillo no tiene líneas o contiene una línea con menos de dos vértices. |
| `ObjectDisposedException` | Se ha llamado a `Dispose` en `topology`. |

### CreatePolygons

```csharp
public static IReadOnlyList<Polygon> CreatePolygons(
    this IEnumerable<ClosedLoopWithHoles> loops, TopologyDefinition topology, Func<Point3D, string, double?> projectZ)
```

Crea los polígonos que genera la definición de topología para varios recintos, como lo hace la orden `TOPOLOGIA_A_POLIGONO`. Omite los recintos sin centroide y los recintos cuyo centroide tiene el texto `HoleCentroidText`. Requiere el paquete `Digi21.DigiNG.Topology` 26.1.0 y Digi3D.AI 2027.0.0.428 o posterior.

| Parámetro | Descripción |
| :--- | :--- |
| `loops` | Recintos que devolvió `AnalyzeTopology`. |
| `topology` | Definición de la topología. |
| `projectZ` | Función que devuelve la coordenada Z de un punto sobre los MDT con una etiqueta, o `null` si ninguno contiene el punto. Recibe el punto y la etiqueta de MDT de la regla; una etiqueta vacía significa cualquier MDT. Si `projectZ` es `null` o devuelve `null`, `CreatePolygons` conserva la coordenada Z original del vértice. |

Devuelve los polígonos nuevos, que no pertenecen a ningún archivo de dibujo, en el orden de `loops`. Añade los polígonos a un archivo con `IDrawingFile.Add(Polygon)` y llama a `Dispose` en cada uno cuando ya no los necesites.

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `loops` o `topology` es `null`. |
| `ArgumentException` | `loops` contiene un elemento `null`, el centroide de un recinto no tiene código, o un anillo no tiene líneas o contiene una línea con menos de dos vértices. |
| `ObjectDisposedException` | Se ha llamado a `Dispose` en `topology`. |

#### Qué toma el polígono de la definición de topología

- El código del polígono es `PolygonCode`, con estas variables sustituidas: `$(CodigoCentroide)`, `$(CodCentroid)`, `$(CentroidCode)` y `$(CenrtoidCode)` se sustituyen por el código del centroide del recinto, y `$(TextoCentroide)` y `$(TextCentroid)` por el texto del centroide.
- Con `CopyTableAndRecordFromCentroid` a `true`, el polígono recibe la tabla y el identificador de registro de base de datos del primer código del centroide. Con `CopyDatabaseAttributesFromCentroid` a `true`, recibe los atributos de base de datos del primer código del centroide.
- `TopologyCentroid.FieldValues` no se aplica al polígono: lo usan las sustituciones de base de datos de la orden `EXPORTAR_TOPOLOGIA`.
- Si `Centroids` contiene un elemento que coincide con el texto del centroide del recinto y su propiedad `PolygonZSource` tiene un valor, `CreatePolygon` usa ese valor como origen de la coordenada Z; en caso contrario, usa `TopologyDefinition.PolygonZSource`. Con `FromGeometries`, deciden la Z las [reglas de coordenada Z](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologyzrule.md) de los códigos de las líneas del recinto.
- Con `ProjectOnDtm`, la coordenada Z de los vértices la da `projectZ`. Si `projectZ` es `null` o no devuelve valor para un vértice, el vértice conserva su coordenada Z original. Esto se cumple también en las reglas de Z de los códigos que proyectan sobre un MDT (`NodeZRule.ProjectOnDtm`, `VertexZAction.ProjectOnDtm`): el código nativo recibe siempre una función de Z, y esa función devuelve la Z del vértice cuando `projectZ` no da valor.

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
