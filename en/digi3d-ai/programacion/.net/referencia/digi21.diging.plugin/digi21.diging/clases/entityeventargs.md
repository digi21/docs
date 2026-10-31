# EntityEventArgs
<!-- id: entityeventargs -->
<!-- origen: 87b8db4de2804a7d527690b003a7b7e5192d383a -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Arguments for [DigiNG.EntityAdded, DigiNG.EntityDeleted and DigiNG.EntityRecovered](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), raised after adding, deleting or recovering an entity in the active drawing file.

```csharp
public class EntityEventArgs : EventArgs
```

## Constructors

```csharp
public EntityEventArgs(Entity entity)
```

Creates the arguments with entity `entity`. Digi3D.AI creates these arguments when raising the events; an extension only needs the constructor to raise its own event using this type.

## Properties

| Property | Description |
| :--- | :--- |
| [`Entity`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) `Entity` | Entity that has been added, deleted or recovered. |

## Example

This command enables or disables logging that writes each entity's code to the results window when it is deleted from the drawing file. The handler remains subscribed after the command ends, until the command runs again:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "REGISTRA_ELIMINADAS")]
public class RegistraEliminadas : Command
{
    static bool activo;

    static void EscribeEliminada(object sender, EntityEventArgs e)
    {
        var código = e.Entity.Codes.Count > 0 ? e.Entity.Codes[0].Name : "";
        Digi3D.OutputWindow.WriteLine($"Eliminada una entidad con el código {código}");
    }

    public RegistraEliminadas()
    {
        Initialize += (sender, e) =>
        {
            activo = !activo;

            if (activo)
                DigiNG.EntityDeleted += EscribeEliminada;
            else
                DigiNG.EntityDeleted -= EscribeEliminada;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine(activo ? "Registro de eliminadas activado." : "Registro de eliminadas desactivado.");
            Dispose();
        };
    }
}
```

`EntityDeleted` is not raised for bulk deletions, such as `DrawingFile.Delete(IEnumerable<Entity>)`. See the event notes in [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/).
