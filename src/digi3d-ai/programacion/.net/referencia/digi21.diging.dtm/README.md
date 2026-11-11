# Digi21.DigiNG.Dtm
<!-- id: digi21.diging.dtm -->

Este paquete [NuGet](https://www.nuget.org/packages/Digi21.DigiNG.Dtm/) permite abrir un modelo digital del terreno (MDT) en formato `.mdt` de MDTopX y obtener la coordenada Z del terreno en un punto, sin ejecutar Digi3D.AI. Un MDT `.mdt` es una red irregular de triángulos (TIN, *triangulated irregular network*).

Requiere Digi3D.AI 2027.0.0.428 o posterior.

### Package manager
```bash
Install-Package Digi21.DigiNG.Dtm -Version 26.0.0
```

### Interfaz de línea de comandos de .NET (CLI)
```
dotnet add package Digi21.DigiNG.Dtm --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG.Dtm" Version="26.0.0" />
```

El paquete contiene un ensamblado de referencia y depende de `Digi21.DigiNG` 26.2.0.

Todos los tipos están en el espacio de nombres `Digi21.DigiNG.Dtm`.

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [DigitalTerrainModel](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodel.md) | Modelo digital del terreno de un archivo `.mdt`. Devuelve la coordenada Z del terreno en un punto. |
| [DigitalTerrainModelCollection](/digi3d-ai/programacion/.net/referencia/digi21.diging.dtm/digitalterrainmodelcollection.md) | Conjunto de modelos digitales del terreno con una etiqueta cada uno. Devuelve la coordenada Z del terreno en un punto consultando los modelos con una etiqueta. |

## Uso con la topología

La firma de `DigitalTerrainModelCollection.Project(Point3D, string)` coincide con el parámetro `projectZ` de `TopologyAnalyzer.CreatePolygons` y `CreatePolygon` del paquete [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/topologyanalyzer.md). El ejemplo [TopologiasDesdeTabla](/digi3d-ai/programacion/.net/ejemplos/topologias-desde-tabla.md) usa los paquetes `Digi21.DigiNG.Dtm` y `Digi21.DigiNG.Topology`.

## Ejemplo

Este programa abre un MDT y muestra su sistema de coordenadas, su extensión y la Z del terreno en el centro:

```csharp
using Digi21.DigiNG.Dtm;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ZEnElCentro <modelo.mdt>");
    return 1;
}

using var modelo = DigitalTerrainModel.Open(args[0]);

Console.WriteLine($"Sistema de coordenadas en formato Well-Known Text (WKT): {modelo.CoordinateSystemWkt ?? "(sin archivo .prj)"}");
Console.WriteLine($"X de {modelo.Bounds.Xmin} a {modelo.Bounds.Xmax}; Y de {modelo.Bounds.Ymin} a {modelo.Bounds.Ymax}");

var centro = new Point3D((modelo.Bounds.Xmin.Value + modelo.Bounds.Xmax) / 2, (modelo.Bounds.Ymin + modelo.Bounds.Ymax) / 2, 0);
var z = modelo.Project(centro);

Console.WriteLine(z.HasValue ? $"Z del terreno en el centro: {z.Value:F2}" : "El centro está fuera del modelo.");
return 0;
```
