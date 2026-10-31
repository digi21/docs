# InputDeviceOptions
<!-- id: inputdeviceoptions -->
<!-- origen: edeb5925bde37469e97834fcf9c6a2896d49ffac -->

Namespace: `Digi21.DigiNG`  
Assembly: [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)

Drawing window input device options: active device, cursor position, coordinate locks and automatic panning.

```csharp
public sealed class InputDeviceOptions
```

The class has no public constructors. Obtain the object through the static [DigiNG.InputDeviceOptions](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) property, which returns `null` if no drawing window is open. The object is bound to the drawing window active when it is obtained: when that window closes, all properties throw `ObjectDisposedException`.

`LockXY`, `LockZ`, `AutoPanningMouse` and `AutoPanningPhotogrammetricWindow` read and write Digi3D.AI boolean variables shared by all drawing windows. If a variable is undefined, its property returns `false`.

## Properties

| Property | Description |
| :--- | :--- |
| [`InputDevice`](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/enumeraciones/inputdevice.md) `InputDevice` | Drawing window's input device. The `get` accessor returns `Mouse` if the input device is the mouse and `PhotogrammetricView` otherwise. The `set` accessor activates the mouse with `Mouse` and the photogrammetric window with `PhotogrammetricView`. |
| [`Point3D`](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) `Position` | Cursor coordinates after applying [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md). |
| `Point3D OriginalPosition` | Cursor coordinates without modification by `FIXZ`. |
| `bool LockXY` | [FIXXY](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaxy.md) variable: the cursor's X and Y coordinates vary in multiples of the contour interval. |
| `bool LockZ` | [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) variable: the cursor's Z coordinate is fixed to the nearest multiple of the contour interval. |
| `bool AutoPanningMouse` | [AUTO_MOUSE](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto-raton.md) variable: automatic panning of the drawing window when the input device is the mouse. |
| `bool AutoPanningPhotogrammetricWindow` | [AUTO](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/auto.md) variable: automatic panning of the drawing window when the input device is the photogrammetric window. |

## Example

This command writes the input device and cursor coordinates with and without `FIXZ` to the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "ESCRIBE_CURSOR")]
public class EscribeCursor : Command
{
    public EscribeCursor()
    {
        Initialize += (sender, e) =>
        {
            var opciones = DigiNG.InputDeviceOptions;
            var dispositivo = opciones.InputDevice == InputDevice.Mouse ? "ratón" : "ventana fotogramétrica";

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Dispositivo de entrada: {dispositivo}");
            Digi3D.OutputWindow.WriteLine($"Cursor: {opciones.Position.X:F3} {opciones.Position.Y:F3} {opciones.Position.Z:F3}");
            Digi3D.OutputWindow.WriteLine($"Cursor sin FIJAZ: {opciones.OriginalPosition.X:F3} {opciones.OriginalPosition.Y:F3} {opciones.OriginalPosition.Z:F3}");
            Digi3D.OutputWindow.WriteLine($"FIJAZ: {opciones.LockZ}");
            Dispose();
        };
    }
}
```
