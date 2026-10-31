# Programming examples
<!-- id: ejemplo-net-ejemplos -->
<!-- origen: 1bdb717c4551de903d02f544b5d46d15a40c5cd5 -->

The public [Examples-Programacion-Digi3D](https://github.com/digi21/Ejemplos-Programacion-Digi3D) repository contains example programs written in C#. There are three types of programs:

- **Console applications** that read or write `.bind` drawing files using the Digi3D.AI .NET API. They run without opening Digi3D.AI, but require Digi3D.AI to be installed on the computer.
- **An extension** that adds two commands to Digi3D.AI.
- **Standalone utilities** that modify code table files (`.tab.xml`) as XML documents. They do not use the Digi3D.AI API.

## Clone the repository

Run in a console:

```
git clone https://github.com/digi21/Ejemplos-Programacion-Digi3D.git
```

The `main` branch contains the `Ejemplos-programacion-digi3d.sln` solution with one project per example. Each project is in a folder bearing its name.

## Requirements

- The .NET 10 SDK. It comes with Visual Studio 2026; you can also install it separately from [dot.net](https://dotnet.microsoft.com/download).
- Digi3D.AI for .NET 10 installed on the computer, to run the console applications and build `BindADwg`. The standalone utilities do not require it.

## .NET and package versions

The repository's projects use **.NET 10** (`net10.0`) and Digi21 NuGet packages version **26.0.0**. No project references the `Digi21.Digi3D.App` package. [Migrating to .NET 10](../migracion-a-net-10.md) explains the changes from the 24.0.0 packages.

The `DigiNG.IO.Gps` extension uses `net10.0-windows10.0.19041.0`, because it requires the Windows location API, and the `Digi21.CoordinateSystems` package for coordinate transformation (see [DigiNG.IO.Gps](gps.md)).

## Build an example

Build the project using `dotnet build`. For example, for `comprimir`, run from the repository folder:

```
dotnet build comprimir\comprimir.csproj -c Release -o C:\Herramientas\comprimir
```

The destination folder contains the example's `.exe` and no DLLs from the `Digi21.DigiNG.*` packages, because those packages contain only reference assemblies. The `Digi21.Utilities` package does contain its DLL, and `dotnet build` copies `Digi21.Utilities.dll` to the Binselec folder. At runtime, the program loads DLLs from the Digi3D.AI installation folder, as explained in [Migrating to .NET 10](../migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies).

## Deleted entities

`BinDouble` also returns entities marked as deleted, with `Deleted` set to `true`. All console applications discard these entities: they do not copy or export them, or display their attributes.

## Opening files with BinDouble

Several examples open `.bind` files using `BinDouble` constructors that do not take the `readOnly` argument, or take it with the value `false`. These constructors open the file for reading and writing:

- If the file does not exist, `BinDouble` creates it.
- If the file exists, `BinDouble` opens it without clearing it, and `Add` appends entities to those already present.
- If the file exists but cannot be opened for writing, for example because it has the read-only attribute, `BinDouble` opens it read-only without throwing an exception. In that case, the exception occurs later, when `Add` is called.

To open a file only for reading, use a constructor with `readOnly` and pass `true`.

## Build the solution

Build each project separately using `dotnet build`, as in the previous section.

## Examples

| Example | Type | What it does | Builds with .NET 10 and the 26.0.0 packages |
|---|---|---|---|
| [Code table utilities](tablas-de-codigos.md) | Standalone utilities | Add labels and quality controls to multiple codes, and remove duplicate quality controls. | Yes |
| [comprimir](comprimir.md) | Console application | Removes deleted entities from a `.bind` file. | Yes |
| [Binselec](binselec.md) | Console application | Copies entities with any of the specified codes from `.bind` files in the current folder to a new file. | Yes |
| [EliminaCodigoDeArchivoBin](elimina-codigo-de-archivo-bin.md) | Console application | Copies a `.bind` file, removing a code from all entities. | Yes |
| [EliminarTextosDeArchivoBinD](eliminar-textos-de-archivo-bind.md) | Console application | Copies a `.bind` file without text entities having a specified code and content. | Yes |
| [ListarArchivosReferenciaEnBinD](listar-archivos-de-referencia.md) | Console application | Lists a `.bind` file's reference files. | Yes |
| [MuestraAtributosBBDDGeometriasArchivoBinD](muestra-atributos-de-base-de-datos.md) | Console application | Displays database attributes of entities in a `.bind` file. | Yes |
| [Bind2Shape](bind2shape.md) | Console application | Converts a `.bind` file with database attributes to Shapefile. | Yes |
| [BindADwg](bind-a-dwg.md) | Console application | Converts a `.bind` file to DWG. | Yes, with Digi3D.AI installed: references the `Digi21.DigiNG.IO.Dwg` assembly from the installation folder |
| [DigiNG.IO.Gps](gps.md) | Extension | Adds the `GPS` and `GPS_CLASICO` commands, which use a GPS receiver as an input device. | Yes |
