# Migrating to .NET 10
<!-- id: migracion-a-net-10 -->
<!-- origen: 019f6e7ff1478f98da5d3bab071c84826fedfceb -->

Digi3D.AI runs on **.NET 10**. The .NET assemblies installed by Digi3D.AI and the [NuGet](https://www.nuget.org/profiles/Digi21) packages used to program with those assemblies move to **version 26.0.0**.

This page explains what has changed and what to do with console applications and extensions created with earlier versions.

## What has changed

| | Up to version 24.0.0 | From version 26.0.0 |
|---|---|---|
| .NET version | .NET 8 | .NET 10 |
| Your projects' `TargetFramework` | `net8.0` | `net10.0` |
| Packages to reference | the `Digi21.DigiNG.*` packages you use **and** `Digi21.Digi3D.App` | only the `Digi21.DigiNG.*` packages you use |
| Installation folder | `C:\Program Files\Digi21.net\Digi3D.NET` | `C:\Program Files\Digi21.net\Digi3D.AI` |
| Folder for each assembly | `<instalación>\<paquete>\24.0.0\` | `<instalación>\<paquete>\26.0.0\` |

The packages are still **reference assemblies**: they contain the types for compilation, but no code. Digi3D.AI installs the code, and your program loads it from the installation folder at runtime. You therefore do not need to copy your program to the Digi3D.AI folder: you can install it in any folder on the computer.

The `Digi21.Digi3D.App` package is no longer needed. It does not work with .NET 10: the .NET 10 SDK removes packages without runtime assemblies from the `.deps.json` file, and the tool added by the 24.0.0 packages fails during compilation.

## How your program finds the Digi3D.AI assemblies

The `Digi21.DigiNG` package adds the `Digi3DAssemblyResolver.cs` file to your C# project. It adds `Digi3DAssemblyResolver.cs` whether you reference `Digi21.DigiNG` directly or receive `Digi21.DigiNG` through another package, such as `Digi21.DigiNG.IO.Bin`. `Digi3DAssemblyResolver.cs` does not appear in Solution Explorer, and you do not need to modify it.

When your program starts, this code:

1. Reads the Digi3D.AI installation folder from the `InstallDir` value under the registry key `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\App\Configuration`. The key keeps the `Digi3D.NET` name to preserve the configuration of existing installations.
2. When .NET cannot find an assembly whose name starts with `Digi21.`, it looks in `<instalación>\<ensamblado>\<versión>\`. `Digi3DAssemblyResolver.cs` also looks for language satellite assemblies, so messages appear in the program's language.

To use another installation folder, such as a test copy, assign its path to the `DIGI3D_INSTALLDIR` environment variable.

To prevent the file from being added to a project, set the project's `Digi21DisableAssemblyResolver` property to `true`:

```xml
<PropertyGroup>
  <Digi21DisableAssemblyResolver>true</Digi21DisableAssemblyResolver>
</PropertyGroup>
```

> [!IMPORTANT]
> NuGet only adds the file to **C#** projects. In a Visual Basic or F# project, register an `AssemblyLoadContext.Default.Resolving` event handler when the program starts. You can use [Digi3DAssemblyResolver.cs](https://github.com/digi21/Digi21.DigiNG/blob/main/NuGet/buildTransitive/Digi3DAssemblyResolver.cs) as a model.

## Migrating a console application

A console application compiled with the 24.0.0 packages **stops working** with Digi3D.AI for .NET 10 for two reasons:

- It runs on .NET 8, and .NET 8 cannot load assemblies compiled for .NET 10. The error is `FileNotFoundException: Could not load file or assembly 'System.Runtime, Version=10.0.0.0'`.
- It looks for assemblies in the `24.0.0` folders, which Digi3D.AI no longer installs.

To migrate it:

1. Change `TargetFramework` to `net10.0` in the `.csproj` file.
2. Change the version of all `Digi21.DigiNG.*` references to `26.0.0`.
3. Remove the `Digi21.Digi3D.App` reference.
4. If you manually added `additionalProbingPaths` to a `runtimeconfig.template.json` file, remove that entry.
5. Build the project with the .NET 10 SDK (Visual Studio 2026, or `dotnet build` with SDK 10).
6. Fix compilation errors caused by the [API changes](#api-changes).

A minimal project looks like this:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net10.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="Digi21.DigiNG.IO.Bin" Version="26.0.0" />
  </ItemGroup>
</Project>
```

If you only change the package versions and leave `net8.0`, restore fails with `NU1202: Package Digi21.DigiNG.IO.Bin 26.0.0 is not compatible with net8.0`.

## Migrating an extension

Extensions (commands, finders, quality controls…) are loaded inside Digi3D.AI, which has already loaded its own assemblies. An extension compiled against the 24.0.0 packages still finds `Digi21.DigiNG` and `Digi21.DigiNG.Plugin`: Digi3D.AI provides these assemblies to the extension at version 26.0.0.

Even so, recompile each extension:

1. Change `TargetFramework` to `net10.0-windows` in the `.csproj` file.
2. Change the version of all `Digi21.DigiNG.*` references to `26.0.0`.
3. Set the `Digi21DisableAssemblyResolver` property to `true`. An extension does not need the `Digi3DAssemblyResolver.cs` file because Digi3D.AI already loads the assemblies.
4. Build the project and fix errors caused by the [API changes](#api-changes).

The 24.0.0 reference assemblies declared members that do not exist in the Digi3D.AI assemblies (see the next section). An extension using them compiles with the 24.0.0 packages and fails at runtime with `MissingMethodException`; when recompiled with the 26.0.0 packages, the error occurs during compilation.

## API changes

The 26.0.0 reference assemblies have been compared member by member with the assemblies installed by Digi3D.AI. These members change from the 24.0.0 packages. In every case, the earlier code compiled but failed at runtime:

| Type | 24.0.0 packages | 26.0.0 packages |
|---|---|---|
| `Digi21.DigiNG.Cameras.Camera` | `Pitch`, `Roll` and `Yaw` of type `double` | `Pitch`, `Roll` and `Yaw` of type `float` |
| `Digi21.DigiNG.Cameras.OrthographicCamera` | constructors with `double` angles | constructors with `float` angles, in the order `yaw`, `pitch`, `roll` |
| `Digi21.DigiNG.Plugin.TaskPanel.TaskGotoPoint` | `GetCoordinates()` and `SetCoordinates(Point3D)` methods | `Coordinates` property |

These types also no longer have a public parameterless constructor, because they do not have one in Digi3D.AI and cannot be created from your code:

- In `Digi21.DigiNG`: `Camera`, `DigiTab`, `Entity`, `ReadOnlyComplex`, `ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyPolygon`, `ReadOnlyText`, `Point3DCollection` and `Point3DReadOnlyCollection`.
- In `Digi21.DigiNG.Plugin`: `OutputWindow`, `Panes`, `Progress`, `StatusBar`, `Tasks`, `ActiveParameters`, `Codes`, `Commands`, `DrawingFile`, `GeographicCalculator`, `InputDeviceOptions`, `LicenseInfo` and `VisualizationOptions`.

## Common errors

| Error | Cause | Solution |
|---|---|---|
| `NU1202: Package Digi21.DigiNG... 26.0.0 is not compatible with net8.0` | The project still targets .NET 8. | Change `TargetFramework` to `net10.0`. |
| `FileNotFoundException: ... 'System.Runtime, Version=10.0.0.0'` | The application is compiled for .NET 8. | Recompile for `net10.0` with the 26.0.0 packages. |
| `FileNotFoundException: ... 'Digi21.DigiNG, Version=26.0.0.0'` at runtime | The program cannot find the Digi3D.AI installation for .NET 10. | Install Digi3D.AI for .NET 10. If the project uses Visual Basic or F#, or has `Digi21DisableAssemblyResolver` set to `true`, register a `Resolving` event handler. |
| `MissingMethodException` in `Pitch`, `Roll`, `Yaw` or `GetCoordinates` | The extension is compiled with the 24.0.0 packages. | Recompile with the 26.0.0 packages and fix the [API changes](#api-changes). |
