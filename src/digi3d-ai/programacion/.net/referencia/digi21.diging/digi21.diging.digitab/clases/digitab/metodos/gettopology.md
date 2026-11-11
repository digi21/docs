# GetTopology
<!-- id: digi21.diging.digitab.digitab.gettopology -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve la definición de la topología con el nombre indicado.

Requiere Digi3D.AI 2027.0.0.428 o posterior y el paquete `Digi21.DigiNG` 26.2.0 o posterior.

```csharp
public TopologyDefinition GetTopology(string name)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `name` | Nombre de la topología. La comparación no distingue mayúsculas de minúsculas. |

## Devuelve

Un [TopologyDefinition](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/topologydefinition.md) nuevo con una copia de los datos de la topología, o `null` si la tabla de códigos no define ninguna topología con ese nombre. Cada llamada que encuentra una topología con el nombre indicado crea un objeto nuevo. Llama a `Dispose` (o usa `using`) cuando ya no necesites la definición.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `ArgumentNullException` | `name` es `null`. |

## Ejemplo

```csharp
using var tabla = DigiTab.Load(@"C:\Tablas\tabla.tab.xml");
using var topología = tabla.GetTopology("ACERA");

if (topología is null)
    Console.WriteLine("La tabla de códigos no define la topología ACERA.");
else
    Console.WriteLine($"Los polígonos de ACERA tienen el código {topología.PolygonCode}.");
```
