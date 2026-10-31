# OrthographicCamera
<!-- id: ortographiccamera -->
<!-- origen: 4be0c4450d99e5dfada3150f9d71b6970bce69a2 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Camera with orthographic projection: the view has no perspective, and scale does not depend on distance from the camera.

```csharp
public sealed class OrthographicCamera : Camera
```

Inherits from [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

When an `OrthographicCamera` is assigned to the [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) class's `Camera` property, the drawing window centers the view on `Position` and uses only three differences:

| Difference | Use |
| :--- | :--- |
| `Right - Left` | View width, in drawing file units. |
| `Top - Bottom` | View height, in drawing file units. |
| `Far - Near` | View depth. |

The drawing window expands the width or height to preserve the window's aspect ratio. The projection depth is twice the largest of the three values, so `Near` and `Far` do not clip entities within the view's width and height.

The `OrthographicCamera` returned by `DigiNG.Camera` has `Left`, `Right`, `Top`, `Bottom`, `Near` and `Far` relative to `Position`: `Left = -ancho / 2`, `Right = ancho / 2`, and likewise for height and depth. Constructors that take a window instead assign the window's absolute coordinates; because the drawing window uses only the differences, both forms produce the same view.

## Constructors

| Constructor | Description |
| :--- | :--- |
| [OrthographicCamera()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Creates a camera with an empty `Name` and all other properties set to 0. |
| [OrthographicCamera(string name)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Creates a camera with the specified name and all other properties set to 0. |
| [OrthographicCamera(IWindow3D window)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Creates a camera encompassing the specified window, without rotations. |
| [OrthographicCamera(string name, IWindow3D window)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Creates a camera encompassing the specified window, without rotations and with the specified name. |
| [OrthographicCamera(IWindow3D window, float yaw, float pitch, float roll)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Creates a camera encompassing the specified window, with the specified rotations. |
| [OrthographicCamera(string name, IWindow3D window, float yaw, float pitch, float roll)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Creates a camera encompassing the specified window, with the specified rotations and name. |

## Properties

| Property | Description |
| :--- | :--- |
| [double Left](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/left.md) | Left view boundary. |
| [double Right](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/right.md) | Right view boundary. |
| [double Top](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/top.md) | Top view boundary. |
| [double Bottom](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/bottom.md) | Bottom view boundary. |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/name.md) | Camera name. Inherited from `Camera`. |
| [Point3D Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | View center. Inherited from `Camera`. |
| [float Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) | Rotation around the X axis, in degrees. Inherited from `Camera`. |
| [float Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) | Rotation around the Z axis, in degrees. Inherited from `Camera`. |
| [float Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) | Rotation around the Y axis, in degrees. Inherited from `Camera`. |
| [double Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Near depth boundary. Inherited from `Camera`. |
| [double Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Far depth boundary. Inherited from `Camera`. |

The `WorldToViewport`, `ViewportToWorld` and `ToString` methods are inherited from [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

## Example

This command shows the entire drawing file in top view:

```csharp
using Digi21.DigiNG.Cameras;
using Digi21.DigiNG.Plugin.Command;

namespace Ejemplos;

[Command(Name = "VISTA_CENITAL_ARCHIVO")]
public class VistaCenitalArchivo : Command
{
    public VistaCenitalArchivo()
    {
        Initialize += (sender, e) =>
        {
            var archivo = Digi21.DigiNG.DigiNG.DrawingFile;

            // A file without entities has no minimum and maximum coordinates.
            if (archivo.Valid)
            {
                // With all three angles at 0, the camera looks toward -Z with north up.
                Digi21.DigiNG.DigiNG.Camera = new OrthographicCamera("Archivo completo", archivo);
                Digi21.DigiNG.DigiNG.RenderScene();
            }

            Dispose();
        };
    }
}
```
