# Tutorial: creating an extension
<!-- id: tutorial-extension -->
<!-- origen: 83cf7a5ca7fb8589e76c9630808149f7573f207c -->

In this tutorial, you will create a Digi3D.AI extension with a command, `HOLA_MUNDO`, that writes a message in the results window. An extension is a dynamic-link library (DLL, `.dll`) that Digi3D.AI loads at startup. The extension's commands run inside Digi3D.AI, with access to the open drawing file, reference files and Digi3D.AI windows.

## Requirements

- Digi3D.AI for .NET 10 installed on the computer.
- The .NET 10 SDK. It comes with Visual Studio 2026; you can also install it separately from [dot.net](https://dotnet.microsoft.com/download).

## 1. Create the project

Open a console in the folder where you want to create the project and run:

```
dotnet new classlib -n HolaMundo -f net10.0
cd HolaMundo
dotnet add package Digi21.DigiNG.Plugin --version 26.0.0
```

Delete the `Class1.cs` file created by the template.

`Digi21.DigiNG.Plugin` contains the types for creating commands and using Digi3D.AI windows, and depends on `Digi21.DigiNG`, which NuGet also adds.

## 2. Configure the project

Replace the contents of `HolaMundo.csproj` with:

```xml
<Project Sdk="Microsoft.NET.Sdk">

  <PropertyGroup>
    <TargetFramework>net10.0-windows</TargetFramework>
    <ImplicitUsings>enable</ImplicitUsings>
    <Nullable>enable</Nullable>
    <EnableDynamicLoading>true</EnableDynamicLoading>
    <Digi21DisableAssemblyResolver>true</Digi21DisableAssemblyResolver>
  </PropertyGroup>

  <ItemGroup>
    <PackageReference Include="Digi21.DigiNG.Plugin" Version="26.0.0" />
  </ItemGroup>

</Project>
```

- `net10.0-windows`: extensions use Windows types, such as Digi3D.AI panes.
- `EnableDynamicLoading`: prepares the library to be loaded by another program. If the extension uses other NuGet packages, their DLLs are copied to the output folder, and Digi3D.AI finds them when loading it.
- `Digi21DisableAssemblyResolver`: excludes the `Digi3DAssemblyResolver.cs` file added by the `Digi21.DigiNG` package so that console applications can find Digi3D.AI assemblies. An extension does not need `Digi3DAssemblyResolver.cs`, because Digi3D.AI has already loaded those assemblies.

## 3. Write the command

Create the `OrdenHolaMundo.cs` file with these contents:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;

namespace HolaMundo;

[Command(Name = "HOLA_MUNDO")]
public class OrdenHolaMundo : Command
{
    public OrdenHolaMundo()
    {
        Initialize += (sender, e) =>
        {
            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine("Hola mundo desde una extensión .NET 10.");
            Dispose();
        };
    }
}
```

- The `[Command]` attribute tells Digi3D.AI that the class is a command, and `Name` is the name typed to run it. Digi3D.AI treats command names as case-insensitive.
- The class inherits from `Command` and has a public parameterless constructor. Digi3D.AI creates an instance of the class using that constructor each time the command runs; if the class has no such constructor, it displays an error when the command runs.
- The `Initialize` event occurs when the command starts. In this example, the `Initialize` handler shows the results window, writes a line and ends the command with `Dispose()`. A command that waits for the user to mark points or select entities does not call `Dispose()` until command execution finishes; these commands are explained in the [C# programming course](curso-de-programacion-en-c/README.md).

## 4. Build the extension

Run the following command:

```
dotnet build -c Release -o C:\MisExtensiones\HolaMundo
```

The destination folder contains `HolaMundo.dll` and its configuration files, but no Digi21 DLLs: Digi3D.AI has already loaded them.

## 5. Load the extension in Digi3D.AI

### Testing it

At the Digi3D.AI command line, run `LOAD_ASSEMBLY` with the DLL path. If the path contains spaces, enclose it in quotation marks. In the English interface, the command is called `LOAD_ASSEMBLY`.

```
LOAD_ASSEMBLY=C:\MisExtensiones\HolaMundo\HolaMundo.dll
```

The results window lists the commands loaded by Digi3D.AI:

```
Ensamblado C:\MisExtensiones\HolaMundo\HolaMundo.dll cargado. Órdenes: hola_mundo.
```

Then run the command:

```
HOLA_MUNDO
```

The results window displays `Hola mundo desde una extensión .NET 10.`

The extension remains loaded until you close Digi3D.AI. If you load the same DLL again, Digi3D.AI keeps the registered commands and reports in the results window that the command names are already registered. To test a new version of the DLL, close Digi3D.AI, build the extension and load the DLL again in Digi3D.AI.

If the DLL has no public class with the `[Command]` attribute, the results window reports this and no commands are loaded. If the DLL cannot be loaded, Digi3D.AI displays a message explaining the error.

### Loading it at every startup

At startup, Digi3D.AI loads extensions registered under `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands`. Each extension is a string value: the value's **name** is the full DLL path and its **data** is a description. To register the extension, run the following in a console **as administrator**:

```
reg add "HKLM\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands" /v "C:\MisExtensiones\HolaMundo\HolaMundo.dll" /t REG_SZ /d "Orden Hola mundo" /reg:64 /f
```

Restart Digi3D.AI and run `HOLA_MUNDO`. To stop loading the extension at Digi3D.AI startup, delete the registry value:

```
reg delete "HKLM\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands" /v "C:\MisExtensiones\HolaMundo\HolaMundo.dll" /reg:64 /f
```

If the DLL cannot be loaded, Digi3D.AI displays a message at startup with the path and the cause of the error.

## Next steps

- To add the command to the Digi3D.AI menu, see [Adding commands to the Digi3D.AI menu](curso-de-programacion-en-c/anadiendo-ordenes-al-menu-de-digi3d.ai.md).
- To respond to points marked by the user or selected entities, see the *Mouse events* and *Entity selection* lessons in the [C# programming course](curso-de-programacion-en-c/README.md).
- If you have extensions compiled with the 24.0.0 packages, read [Migrating to .NET 10](migracion-a-net-10.md#migrating-an-extension).
