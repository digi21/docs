# Camera

Espacio de nombres: [Digi21.DigiNG.Cameras](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/)

Esta clase abstracta sirve como base para los distintos tipos de cámaras que soporta la ventana de dibujo de Digi3D.AI.

```csharp
public abstract class Camera
```

Herencia [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0) → Camera

Tipos derivados: [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/)

## Propiedades

|  |  |
| :--- | :--- |
| [Far](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/far.md) | Devuelve o asigna la distancia del plano lejano del cono de visión. |
| [Near](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/near.md) | Devuelve o asigna la distancia del plano cercano del cono de visión. |
| [Name](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/name.md) | Devuelve o asigna el nombre de la cámara. |
| [Pitch](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/pitch.md) de rotación en el eje _Pitch_. |
| [Position](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/position.md) | Devuelve o asigna la posición de la cámara. |
| [Roll](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/roll.md) de rotación en el eje _Roll_. |
| [Yaw](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/propiedades/yaw.md) de rotación en el eje _Yaw_. |

## Métodos


|  |  |
| :--- | :--- |
| ToString() | Convierte este [Entity](../../../digi21.diging.entities/clases/entity/) en una cadena legible para los humanos.; (Heredado de [Object](https://docs.microsoft.com/en-us/dotnet/api/system.object?view=net-5.0)) |
| [ViewportToWorld(Point3D)](metodos/viewporttoworld.md) | Transforma una coordenada de *cámara* a *mundo*. |
| [WorldToViewport(Point3D)](metodos/worldtoviewport.md) | Transforma una coordenada de *mundo* a *cámara*. |


