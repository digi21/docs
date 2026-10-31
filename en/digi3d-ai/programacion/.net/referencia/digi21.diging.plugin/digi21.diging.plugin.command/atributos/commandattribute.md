# CommandAttribute
<!-- id: commandattribute -->
<!-- origen: c809d019b9d5be431e7c1eabc1775f13063ae290 -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Marks a class as a Digi3D.AI command and assigns the name used to execute it.

```csharp
[AttributeUsage(AttributeTargets.Class)]
public class CommandAttribute : Attribute
```

Digi3D.AI registers each public extension class with this attribute or a derived attribute, such as [LocalizableCommandAttribute](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/atributos/localizablecommandattribute.md), as a command. The class must derive from [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) and have a public parameterless constructor.

The command name is `Name` converted to lowercase: command execution in Digi3D.AI is case-insensitive. If a .NET command is already registered with that name, Digi3D.AI keeps the registered command and does not register the new one; `LOAD_ASSEMBLY` indicates in the results window that the name is already registered. If `Name` is `null`, Digi3D.AI does not register the class.

## Constructors

```csharp
public CommandAttribute()
```

Creates the attribute with all three properties set to `null`. Assign properties using named argument syntax: `[Command(Name = "MI_ORDEN")]`.

## Properties

| Property | Description |
| :--- | :--- |
| `string Name { get; set; }` | Command name. |
| `string Description { get; set; }` | Command description. The [Find command](/digi3d-ai/referencia/cuadros-de-dialogo/buscar-orden.md) dialog displays the description when the command is selected and also searches for the entered text in the description. |
| `string HelpUrl { get; set; }` | Command help page URL. Digi3D.AI does not use it in version 26.0.0. |

## Example

```csharp
using Digi21.DigiNG.Plugin.Command;

namespace MideDistancia;

[Command(
    Name = "MIDE_DISTANCIA_2D",
    Description = "Mide la distancia en planta entre dos puntos.",
    HelpUrl = "https://ejemplo.com/ayuda/mide_distancia_2d")]
[RelatedCommand(Name = "MIDE_DISTANCIA")]
public class OrdenMideDistancia2D : Command
{
    public OrdenMideDistancia2D()
    {
        Initialize += (sender, e) => Dispose();
    }
}
```

The complete command in [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#example) uses `[Command(Name = "MIDE_DISTANCIA")]`.
