# CommandInMenuAttribute
<!-- id: commandinmenuattribute -->
<!-- origen: dbd84a3302159386c9c3dff93030c43236e4cea2 -->

Namespace: `Digi21.DigiNG.Plugin.Menu`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Adds a drawing window menu item that executes the command implemented by the class.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class CommandInMenuAttribute : Attribute
```

The attribute only affects classes registered as commands, that is, with [CommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/commandattribute.md) or [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md).

Whenever the user opens the submenu containing position `Group`, Digi3D.AI reads this attribute from all registered .NET commands and adds, at that position, an item with text `Title` for each command whose `Group` matches. Selecting the item executes the command by name, without parameters. The [MenuItemGroup](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/enumeraciones/menuitemgroup.md) table shows each group's position and the groups that do not appear in the menu.

Restrictions:

- Digi3D.AI does not add items if the `MostrarMenusNativos` configuration option is enabled.
- Digi3D.AI assigns each distinct combination of group, title and command an identifier from 22301 to 22399, keeping the assignment for the session. Two commands with the same `Title` in the same group receive different identifiers and each item executes its own command. From the session's 100th combination onward, no identifiers remain and Digi3D.AI does not add the item to the menu.
- If the attribute's constructor throws an exception when the submenu opens, Digi3D.AI does not add that command's item and writes the exception message through `System.Diagnostics.Trace`.

## Constructors

```csharp
public CommandInMenuAttribute(string title, MenuItemGroup group)
```

| Parameter | Description |
| :--- | :--- |
| `title` | Menu item text. Assigned to `Title`. |
| `group` | Menu position. Assigned to `Group`. |

## Properties

| Property | Description |
| :--- | :--- |
| `string Title { get; set; }` | Menu item text. |
| `MenuItemGroup Group { get; set; }` | Menu position where the item appears. |

## Example

The example command in [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#example) has `[Command(Name = "MIDE_DISTANCIA")]` and `[CommandInMenu("Medir la distancia entre dos puntos", MenuItemGroup.InmediateGroup4)]`. The **Medir la distancia entre dos puntos** item appears in **Immediate**, after **Measures segment**, and executes `MIDE_DISTANCIA`.
