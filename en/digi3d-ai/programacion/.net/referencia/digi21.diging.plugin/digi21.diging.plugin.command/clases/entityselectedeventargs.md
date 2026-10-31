# EntitySelectedEventArgs
<!-- id: entityselectedeventargs -->
<!-- origen: 28e3819bcbb954ad740eac2aae1ac3138363b8d8 -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Data for the [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) `EntitySelected` event: the entity received by the command, and the selection point and segment.

```csharp
public class EntitySelectedEventArgs : EventArgs
```

The command receives a selected entity in these cases:

- The command calls `DigiNG.SelectEntity` (see [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/README.md)) and the user selects an entity.
- The user selects an entity with the snap command while the command is active.
- The user sends entities to the active command from the search results panel or database panel. If several are sent, the command receives only the first.
- The user chooses an option from the task panel's context menu that executes the command on the task's entity.

In the last two cases, `Coordinates` contains the coordinates of the entity's first vertex, and `FirstVertex` and `SecondVertex` are 0.

## Constructors

```csharp
public EntitySelectedEventArgs(Entity entity, Point3D groundPoint, int firstVertex, int secondVertex)
```

Creates event data with the parameter values, returned in `Entity`, `Coordinates`, `FirstVertex` and `SecondVertex`.

## Properties

| Property | Description |
| :--- | :--- |
| `Entity Entity { get; }` | Selected entity. If it belongs to a loaded drawing file, its `Owner` property is that file. |
| `Point3D Coordinates { get; }` | Ground coordinates of the selection. |
| `int FirstVertex { get; }` | Index of the selected segment's first vertex. |
| `int SecondVertex { get; }` | Index of the selected segment's second vertex. |

## Example

This command asks the user to select a line and writes its code, vertex count and selected segment to the results window. It overrides `OnDataUp` instead of subscribing to `DataUp`.

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.Plugin.Command;
using Digi21.Math;

namespace InformaEntidad;

[Command(Name = "INFORMA_ENTIDAD")]
public class OrdenInformaEntidad : Command
{
    public OrdenInformaEntidad()
    {
        Initialize += (sender, e) => Digi3D.StatusBar.Text = "Selecciona una línea";

        EntitySelected += (sender, e) =>
        {
            if (e.Entity is ReadOnlyLine línea)
            {
                Digi3D.OutputWindow.Show();
                Digi3D.OutputWindow.WriteLine(
                    $"Código {línea.Codes[0].Name}, {línea.Points.Count} vértices, " +
                    $"segmento seleccionado: {e.FirstVertex}-{e.SecondVertex}, punto: {e.Coordinates}");
            }

            Dispose();
        };
    }

    // Replaces the DataUp event: the method does not raise the event.
    public override bool OnDataUp(Point3D groundPoint)
    {
        Digi21.DigiNG.DigiNG.SelectEntity(groundPoint, entidad => entidad is ReadOnlyLine);
        return true;
    }
}
```
