# ConicCamera
<!-- id: coniccamera -->
<!-- origen: 07012ea4c86b650bda6b063b297cfe8aa8afcdf0 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Camera with perspective (conic) projection.

```csharp
public sealed class ConicCamera : Camera
```

Inherits from [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

When a `ConicCamera` is assigned to the [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) class's `Camera` property, the drawing window uses `FieldOfView` as the vertical viewing angle, `Near` and `Far` as the clipping plane distances, and the drawing window's proportions as the width-to-height ratio.

The `ConicCamera` returned by `DigiNG.Camera` has `FieldOfView` set to 0 degrees, because reading does not copy the drawing window's field of view. Set `FieldOfView` on the camera returned by `DigiNG.Camera` before assigning the camera to `DigiNG.Camera`; otherwise, the drawing window receives a field of view of 0 degrees.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [ConicCamera()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/constructores.md) | Creates a camera with an empty `Name` and all other properties set to 0. |

## Properties

| Property | Description |
| :--- | :--- |
| [double FieldOfView](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/propiedades/fieldofview.md) | Vertical viewing angle, in degrees. |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/name.md) | Camera name. Inherited from `Camera`. |
| [Point3D Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | Camera position. Inherited from `Camera`. |
| [float Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) | Rotation around the X axis, in degrees. Inherited from `Camera`. |
| [float Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) | Rotation around the Z axis, in degrees. Inherited from `Camera`. |
| [float Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) | Rotation around the Y axis, in degrees. Inherited from `Camera`. |
| [double Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Near clipping plane distance. Inherited from `Camera`. |
| [double Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Far clipping plane distance. Inherited from `Camera`. |

The `WorldToViewport`, `ViewportToWorld` and `ToString` methods are inherited from [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

## Example

This command rotates the active drawing window's camera 10 degrees around the Z axis and sets a field of view of 45 degrees, if it is a conic camera:

```csharp
using Digi21.DigiNG.Cameras;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "GIRA_CAMARA_CONICA")]
public class GiraCamaraConica : Command
{
    public GiraCamaraConica()
    {
        Initialize += (sender, e) =>
        {
            // DigiNG.Camera returns a copy: changes are applied when it is assigned back.
            if (Digi21.DigiNG.DigiNG.Camera is ConicCamera cámara)
            {
                cámara.Yaw += 10;
                cámara.FieldOfView = 45;
                Digi21.DigiNG.DigiNG.Camera = cámara;
                Digi21.DigiNG.DigiNG.RenderScene();
            }

            Dispose();
        };
    }
}
```
