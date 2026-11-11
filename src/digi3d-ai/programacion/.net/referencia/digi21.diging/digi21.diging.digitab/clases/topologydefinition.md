# TopologyDefinition
<!-- id: digi21.diging.digitab.topologydefinition -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Definición de una topología guardada en una tabla de códigos: los códigos que intervienen, los centroides, el código del polígono resultante y las reglas de la coordenada Z. Es la configuración que el editor de tablas de códigos guarda en la pestaña [Topologías](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/README.md).

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public sealed class TopologyDefinition : IDisposable
```

Implementa: `IDisposable`.

La clase no tiene constructores públicos. Un objeto `TopologyDefinition` se obtiene de dos formas:

- Con la propiedad [DigiTab.Topologies](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/topologies.md), que crea una definición por cada topología de la tabla de códigos.
- Con el método [DigiTab.GetTopology](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/gettopology.md), que crea la definición de la topología con el nombre indicado.

Las propiedades son una copia de los datos de la tabla de códigos tomada al crear el objeto. Modificar la tabla de códigos después de crear un `TopologyDefinition` no cambia las propiedades de ese objeto. Las propiedades son de solo lectura.

Cada `TopologyDefinition` mantiene referencias a la definición nativa y a la tabla de códigos nativa hasta que se llama a `Dispose`. Llama a `Dispose` (o usa `using`) cuando ya no uses la definición, también con las definiciones que devuelve `Topologies`. Después de `Dispose`, pasar la definición a `TopologyAnalyzer.AnalyzeTopology`, `CreatePolygon` o `CreatePolygons` lanza `ObjectDisposedException`. Las propiedades de la definición conservan su valor.

La definición se usa con los métodos de [TopologyAnalyzer](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md), que reproducen las órdenes [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md)`=#nombre` y [TOPOLOGIA\_A\_POLIGONO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/topologia-a-poligono.md).

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Name` | Nombre de la topología. |
| `string Submenu` | Submenú del menú Topología en el que aparece la topología. |
| `string PolygonCode` | Código que se asigna a los polígonos que forma la topología. `CreatePolygon` sustituye en `PolygonCode` las variables `$(CodigoCentroide)`, `$(CodCentroid)`, `$(CentroidCode)` y `$(CenrtoidCode)` por el código del centroide del recinto, y `$(TextoCentroide)` y `$(TextCentroid)` por su texto. |
| [PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/polygonzsource.md) `PolygonZSource` | Origen de la coordenada Z de los polígonos. Si [TopologyCentroid.PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycentroid.md) tiene un valor, `CreatePolygon` usa ese valor en lugar de `TopologyDefinition.PolygonZSource`. |
| [ClosingNodeZ](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/closingnodez.md) `ClosingNodeZ` | Operación que se realiza cuando el primer y el último vértice del contorno de un polígono tienen coordenadas Z distintas. |
| `string DtmTag` | Etiqueta de los modelos digitales del terreno (MDT) sobre los que se proyectan los polígonos. Solo se usa con `PolygonZSource.ProjectOnDtm`. Una etiqueta vacía admite cualquier MDT. |
| `bool Requires3DContinuity` | `true` si la topología solo forma los polígonos que tienen continuidad 3D, es decir, cuyos arcos se unen comparando también la Z de sus extremos. |
| `bool ReportPolygonsWithoutCentroid` | `true` si la generación de la topología informa como errores de los polígonos sin centroide; con `false`, la generación ignora esos polígonos. |
| `string HoleCentroidText` | Texto del centroide que declara que el polígono es un hueco. |
| `bool CopyTableAndRecordFromCentroid` | `true` si `CreatePolygon` copia al polígono la tabla y el identificador de registro de base de datos del primer código del centroide. |
| `bool CopyDatabaseAttributesFromCentroid` | `true` si `CreatePolygon` copia al polígono los atributos de base de datos del primer código del centroide. |
| `string FillColorWithoutCentroid` | Color de relleno de los polígonos sin centroide. |
| `string FillColorUnknownCentroid` | Color de relleno de los polígonos cuyo texto de centroide no está definido en `Centroids`. |
| `IReadOnlyList<`[TopologyCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycode.md)`>` `Codes` | Códigos que intervienen en la topología. |
| `IReadOnlyList<`[TopologyCentroid](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologycentroid.md)`>` `Centroids` | Centroides que define la topología. |

Las propiedades equivalen a los campos del cuadro de diálogo [Añadir topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/anadir-topologia.md) y de la lista de códigos y de centroides de la pestaña [Topologías](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/README.md).

## Métodos

| Método | Descripción |
| :--- | :--- |
| `void Dispose()` | Libera las referencias a la definición nativa y a la tabla de códigos nativa. |

## Ejemplo

Este programa muestra los datos de cada topología de una tabla de códigos:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ListaTopologias <tabla.tab.xml>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);

// Cada lectura de Topologies crea objetos nuevos: se lee una vez.
var topologías = tabla.Topologies;

try
{
    foreach (var topología in topologías)
    {
        Console.WriteLine($"{topología.Name} (submenú «{topología.Submenu}»): polígonos con el código {topología.PolygonCode}, Z {topología.PolygonZSource}");
        Console.WriteLine($"  Continuidad 3D: {topología.Requires3DContinuity}; centroide de huecos: «{topología.HoleCentroidText}»");
        Console.WriteLine($"  Códigos: {string.Join(", ", topología.Codes.Select(código => código.Name))}");
        Console.WriteLine($"  Centroides: {string.Join(", ", topología.Centroids.Select(centroide => centroide.Text))}");
    }
}
finally
{
    foreach (var topología in topologías)
        topología.Dispose();
}

return 0;
```
