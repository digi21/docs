# InputDeviceButton
<!-- id: inputdevicebutton -->
<!-- origen: a1bc1d7fa0b5f552914bc71f87588a4933d938ec -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Input device button. Used by [DigiNG.SendInputDeviceEvent](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) to indicate the button in the event being sent, and by [Command](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging.plugin.command/clases/command.md) `OnMove` (`Move` event) to indicate the button pressed while the cursor moves.

```csharp
public enum InputDeviceButton
```

## Values

| Value | Number | Description |
| :--- | :--- | :--- |
| `None` | 0 | No button. |
| `Data` | 1 | Data button. |
| `Snap` | 2 | Snap button. |
| `Cancel` | 3 | Cancel button. |

## Example

This method simulates the user pressing the data button at ground coordinates. The active command receives the point as if the user had digitized it:

```csharp
using Digi21.DigiNG;
using Digi21.Math;

namespace Ejemplos;

public static class DispositivoSimulado
{
    public static void PulsaDato(double x, double y, double z) =>
        DigiNG.SendInputDeviceEvent(new Point3D(x, y, z), InputDeviceButton.Data);
}
```
