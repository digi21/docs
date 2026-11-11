# Topologies
<!-- id: digi21.diging.digitab.digitab.topologies -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Definiciones de las topologías de la tabla de códigos, en el orden en que están guardadas.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public IReadOnlyList<TopologyDefinition> Topologies { get; }
```

## Valor de la propiedad

Lista de solo lectura con un [TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) por cada topología de la tabla de códigos. La lista está vacía si la tabla no define ninguna.

Cada lectura de `Topologies` crea objetos nuevos con una copia de los datos de la tabla de códigos en ese momento. Los cambios posteriores en la tabla no modifican los objetos ya creados. Cada `TopologyDefinition` mantiene referencias a la tabla de códigos nativa hasta que se llama a su `Dispose`: llama a `Dispose` en cada elemento de la lista cuando termines de usarlos.

## Ejemplo

```csharp
using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");

var topologías = tabla.Topologies;
foreach (var topología in topologías)
    Console.WriteLine($"{topología.Name}: {topología.Codes.Count} códigos, {topología.Centroids.Count} centroides");

foreach (var topología in topologías)
    topología.Dispose();
```
