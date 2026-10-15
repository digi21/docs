# Digi21.CoordinateSystems
<!-- id: digi21.coordinatesystems -->

Este paquete [NuGet](https://www.nuget.org/packages/Digi21.CoordinateSystems/) proporciona los tipos para transformar coordenadas entre sistemas de referencia de coordenadas (SRC) de la base de datos de EPSG con el motor de Digi3D.AI. Depende del paquete [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/), del que toma `Point2D`, `Point3D` y el resolvedor que carga los ensamblados de la carpeta de instalación de Digi3D.AI.

### Package manager
```bash
Install-Package Digi21.CoordinateSystems -Version 26.0.0
```

### .NET Cli
```
dotnet add package Digi21.CoordinateSystems --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.CoordinateSystems" Version="26.0.0" />
```

## Ejemplo

Este programa transforma las coordenadas geográficas de la Puerta del Sol de Madrid de WGS 84 con altura elipsoidal (EPSG:4979) a ETRS89 / UTM huso 30N (EPSG:25830):

```csharp
using Digi21.CoordinateSystems;
using Digi21.Math;

var wgs84 = CoordinateSystem.FromEpsg(4979);
var utm30 = CoordinateSystem.FromEpsg(25830);

using var transformación = CoordinateTransformation.Create(wgs84, utm30);

// En EPSG:4979 la primera coordenada es la latitud y la segunda la longitud.
var punto = transformación.Transform(new Point3D(40.416775, -3.703790, 650.0));
Console.WriteLine($"{punto.X:F3} {punto.Y:F3}");   // 440291.284 4474254.600
```

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [CoordinateSystem](coordinatesystem.md) | Sistema de referencia de coordenadas. Se crea a partir de un código EPSG o de un WKT. |
| [CoordinateTransformation](coordinatetransformation.md) | Transformación entre dos sistemas de referencia de coordenadas. |
| [TransformationOptions](transformationoptions.md) | Cómo se elige la operación cuando hay varias y cómo se crea una transformación vertical. Incluye los delegados `SelectCoordinateOperation` y `CreateVerticalTransformation` y las clases `CoordinateOperation` y `VerticalTransformation`. |
| `CoordinateSystemsLibrary` | Inicialización de la biblioteca con la base de datos de EPSG. |
| `CoordinateSystemException` | Excepción de la biblioteca: un código EPSG que no existe, un WKT que no se puede interpretar, un punto que no se puede transformar o un cuadro de diálogo cancelado. |
| `TransformationNotFoundException` | Deriva de `CoordinateSystemException`. No hay ninguna transformación entre los dos sistemas o no se puede construir. |

## Base de datos de EPSG

La biblioteca necesita la base de datos de EPSG en formato SQLite que instala Digi3D.AI: el archivo `epsg-fiel.sqlite`, con la versión 12.057 del conjunto de datos de EPSG y las tablas del esquema oficial de EPSG (tablas `epsg_*`). El programa de instalación copia ese archivo en `C:\ProgramData\Digi3D.NET\OpenGis\`. Dentro de Digi3D.AI, y en un equipo con Digi3D.AI instalado, no hace falta hacer nada: la primera operación que necesita la base de datos abre el archivo que indica la configuración de Digi3D.AI (valor `EpsgCrsKitSqlite` de la clave `HKLM\Software\Digi21\Digi3D.NET\App\Configuration`) y busca las rejillas de transformación (NTv2, modelos de geoide) en la carpeta que indica el valor `OpenGisFiles`.

Para usar otra base de datos, llama a `CoordinateSystemsLibrary.Initialize` antes de crear ningún sistema:

```csharp
CoordinateSystemsLibrary.Initialize(@"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite");
```

| Miembro | Descripción |
| :--- | :--- |
| `static bool IsInitialized` | Devuelve `true` si la biblioteca ya está inicializada. |
| `static void Initialize(string epsgDatabasePath)` | Inicializa la biblioteca con el archivo SQLite indicado y busca las rejillas en la carpeta de ese archivo. Si la biblioteca ya está inicializada, por ejemplo dentro de Digi3D.AI, no hace nada. Lanza `FileNotFoundException` si el archivo no existe y `CoordinateSystemException` si no se puede abrir. |

## Orden de los ejes

Las coordenadas van en el orden de ejes que define la autoridad del sistema. En los sistemas geográficos de EPSG, como EPSG:4326 y EPSG:4979, la primera coordenada (`X`) es la **latitud** y la segunda (`Y`) la **longitud**. Para trabajar con la longitud en primer lugar, usa [`WithEastNorthAxes`](coordinatesystem.md#witheastnorthaxes):

```csharp
var wgs84 = CoordinateSystem.FromEpsg(4979).WithEastNorthAxes();
var punto = transformación.Transform(new Point3D(-3.703790, 40.416775, 650.0));
```

## Hilos

La biblioteca nativa que transforma las coordenadas no admite llamadas simultáneas. Todas las llamadas de `Digi21.CoordinateSystems` a esa biblioteca se ejecutan de una en una: dos hilos pueden usar la misma transformación a la vez, pero no transforman en paralelo. Las sobrecargas de `Transform` que reciben un `Span` transforman todos los puntos en una sola llamada.

Las opciones [`TransformationOptions.Interactive`](transformationoptions.md#interactive) muestran cuadros de diálogo y solo se pueden usar desde el hilo principal de Digi3D.AI. Mientras un cuadro de diálogo está abierto, las llamadas de otros hilos esperan a que se cierre.
