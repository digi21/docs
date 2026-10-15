# WorldToViewport
<!-- id: worldtoviewport -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Proyecta un punto en coordenadas del archivo de dibujo a coordenadas de la ventana OpenGL.

```csharp
public Point3D WorldToViewport(Point3D world)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `world` | [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) en coordenadas del archivo de dibujo. |

## Devuelve

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) con `X` e `Y` en píxeles de la ventana OpenGL (origen en la esquina inferior izquierda) y `Z` con la profundidad entre 0 y 1. Devuelve `(0, 0, 0)` si el punto no se puede proyectar.

## Notas

El método resta `Position` al punto y lo proyecta con `gluProject` y las matrices de vista, de proyección y de ventana (*viewport*) del contexto OpenGL activo en el hilo que llama. De las propiedades de la cámara solo usa `Position`: los giros y los planos de recorte de este objeto no intervienen. El resultado corresponde a la ventana de dibujo solo si el método se llama en el hilo que tiene activo el contexto OpenGL de esa ventana.

El método inverso es [ViewportToWorld](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/viewporttoworld.md).
