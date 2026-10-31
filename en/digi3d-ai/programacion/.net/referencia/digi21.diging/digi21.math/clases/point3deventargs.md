# Point3DEventArgs
<!-- id: point3deventargs -->
<!-- origen: 32c634f662bf603293eaf5e44114b2b92f423f1b -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Argument of events reporting a coordinate. Handlers for the `DataDown`, `DataUp`, `ResetDown`, `ResetUp`, `SnapDown` and `SnapUp` events of [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md), declared as `EventHandler<Point3DEventArgs>`, receive this argument.

```csharp
public class Point3DEventArgs : EventArgs
```

## Constructors

```csharp
public Point3DEventArgs(Point3D coordinates)
```

Creates the argument with the coordinate `coordinates`.

## Properties

| Property | Description |
| :--- | :--- |
| `Point3D Coordinates { get; }` | Coordinate passed to the constructor. |

## Example

This command writes the coordinates of each data button press to the results window and ends when the reset button is pressed:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Plugin.Command;
using Digi21.Math;

namespace Ejemplos;

[Command(Name = "MARCA_COORDENADAS")]
public class MarcaCoordenadas : Command
{
    public MarcaCoordenadas()
    {
        DataUp += MuestraCoordenadas;
        ResetUp += (sender, e) => Dispose();
    }

    private void MuestraCoordenadas(object sender, Point3DEventArgs e)
    {
        Digi3D.OutputWindow.Show();
        Digi3D.OutputWindow.WriteLine($"X={e.Coordinates.X:F3} Y={e.Coordinates.Y:F3} Z={e.Coordinates.Z:F3}");
    }
}
```
