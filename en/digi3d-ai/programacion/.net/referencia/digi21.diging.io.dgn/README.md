# Digi21.DigiNG.IO.Dgn
<!-- id: digi21.diging.io.dgn -->
<!-- origen: c31d54dab902e2bfd427b5420dd18a33dcb9e8a0 -->

This assembly provides an importer/exporter for MicroStation V8 DGN files (`.dgn`).

Digi3D.AI installs the assembly in `<carpeta de instalación>\Digi21.DigiNG.IO.Dgn\26.0.0\Digi21.DigiNG.IO.Dgn.dll`. The default installation folder is `C:\Program Files\Digi21.net\Digi3D.AI`.

## How to reference it

`Digi21.DigiNG.IO.Dgn` has no NuGet package. To use it:

1. Add the `Digi21.DigiNG` package to the project. It contains the entity types and the `Digi3DAssemblyResolver.cs` file that loads assemblies from the installation folder.
2. Add a reference to the installed DLL with `Private` set to `false`, so it is not copied to the output folder:

```xml
<ItemGroup>
  <PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
  <Reference Include="Digi21.DigiNG.IO.Dgn">
    <HintPath>C:\Program Files\Digi21.net\Digi3D.AI\Digi21.DigiNG.IO.Dgn\26.0.0\Digi21.DigiNG.IO.Dgn.dll</HintPath>
    <Private>false</Private>
  </Reference>
</ItemGroup>
```

When the program runs, .NET does not find `Digi21.DigiNG.IO.Dgn` in the program folder and the code in `Digi3DAssemblyResolver.cs` loads it from `<carpeta de instalación>\Digi21.DigiNG.IO.Dgn\26.0.0\`, just like assemblies from NuGet packages. This mechanism is explained in [Migrating to .NET 10](/digi3d-ai/programacion/.net/migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies).

Unlike a NuGet package, this reference compiles against the full assembly rather than a reference assembly. Therefore, Digi3D.AI must be installed on the computer used to compile the program.

## Types

| Type | Description |
| :--- | :--- |
| [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md) | Drawing file in MicroStation V8 DGN format (`.dgn`). |
| [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md) | Read and write parameters for a DGN file. |
| [DgnCodeCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgncodecriteria.md) | Criterion for assigning a code from the code table to each DGN element. |
| [DgnBlockCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnblockcriteria.md) | Entity type to which cells are converted. |

For DWG files, use [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/).
