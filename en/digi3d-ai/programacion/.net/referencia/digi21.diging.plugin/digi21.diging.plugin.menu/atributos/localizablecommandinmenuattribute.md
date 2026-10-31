# LocalizableCommandInMenuAttribute
<!-- id: localizablecommandinmenuattribute -->
<!-- origen: 5a78e56e02c2c46c494a35d402b156b6e0f3e9a8 -->

Namespace: `Digi21.DigiNG.Plugin.Menu`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Like [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md), with the menu item text read from the extension's resources.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class LocalizableCommandInMenuAttribute : CommandInMenuAttribute
```

Inherits from: [CommandInMenuAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.menu/atributos/commandinmenuattribute.md).

## Constructors

```csharp
public LocalizableCommandInMenuAttribute(Type resourceManagerProvider, string titleResource, MenuItemGroup group)
```

| Parameter | Description |
| :--- | :--- |
| `resourceManagerProvider` | Type with a non-public static property of type `ResourceManager`. The requirements are those of [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#resource-provider). |
| `titleResource` | Resource key containing the item text. The resource string is assigned to `Title`. |
| `group` | Menu position. Assigned to `Group`. |

The constructor throws `ArgumentException` if `resourceManagerProvider` has no non-public static property of type `ResourceManager` or the resource does not contain the `titleResource` key.

Digi3D.AI creates the attribute whenever the user opens the submenu at position `group`, rather than when loading the extension. If the constructor throws `ArgumentException` at that time, Digi3D.AI does not add that command's item to the menu and writes the exception message through `System.Diagnostics.Trace`.

## Example

The [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md#example) example adds the `CUENTA_LINEAS` command to **Tools**, after **Configuration...**, with the text from the `CuentaLineasMenu` resource.
