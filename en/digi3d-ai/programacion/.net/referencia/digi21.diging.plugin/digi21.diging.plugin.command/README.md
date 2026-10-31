# Digi21.DigiNG.Plugin.Command
<!-- id: digi21.diging.plugin.commands -->
<!-- origen: 927e2c28c2e78b96d7dd3098159c7b11707421f7 -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Types for writing Digi3D.AI commands in a .NET extension. A command is a class deriving from [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) with the [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) attribute. The [extension tutorial](/digi3d-ai/programacion/.net/tutorial-extension.md) explains how to create and load an extension.

## Attributes

| Attribute | Description |
| :--- | :--- |
| [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) | Marks a class as a command and assigns the name used to execute it. |
| [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md) | Like `CommandAttribute`, with the name, description and help read from the extension's resources. |
| [RelatedCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/relatedcommandattribute.md) | Specifies a related command's name. Digi3D.AI does not read it. |

## Classes

| Class | Description |
| :--- | :--- |
| [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) | Command base class: input device events, parameters and command termination. |
| [EntitySelectedEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/entityselectedeventargs.md) | `EntitySelected` event data: selected entity, point and segment. |
| [MoveEventArgs](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/moveeventargs.md) | `Move` event data: cursor coordinates and pressed button. |

## Interfaces

| Interface | Description |
| :--- | :--- |
| [ICommand](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/interfaces/icommand.md) | Methods through which Digi3D.AI notifies a command of drawing window events. |
