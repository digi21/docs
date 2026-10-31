# AddingEntityEventArgs
<!-- id: addingentityeventargs -->
<!-- origen: 22ee6bf04e7a144f6cf552644cb6ea42a1a70be0 -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Arguments for the [DigiNG.AddingEntity](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) event, raised before saving an entity added to the active drawing file.

```csharp
public class AddingEntityEventArgs : EventArgs
```

## Constructors

```csharp
public AddingEntityEventArgs(Entity entity)
```

Creates the arguments with entity `entity` and `Cancel` set to `false`. Digi3D.AI creates these arguments when raising the event; an extension only needs the constructor to raise its own event using this type.

## Properties

| Property | Description |
| :--- | :--- |
| [`Entity`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) `Entity` | Entity about to be saved. |
| `bool Cancel` | `true` to discard the entity: Digi3D.AI does not save it in the drawing file or raise `EntityAdded`. Initially `false` when the event starts. If there are several handlers, all receive the same object, and Digi3D.AI reads `Cancel` after all finish. |

## Example

This command enables or disables a filter discarding empty text added to the drawing file. The handler remains subscribed after the command ends, until the command runs again:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "FILTRO_TEXTOS_VACIOS")]
public class FiltroTextosVacios : Command
{
    static bool activo;

    static void DescartaTextoVacío(object sender, AddingEntityEventArgs e)
    {
        if (e.Entity is ReadOnlyText texto && string.IsNullOrWhiteSpace(texto.Txt))
            e.Cancel = true;
    }

    public FiltroTextosVacios()
    {
        Initialize += (sender, e) =>
        {
            activo = !activo;

            if (activo)
                DigiNG.AddingEntity += DescartaTextoVacío;
            else
                DigiNG.AddingEntity -= DescartaTextoVacío;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine(activo ? "Filtro de textos vacíos activado." : "Filtro de textos vacíos desactivado.");
            Dispose();
        };
    }
}
```
