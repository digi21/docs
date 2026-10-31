# Camera
<!-- id: camera -->
<!-- origen: 9de4c7d3d065411dffa7eeda8840d9ad8bf322df -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Base class for drawing window cameras: name, position, rotations and clipping planes.

```csharp
public abstract class Camera
```

Derived types: [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/) and [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).

The class has no public constructors: create a `ConicCamera` or an `OrthographicCamera`.

A `Camera` is a data object: changing its properties does not change the drawing window. Each read of the [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) class's static `Camera` property returns a new object containing the active drawing window's camera (a `ConicCamera` or an `OrthographicCamera`), and assignment applies the camera to that window. To modify the window's camera, read the static property, modify the returned object's properties and assign that object back to the same static property.

All three rotations are in degrees. With all three set to 0, the camera looks in the −Z direction with the +Y axis toward the top of the screen (top view with north up). The drawing window applies rotations in this order: first `Pitch` around the X axis, then `Roll` around the Y axis, and finally `Yaw` around the Z axis.

## Properties

| Property | Description |
| :--- | :--- |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/name.md) | Camera name. |
| [Point3D Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | Camera position, in drawing file coordinates. |
| [float Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) | Rotation around the X axis, in degrees. |
| [float Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) | Rotation around the Z axis, in degrees. |
| [float Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) | Rotation around the Y axis, in degrees. |
| [double Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Near clipping plane. |
| [double Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Far clipping plane. |

## Methods

| Method | Description |
| :--- | :--- |
| [Point3D WorldToViewport(Point3D world)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/worldtoviewport.md) | Projects a drawing file point to OpenGL window coordinates. |
| [Point3D ViewportToWorld(Point3D viewport)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/viewporttoworld.md) | Converts an OpenGL window point to drawing file coordinates. |
| `string ToString()` | Returns `Name`. |

## Example

This command displays the active drawing window's camera in the results window:

```csharp
using Digi21.Digi3D;
using Digi21.DigiNG.Cameras;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "INFO_CAMARA")]
public class InfoCamara : Command
{
    public InfoCamara()
    {
        Initialize += (sender, e) =>
        {
            var cámara = Digi21.DigiNG.DigiNG.Camera;

            Digi3D.OutputWindow.Show();
            Digi3D.OutputWindow.WriteLine($"Posición: {cámara.Position}");
            Digi3D.OutputWindow.WriteLine($"Pitch: {cámara.Pitch}, Yaw: {cámara.Yaw}, Roll: {cámara.Roll} (grados sexagesimales)");

            switch (cámara)
            {
                case OrthographicCamera ortográfica:
                    Digi3D.OutputWindow.WriteLine($"Ortográfica de {ortográfica.Right - ortográfica.Left} x {ortográfica.Top - ortográfica.Bottom}");
                    break;
                case ConicCamera cónica:
                    Digi3D.OutputWindow.WriteLine($"Cónica con campo de visión de {cónica.FieldOfView} grados");
                    break;
            }

            Dispose();
        };
    }
}
```
