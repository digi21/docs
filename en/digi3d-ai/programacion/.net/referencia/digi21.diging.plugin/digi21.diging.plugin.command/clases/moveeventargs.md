# MoveEventArgs
<!-- id: digi21.diging.plugin.command.moveeventargs -->
<!-- origen: 2983e55f97b9424bbf6ebf46eecadfec8e9b48a5 -->

Namespace: `Digi21.DigiNG.Plugin.Command`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Data for the [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) `Move` event, raised when the user moves the cursor in the drawing window.

```csharp
public class MoveEventArgs : EventArgs
```

## Constructors

```csharp
public MoveEventArgs(Point3D coordinates, InputDeviceButton button)
```

Creates event data with the parameter values, returned in `Coordinates` and `Button`.

## Properties

| Property | Description |
| :--- | :--- |
| `Point3D Coordinates { get; }` | Cursor's ground coordinates. |
| `InputDeviceButton Button { get; }` | Input device button pressed during movement: `None` if none, `Data`, `Snap` or `Cancel`. See [InputDeviceButton](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevicebutton.md). |

If a button is pressed and the configured delay since the last data button press has not elapsed, Digi3D.AI does not raise the event.

## Example

The example command in [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md#example) uses `Coordinates` in its `Move` handler to display the distance to the first point in the status bar.
