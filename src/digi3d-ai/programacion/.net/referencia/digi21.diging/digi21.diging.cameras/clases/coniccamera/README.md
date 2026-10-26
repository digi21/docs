# ConicCamera
<!-- id: coniccamera -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Cámara con proyección en perspectiva (cónica).

```csharp
public sealed class ConicCamera : Camera
```

Hereda de [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

Al asignar una `ConicCamera` a la propiedad `Camera` de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), la ventana de dibujo usa `FieldOfView` como ángulo de visión vertical, `Near` y `Far` como distancias de los planos de recorte, y la proporción de la ventana de dibujo como relación entre ancho y alto.

La `ConicCamera` que devuelve `DigiNG.Camera` tiene `FieldOfView` a 0 grados, porque la lectura no copia el campo de visión de la ventana de dibujo. Asigna un valor a `FieldOfView` de la cámara devuelta por `DigiNG.Camera` antes de asignar la cámara a `DigiNG.Camera`; si no asignas un valor a `FieldOfView`, la ventana de dibujo recibe un campo de visión de 0 grados.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [ConicCamera()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/constructores.md) | Crea una cámara con `Name` vacío y el resto de propiedades a 0. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [double FieldOfView](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/propiedades/fieldofview.md) | Ángulo de visión vertical, en grados sexagesimales. |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/name.md) | Nombre de la cámara. Heredada de `Camera`. |
| [Point3D Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | Posición de la cámara. Heredada de `Camera`. |
| [float Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) | Giro sobre el eje X, en grados sexagesimales. Heredada de `Camera`. |
| [float Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) | Giro sobre el eje Z, en grados sexagesimales. Heredada de `Camera`. |
| [float Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) | Giro sobre el eje Y, en grados sexagesimales. Heredada de `Camera`. |
| [double Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Distancia del plano de recorte cercano. Heredada de `Camera`. |
| [double Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Distancia del plano de recorte lejano. Heredada de `Camera`. |

Los métodos `WorldToViewport`, `ViewportToWorld` y `ToString` se heredan de [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

## Ejemplo

Esta orden gira 10 grados sobre el eje Z la cámara de la ventana de dibujo activa y le asigna un campo de visión de 45 grados, si la cámara es cónica:

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
            // DigiNG.Camera devuelve una copia: los cambios se aplican al asignarla otra vez.
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
