# OrthographicCamera
<!-- id: ortographiccamera -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Cámara con proyección ortográfica: la vista no tiene perspectiva y la escala no depende de la distancia a la cámara.

```csharp
public sealed class OrthographicCamera : Camera
```

Hereda de [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

Al asignar una `OrthographicCamera` a la propiedad `Camera` de la clase [DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/diging/), la ventana de dibujo centra la vista en `Position` y usa solo tres diferencias:

| Diferencia | Uso |
| :--- | :--- |
| `Right - Left` | Ancho de la vista, en unidades del archivo de dibujo. |
| `Top - Bottom` | Alto de la vista, en unidades del archivo de dibujo. |
| `Far - Near` | Profundidad de la vista. |

La ventana de dibujo amplía el ancho o el alto para conservar la proporción de la ventana. La profundidad de la proyección es el doble del mayor de los tres valores, por lo que `Near` y `Far` no recortan entidades que estén dentro del ancho y el alto de la vista.

La `OrthographicCamera` que devuelve `DigiNG.Camera` tiene `Left`, `Right`, `Top`, `Bottom`, `Near` y `Far` relativos a `Position`: `Left = -ancho / 2`, `Right = ancho / 2`, y lo mismo con el alto y la profundidad. Los constructores que reciben una ventana asignan en cambio las coordenadas absolutas de la ventana; como la ventana de dibujo solo usa las diferencias, las dos formas producen la misma vista.

## Constructores

| Constructor | Descripción |
| :--- | :--- |
| [OrthographicCamera()](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Crea una cámara con `Name` vacío y el resto de propiedades a 0. |
| [OrthographicCamera(string name)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Crea una cámara con el nombre indicado y el resto de propiedades a 0. |
| [OrthographicCamera(IWindow3D window)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Crea una cámara que abarca la ventana indicada, sin giros. |
| [OrthographicCamera(string name, IWindow3D window)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Crea una cámara que abarca la ventana indicada, sin giros y con el nombre indicado. |
| [OrthographicCamera(IWindow3D window, float yaw, float pitch, float roll)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Crea una cámara que abarca la ventana indicada, con los giros indicados. |
| [OrthographicCamera(string name, IWindow3D window, float yaw, float pitch, float roll)](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/constructores.md) | Crea una cámara que abarca la ventana indicada, con los giros y el nombre indicados. |

## Propiedades

| Propiedad | Descripción |
| :--- | :--- |
| [double Left](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/left.md) | Límite izquierdo de la vista. |
| [double Right](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/right.md) | Límite derecho de la vista. |
| [double Top](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/top.md) | Límite superior de la vista. |
| [double Bottom](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/propiedades/bottom.md) | Límite inferior de la vista. |
| [string Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/name.md) | Nombre de la cámara. Heredada de `Camera`. |
| [Point3D Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | Centro de la vista. Heredada de `Camera`. |
| [float Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) | Giro sobre el eje X, en grados sexagesimales. Heredada de `Camera`. |
| [float Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) | Giro sobre el eje Z, en grados sexagesimales. Heredada de `Camera`. |
| [float Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) | Giro sobre el eje Y, en grados sexagesimales. Heredada de `Camera`. |
| [double Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Límite cercano de la profundidad. Heredada de `Camera`. |
| [double Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Límite lejano de la profundidad. Heredada de `Camera`. |

Los métodos `WorldToViewport`, `ViewportToWorld` y `ToString` se heredan de [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).

## Ejemplo

Esta orden muestra el archivo de dibujo completo en vista cenital:

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

            // Un archivo sin entidades no tiene coordenadas mínimas y máximas.
            if (archivo.Valid)
            {
                // Con los tres ángulos a 0, la cámara mira hacia -Z con el norte arriba.
                Digi21.DigiNG.DigiNG.Camera = new OrthographicCamera("Archivo completo", archivo);
                Digi21.DigiNG.DigiNG.RenderScene();
            }

            Dispose();
        };
    }
}
```
