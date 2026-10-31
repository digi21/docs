# BindADwg
<!-- id: ejemplo-net-bind-a-dwg -->
<!-- origen: 976fb463e652bd23f1fdb9d5b7fc0b0a6e3d872e -->

`BindADwg` is a **console application** that converts a `.bind` file to an AutoCAD 2010 DWG file.

Code: [BindADwg on GitHub](https://github.com/digi21/Examples-Programacion-Digi3D/tree/main/BindADwg). The C# programming course's [Bin2Dwg](../curso-de-programacion-en-c/bin2dwg.md) lesson has a video about a DWG conversion program.

## Build

The project uses .NET 10 and the `Digi21.DigiNG.IO.BinDouble` 26.0.0 package. The `Digi21.DigiNG.IO.Dwg` assembly has no NuGet package, so the project references the assembly installed by Digi3D.AI:

```
<carpeta de instalación>\Digi21.DigiNG.IO.Dwg\26.0.0\Digi21.DigiNG.IO.Dwg.dll
```

To build the project, Digi3D.AI for .NET 10 must be installed on the computer. The `Digi3DInstallDir` MSBuild property specifies the installation folder. If it is not set, the project uses the first nonempty value from:

1. The `DIGI3D_INSTALLDIR` environment variable.
2. The `InstallDir` value under the registry key `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\App\Configuration`, written by the Digi3D.AI installer.
3. `C:\Program Files\Digi21.net\Digi3D.AI\`, the default installation folder.

Build the project from the repository folder:

```
dotnet build BindADwg\BindADwg.csproj -c Release -o C:\Herramientas\BindADwg
```

To build against another installation, add `-p:Digi3DInstallDir="<carpeta>"` to the preceding command. If the assembly does not exist at the calculated path, the build ends with `No se encuentra <ruta>`.

The reference has `Private` set to `false`, so `dotnet build` does not copy `Digi21.DigiNG.IO.Dwg.dll` to the destination folder. At runtime, the program loads that assembly from the Digi3D.AI installation folder, just like the assemblies from the `Digi21.DigiNG.*` packages (see [Migrating to .NET 10](../migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies)).

## Arguments

```
BindADwg.exe <archivo original> <archivo a crear> <tabla de códigos>
```

| Argument | Description |
|---|---|
| `<archivo original>` | `.bind` file to convert. |
| `<archivo a crear>` | `.dwg` file to create. |
| `<tabla de códigos>` | Code table file path. |

If arguments are missing, the program writes usage information to standard error and exits without converting the file.

## How it works

```csharp
using var digiTab = DigiTab.Load(rutaTablaCodigos);

// Pass a database connection with no values: the file is read without a database.
using var archivoEntrada = new BinDouble(rutaArchivoOriginal, new DatabaseConnectionProperties(), digiTab);

// AutoCAD 2010 DWG output, with the input file's reference system (WKT).
using var archivoSalida = new Dwg(
    rutaArchivoCrear,
    new DwgParameters
    {
        Version = DwgVersion.Ac_2010
    },
    digiTab, () => archivoEntrada.Wkt);

foreach (var geometria in archivoEntrada)
{
    // DWG has no deletion flag: deleted entities are not exported.
    if (geometria.Deleted)
        continue;

    archivoSalida.Add(geometria.Clone());
    Console.Write("+");
}
```

`DwgVersion` supports `Ac_12`, `Ac_13`, `Ac_14`, `Ac_2000`, `Ac_2004`, `Ac_2007` and `Ac_2010`.
