# Digi21.DigiNG
<!-- id: digi21.diging -->
<!-- origen: 144cf2817dfc76610586a56be49dcfab3616e0cf -->

This [NuGet](https://www.nuget.org/packages/Digi21.DigiNG/) package provides the basic types for working with Digi3D.AI: geometry (points, segments, windows), drawing file entities, spatial relations between entities, drawing file interfaces, the code table, cameras and tasks (warnings and errors). The other Digi21 packages depend on this one.

### Package manager
```bash
Install-Package Digi21.DigiNG -Version 26.0.0
```

### .NET CLI
```
dotnet add package Digi21.DigiNG --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
```

## Package contents

- The `Digi21.DigiNG.dll` reference assembly for `net10.0`: types for compilation, without the code. Digi3D.AI installs the assembly containing the code.
- The `Digi3DAssemblyResolver.cs` source file. The package adds this file to every C# project that references the package, directly or through another package. When the program starts, the code in `Digi3DAssemblyResolver.cs` loads the `Digi21.*` assemblies from the Digi3D.AI installation folder. The folder is read from the `InstallDir` value under `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\App\Configuration`; the `DIGI3D_INSTALLDIR` environment variable, if present, overrides that value. This mechanism is explained in [Migrating to .NET 10](/digi3d-ai/programacion/.net/migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies).

To prevent `Digi3DAssemblyResolver.cs` from being added to the project, set the `Digi21DisableAssemblyResolver` MSBuild property to `true`. The file is not added to Visual Basic or F# projects.

A Digi3D.AI license is required to run a program that uses this package.

## Namespaces

| Namespace | Description |
| :--- | :--- |
| [Digi21.DigiNG.Cameras](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/) | Cameras: conic (`ConicCamera`) and orthographic (`OrthographicCamera`), and the standard viewpoints enumeration. |
| [Digi21.DigiNG.DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/) | Code table: reading, writing and querying codes and their properties. |
| [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/) | Drawing file entities (lines, points, text, polygons and complexes) and their codes. |
| [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/) | Spatial relations between entities: `PointPoint`, `PointLine`, `PointArea`, `LineLine`, `LineArea` and `AreaArea`. |
| [Digi21.DigiNG.IO](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/) | Drawing file interfaces (`IDrawingFile`, `IReadOnlyDrawingFile`), implemented by importers and exporters. |
| [Digi21.Math](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/) | Points, segments, windows (minimum and maximum coordinates of a set of points), angle conversion and real number comparison with a precision (epsilon). |
| [Digi21.Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/) | Tasks: warnings and errors reported by drawing files, and the arguments and delegates of the `ProgressChanged`, `ResultsAdded` and `TaskAdded` events. |

## Example

This program creates a window from two points and displays its dimensions:

```csharp
using Digi21.Math;

var ventana = new Window3D(new Point3D(0, 0, 0));
ventana.Union(new Point3D(10, 20, 5));

Console.WriteLine($"{ventana.Width} x {ventana.Height} x {ventana.Depth}");   // 10 x 20 x 5
Console.WriteLine(ventana.Center);
```
