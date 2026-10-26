# Camera
<!-- id: camera -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Clase base de las cámaras de la ventana de dibujo: nombre, posición, giros y planos de recorte.

```csharp
public abstract class Camera
```

Tipos derivados: [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/) y [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).

La clase no tiene constructores públicos: se crea una `ConicCamera` o una `OrthographicCamera`.

Una `Camera` es un objeto de datos: cambiar sus propiedades no cambia la ventana de dibujo. La propiedad estática `Camera` de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/) devuelve en cada lectura un objeto nuevo con la cámara de la ventana de dibujo activa (una `ConicCamera` o una `OrthographicCamera`), y la asignación aplica la cámara a esa ventana. Para modificar la cámara de la ventana, lee la propiedad estática, modifica las propiedades del objeto devuelto y asigna ese objeto a la misma propiedad estática.

Los tres giros están en grados sexagesimales. Con los tres a 0, la cámara mira en la dirección −Z con el eje +Y hacia arriba de la pantalla (vista cenital con el norte arriba). La ventana de dibujo aplica los giros en este orden: primero `Pitch` sobre el eje X, después `Roll` sobre el eje Y y por último `Yaw` sobre el eje Z.

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/name.md) | Nombre de la cámara. |
| [Point3D Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | Posición de la cámara, en coordenadas del archivo de dibujo. |
| [float Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) | Giro sobre el eje X, en grados sexagesimales. |
| [float Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) | Giro sobre el eje Z, en grados sexagesimales. |
| [float Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) | Giro sobre el eje Y, en grados sexagesimales. |
| [double Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Plano de recorte cercano. |
| [double Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Plano de recorte lejano. |

## Métodos

| Método | Descripción |
| :--- | :--- |
| [Point3D WorldToViewport(Point3D world)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/worldtoviewport.md) | Proyecta un punto del archivo de dibujo a coordenadas de la ventana OpenGL. |
| [Point3D ViewportToWorld(Point3D viewport)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/viewporttoworld.md) | Convierte un punto de la ventana OpenGL a coordenadas del archivo de dibujo. |
| `string ToString()` | Devuelve `Name`. |

## Ejemplo

Esta orden muestra en la ventana de resultados la cámara de la ventana de dibujo activa:

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
