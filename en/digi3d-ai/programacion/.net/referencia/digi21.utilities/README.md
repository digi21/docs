# Digi21.Utilities
<!-- id: digi21.utilities -->
<!-- origen: 501b354e029d67ece1c13c8e07a3342bd38a4ab0 -->

This [NuGet](https://www.nuget.org/packages/Digi21.Utilities/) package provides tools and utilities for developing applications with the Digi3D.AI engine.

### Package manager
```bash
Install-Package Digi21.Utilities -Version 26.0.0
```

### .NET CLI
```
dotnet add package Digi21.Utilities --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.Utilities" Version="26.0.0" />
```

You can clone and modify this package in the [Digi21.Utilities](https://github.com/digi21/Digi21.Utilities) GitHub repository.

Unlike the other Digi21 packages, `Digi21.Utilities` contains the code rather than a reference assembly: `Digi21.Utilities.dll` is copied to your project's output folder. The package depends on `Digi21.DigiNG.Plugin`.

All types are in the `Digi21.Utilities` namespace. Almost all are static classes with extension methods: add `using Digi21.Utilities;` to use them.

## Types

| Type | Description |
| :--- | :--- |
| [IListExtension](/digi3d-ai/programacion/.net/referencia/digi21.utilities/ilistextension.md) | `AddRange` extension method for any `IList<T>`. |
| [IReadOnlyDrawingFileExtension](/digi3d-ai/programacion/.net/referencia/digi21.utilities/ireadonlydrawingfileextension.md) | `Contains` extension method, indicating whether an entity belongs to a drawing file. |
| [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md) | Drawing file that stores another drawing file's entities in memory so it can be iterated more than once. |
| [UtilidadesDigiNG](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesdiging.md) | Methods for entities in Digi3D.AI's drawing window. Only work inside an extension. |
| [UtilidadesEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md) | `Entity` extension methods: codes, visibility and conversion to lines. |
| [UtilidadesReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesreadonlyline.md) | `ReadOnlyLine` extension methods: distances and continuity between lines. |
| [UtilidadesSecuenciaEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaentity.md) | `IEnumerable<Entity>` extension methods: filters by type, code, window, deletion and visibility. |
| [UtilidadesSecuenciaIntersecciones](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaintersecciones.md) | Extension method filtering intersections returned by `IntersectionDetector`. |
| [UtilidadesSecuenciaPoint2D](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciapoint2d.md) | `ContieneElPunto` extension method for `IEnumerable<Point2D>`. |
| [UtilidadesSecuenciaReadOnlyFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciareadonlyfile.md) | Extension methods concatenating entities from several drawing files. |
| [UtilidadesSecuenciaVertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciavertexpointer.md) | Extension method for nodes returned by `NodeDetector`. |
