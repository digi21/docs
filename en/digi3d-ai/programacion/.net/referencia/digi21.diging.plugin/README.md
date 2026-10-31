# Digi21.DigiNG.Plugin
<!-- id: digi21.diging.plugin -->
<!-- origen: bfdb553c4fc8be28949dc08c6f979031f1c3863e -->

The [NuGet](https://www.nuget.org/packages/Digi21.DigiNG.Plugin) package `Digi21.DigiNG.Plugin` contains the reference assembly `Digi21.DigiNG.Plugin.dll`: static classes connecting an extension to Digi3D.AI (drawing window, drawing file, panes, status bar) and types for writing extensions: commands, menu items, search providers and dynamic database properties. The package depends on [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/README.md) 26.0.0.

The package contains only the reference assembly, for compilation. At runtime, the assembly installed by Digi3D.AI is used. The [extension tutorial](/digi3d-ai/programacion/.net/tutorial-extension.md) explains how to create and load an extension.

### Package manager
```bash
Install-Package Digi21.DigiNG.Plugin -Version 26.0.0
```

### .NET CLI
```
dotnet add package Digi21.DigiNG.Plugin --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG.Plugin" Version="26.0.0" />
```

## Namespaces

| Namespace | Contents |
| :--- | :--- |
| [Digi21.Digi3D](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.digi3d/README.md) | Digi3D.AI application: results window, status bar, panes, sounds and notification balloons. |
| [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/README.md) | Active drawing window: drawing file, reference files, command stack and entity selection. |
| [Digi21.DigiNG.Plugin.Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/README.md) | Commands: `Command` base class, registration attributes and event data. |
| [Digi21.DigiNG.Plugin.Databases](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/README.md) | Dynamic properties: default database field values calculated by the extension. |
| [Digi21.DigiNG.Plugin.Menu](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/README.md) | Drawing window menu items that execute extension commands. |
| [Digi21.DigiNG.Plugin.Search](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/README.md) | Search panel providers. |
| [Digi21.DigiNG.Plugin.TaskPanel](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.taskpanel/README.md) | Task panel tasks. |

## Extension types and where they are registered

| Extension type | .NET type | How Digi3D.AI loads it |
| :--- | :--- | :--- |
| Command | Class derived from [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) with [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) | On startup, from `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\Commands`, or through `LOAD_ASSEMBLY`. |
| Menu item | [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md) on a command | With the command. |
| Search provider | Class implementing [ISearcher](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/interfaces/isearcher.md) with [SearcherAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.search/atributos/searcherattribute.md) | On startup, from `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\SearchProviders`. |
| Dynamic property | Class implementing [IDynamicProperty](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/interfaces/idynamicproperty.md) with [DynamicPropertyAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.databases/atributos/dynamicpropertyattribute.md) | On startup, from `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\DigiNG\Extensiones\DynamicPropertyProviders`. |

In all three registry keys, the name of each string value is the DLL's full path. `LOAD_ASSEMBLY` only registers commands: search providers and dynamic properties are only loaded on startup.
