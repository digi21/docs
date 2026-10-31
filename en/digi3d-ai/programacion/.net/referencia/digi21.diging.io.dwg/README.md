# Digi21.DigiNG.IO.Dwg
<!-- id: digi21.diging.io.dwg -->
<!-- origen: b413fd036819fd9a5990b4a05ea4033913497cd6 -->

This assembly provides an importer/exporter for AutoCAD DWG files (`.dwg`).

Digi3D.AI installs the assembly in `<carpeta de instalación>\Digi21.DigiNG.IO.Dwg\26.0.0\Digi21.DigiNG.IO.Dwg.dll`. The default installation folder is `C:\Program Files\Digi21.net\Digi3D.AI`.

## How to reference it

`Digi21.DigiNG.IO.Dwg` has no NuGet package. To use it:

1. Add the `Digi21.DigiNG` package to the project. It contains the entity types and the `Digi3DAssemblyResolver.cs` file that loads assemblies from the installation folder.
2. Add a reference to the installed DLL with `Private` set to `false`, so it is not copied to the output folder:

```xml
<ItemGroup>
  <PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
  <Reference Include="Digi21.DigiNG.IO.Dwg">
    <HintPath>C:\Program Files\Digi21.net\Digi3D.AI\Digi21.DigiNG.IO.Dwg\26.0.0\Digi21.DigiNG.IO.Dwg.dll</HintPath>
    <Private>false</Private>
  </Reference>
</ItemGroup>
```

When the program runs, .NET does not find `Digi21.DigiNG.IO.Dwg` in the program folder and the code in `Digi3DAssemblyResolver.cs` loads it from `<carpeta de instalación>\Digi21.DigiNG.IO.Dwg\26.0.0\`, just like assemblies from NuGet packages. This mechanism is explained in [Migrating to .NET 10](/digi3d-ai/programacion/.net/migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies).

Unlike a NuGet package, this reference compiles against the full assembly rather than a reference assembly. Therefore, Digi3D.AI must be installed on the computer used to compile the program. The [BindADwg](/digi3d-ai/programacion/.net/ejemplos/bind-a-dwg.md) example calculates the DLL path from the installation folder.

## Types

| Type | Description |
| :--- | :--- |
| [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) | Drawing file in AutoCAD DWG format (`.dwg`). |
| [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md) | Read and write parameters for a DWG file. |
| [DwgVersion](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgversion.md) | AutoCAD version used to write the file. |
| [DwgImportBlocksAs](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgimportblocksas.md) | Entity type to which block references are converted. |

For DGN files, use [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/).
