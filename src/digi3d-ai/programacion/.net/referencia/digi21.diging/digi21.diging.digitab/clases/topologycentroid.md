# TopologyCentroid
<!-- id: digi21.diging.digitab.topologycentroid -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Texto, o prefijo de texto, que identifica un centroide en una topología, con la configuración que se aplica a los polígonos que contienen un centroide cuyo texto coincide con el texto configurado o empieza por el prefijo configurado.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public sealed class TopologyCentroid
```

La clase no tiene constructores públicos. Un objeto `TopologyCentroid` se obtiene de [TopologyDefinition.Centroids](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md). Las propiedades de `TopologyCentroid` son de solo lectura.

Los datos corresponden a los centroides que se configuran en el cuadro de diálogo [Añadir centroide](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/anadir-centroide.md) del editor de tablas de códigos. En [Centroide](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/centroide.md) se explica qué es un centroide y su diccionario de valores.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `string Text` | Texto del centroide o, si `IsPrefix` es `true`, su prefijo. |
| `bool IsPrefix` | `true` si `Text` es un prefijo: coincide cualquier texto de un centroide que empieza por `Text`. |
| `string Description` | Descripción del centroide. |
| `string FillColor` | Color de relleno de los polígonos que contienen este centroide. |
| [PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/polygonzsource.md)`?` `PolygonZSource` | Origen de la coordenada Z del polígono. Con `null`, el polígono usa el origen de [TopologyDefinition.PolygonZSource](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md). |
| `IReadOnlyDictionary<string, string>` `FieldValues` | Valores (nombre de campo y valor) que el polígono toma de este centroide. `TopologyAnalyzer.CreatePolygon` y `CreatePolygons` no aplican `FieldValues` al polígono: los usan las sustituciones de base de datos de la orden `EXPORTAR_TOPOLOGIA`. |

## Ejemplo

Este programa muestra los centroides de una topología:

```csharp
using Digi21.DigiNG.DigiTab;

if (args.Length != 2)
{
    Console.WriteLine("Uso: CentroidesDeTopologia <tabla.tab.xml> <nombre de la topología>");
    return 1;
}

using var tabla = DigiTab.Load(args[0]);
using var topología = tabla.GetTopology(args[1]);

if (topología is null)
{
    Console.WriteLine($"La tabla de códigos no define la topología {args[1]}.");
    return 1;
}

foreach (var centroide in topología.Centroids)
{
    var origenZ = centroide.PolygonZSource?.ToString() ?? $"{topología.PolygonZSource} (el de la topología)";
    Console.WriteLine($"{centroide.Text}{(centroide.IsPrefix ? "*" : "")}: {centroide.Description}; Z: {origenZ}; {centroide.FieldValues.Count} valores");
}

return 0;
```
