# DigitalTerrainModelCollection
<!-- id: digi21.diging.dtm.digitalterrainmodelcollection -->

Espacio de nombres: `Digi21.DigiNG.Dtm`  
Ensamblado: [Digi21.DigiNG.Dtm](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/)

Conjunto de modelos digitales del terreno (MDT) con una etiqueta cada uno, que devuelve la coordenada Z del terreno en un punto. Consulta los modelos que tienen la etiqueta pedida o, si la etiqueta pedida es `null` o está vacía, los modelos con cualquier etiqueta, y devuelve la primera coordenada Z que no es `null`.

La colección reproduce las etiquetas de los MDT cargados en Digi3D.AI, que se configuran en la [topología](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/anadir-topologia.md#etiqueta-del-mdt-sobre-el-que-proyectar) y en las reglas de Z de sus [códigos](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/topologias/seleccionar-codigos-para-topologia.md#etiqueta-asignada-al-mdt).

```csharp
public sealed class DigitalTerrainModelCollection
```

La colección no es propietaria de los modelos: llama a `Dispose` en cada [DigitalTerrainModel](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodel.md) después de la última llamada a `Project`.

## Constructores

```csharp
public DigitalTerrainModelCollection()
```

Crea una colección vacía.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| `int Count` | Número de modelos que se han añadido. |

## Métodos

### Add

```csharp
public void Add(DigitalTerrainModel model, string tag)
```

Añade un modelo con una etiqueta.

| Parámetro | Descripción |
| :--- | :--- |
| `model` | Modelo digital del terreno. |
| `tag` | Etiqueta del modelo. Una etiqueta `null` se guarda como etiqueta vacía. |

Lanza `ArgumentNullException` si `model` es `null`. No llames a `Add` mientras otro hilo llama a `Project`.

### Project

```csharp
public double? Project(Point3D groundPoint, string tag)
```

Devuelve la coordenada Z del terreno en la X y la Y de un punto, del primer modelo consultado según `tag` que devuelve una coordenada Z.

| Parámetro | Descripción |
| :--- | :--- |
| `groundPoint` | Punto en coordenadas del terreno. `Project` ignora la coordenada Z de `groundPoint`. |
| `tag` | Etiqueta de los modelos que se consultan. La comparación distingue mayúsculas de minúsculas (comparación ordinal). Si `tag` es `null` o está vacía, `Project` consulta todos los modelos, agrupados por etiqueta en el orden ordinal de la etiqueta y, dentro de cada etiqueta, en el orden en que se añadieron. |

Devuelve el valor que devuelve [DigitalTerrainModel.Project](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodel.md#project) para el primer modelo que devuelve una coordenada Z. Devuelve `null` si ningún modelo consultado devuelve una coordenada Z. Una etiqueta `null` o vacía selecciona los modelos con cualquier etiqueta.

Lanza `ObjectDisposedException` si algún modelo consultado se ha liberado con `Dispose`.

Varios hilos pueden llamar a `Project` a la vez. La firma coincide con el parámetro `projectZ` de [TopologyAnalyzer.CreatePolygon y CreatePolygons](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md#createpolygon), por lo que se puede pasar `coleccion.Project` como `projectZ`.

## Ejemplo

Este programa carga un MDT con la etiqueta `MDT` y otro con la etiqueta `MDS`, y consulta la Z de un punto con cada etiqueta y sin etiqueta:

```csharp
using Digi21.DigiNG.Dtm;
using Digi21.Math;

if (args.Length != 4)
{
    Console.WriteLine("Uso: ConsultaZ <terreno.mdt> <superficie.mdt> <x> <y>");
    return 1;
}

using var terreno = DigitalTerrainModel.Open(args[0]);
using var superficie = DigitalTerrainModel.Open(args[1]);

var modelos = new DigitalTerrainModelCollection();
modelos.Add(terreno, "MDT");
modelos.Add(superficie, "MDS");

var punto = new Point3D(
    double.Parse(args[2], System.Globalization.CultureInfo.InvariantCulture),
    double.Parse(args[3], System.Globalization.CultureInfo.InvariantCulture),
    0);

Console.WriteLine($"{modelos.Count} modelos.");
Console.WriteLine($"Etiqueta MDT: {modelos.Project(punto, "MDT")?.ToString("F2") ?? "sin coordenada Z calculada"}");
Console.WriteLine($"Etiqueta MDS: {modelos.Project(punto, "MDS")?.ToString("F2") ?? "sin coordenada Z calculada"}");
Console.WriteLine($"Cualquier etiqueta: {modelos.Project(punto, "")?.ToString("F2") ?? "sin coordenada Z calculada"}");
return 0;
```
