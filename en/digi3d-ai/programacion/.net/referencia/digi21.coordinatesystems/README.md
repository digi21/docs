# Digi21.CoordinateSystems
<!-- id: digi21.coordinatesystems -->
<!-- origen: 5b6d8f80de330b5c286a17f2eaf7e1edcff76f67 -->

This [NuGet](https://www.nuget.org/packages/Digi21.CoordinateSystems/) package provides types for transforming coordinates between coordinate reference systems (CRSs) in the EPSG database using the Digi3D.AI engine. It depends on the [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/) package, which supplies `Point2D`, `Point3D` and the resolver that loads assemblies from the Digi3D.AI installation folder.

For Python, see the [crskit](/digi3d-ai/programacion/python/referencia/crskit/README.md) package.

### Package manager
```bash
Install-Package Digi21.CoordinateSystems -Version 26.0.0
```

### .NET CLI
```
dotnet add package Digi21.CoordinateSystems --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.CoordinateSystems" Version="26.0.0" />
```

## Example

This program transforms the geographic coordinates of Madrid's Puerta del Sol from WGS 84 with ellipsoidal height (EPSG:4979) to ETRS89 / UTM zone 30N (EPSG:25830):

```csharp
using Digi21.CoordinateSystems;
using Digi21.Math;

var wgs84 = CoordinateSystem.FromEpsg(4979);
var utm30 = CoordinateSystem.FromEpsg(25830);

using var transformación = CoordinateTransformation.Create(wgs84, utm30);

// In EPSG:4979, the first coordinate is latitude and the second is longitude.
var punto = transformación.Transform(new Point3D(40.416775, -3.703790, 650.0));
Console.WriteLine($"{punto.X:F3} {punto.Y:F3}");   // 440291.284 4474254.600
```

## Types

| Type | Description |
| :--- | :--- |
| [CoordinateSystem](coordinatesystem.md) | Coordinate reference system. Created from an EPSG code or WKT. |
| [CoordinateTransformation](coordinatetransformation.md) | Transformation between two coordinate reference systems. |
| [TransformationOptions](transformationoptions.md) | How to choose an operation when several exist and how to create a vertical transformation. Includes the `SelectCoordinateOperation` and `CreateVerticalTransformation` delegates and the `CoordinateOperation` and `VerticalTransformation` classes. |
| `CoordinateSystemsLibrary` | Library initialization using the EPSG database. |
| `CoordinateSystemException` | Library exception: a nonexistent EPSG code, WKT that cannot be interpreted, a point that cannot be transformed, or a canceled dialog box. |
| `TransformationNotFoundException` | Derives from `CoordinateSystemException`. No transformation exists between the two systems, or it cannot be constructed. |

## EPSG database

The library requires the EPSG database in SQLite format installed by Digi3D.AI: the `epsg-fiel.sqlite` file, containing version 12.057 of the EPSG dataset and the official EPSG schema tables (`epsg_*` tables). The installer copies this file to `C:\ProgramData\Digi3D.NET\OpenGis\`. Within Digi3D.AI, and on a computer with Digi3D.AI installed, no action is needed: the first operation requiring the database opens the file specified in the Digi3D.AI configuration (the `EpsgCrsKitSqlite` value under `HKLM\Software\Digi21\Digi3D.NET\App\Configuration`) and looks for transformation grids (NTv2, geoid models) in the folder specified by `OpenGisFiles`.

To use another database, call `CoordinateSystemsLibrary.Initialize` before creating any systems:

```csharp
CoordinateSystemsLibrary.Initialize(@"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite");
```

| Member | Description |
| :--- | :--- |
| `static bool IsInitialized` | Returns `true` if the library is already initialized. |
| `static void Initialize(string epsgDatabasePath)` | Initializes the library using the specified SQLite file and looks for grids in that file's folder. Does nothing if the library is already initialized, for example within Digi3D.AI. Throws `FileNotFoundException` if the file does not exist and `CoordinateSystemException` if it cannot be opened. |

## Axis order

Coordinates follow the axis order defined by the system's authority. In EPSG geographic systems such as EPSG:4326 and EPSG:4979, the first coordinate (`X`) is **latitude** and the second (`Y`) is **longitude**. To work with longitude first, use [`WithEastNorthAxes`](coordinatesystem.md#witheastnorthaxes):

```csharp
var wgs84 = CoordinateSystem.FromEpsg(4979).WithEastNorthAxes();
var punto = transformación.Transform(new Point3D(-3.703790, 40.416775, 650.0));
```

## Threads

The native coordinate transformation library does not support simultaneous calls. All calls from `Digi21.CoordinateSystems` to that library run one at a time: two threads can use the same transformation concurrently, but they do not transform in parallel. The `Transform` overloads that take a `Span` transform all points in a single call.

The [`TransformationOptions.Interactive`](transformationoptions.md#interactive) options display dialog boxes and can only be used from the Digi3D.AI main thread. While a dialog box is open, calls from other threads wait until it closes.
