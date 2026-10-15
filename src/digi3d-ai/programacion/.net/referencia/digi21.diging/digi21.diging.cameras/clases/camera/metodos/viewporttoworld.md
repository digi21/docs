# ViewportToWorld
<!-- id: viewporttoworld -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Convierte un punto en coordenadas de la ventana OpenGL a coordenadas del archivo de dibujo.

```csharp
public Point3D ViewportToWorld(Point3D viewport)
```

## Parámetros

| Parámetro | Descripción |
| :--- | :--- |
| `viewport` | [Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) con `X` e `Y` en píxeles de la ventana OpenGL (origen en la esquina inferior izquierda) y `Z` con la profundidad entre 0 y 1. |

## Devuelve

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) en coordenadas del archivo de dibujo. Si el punto no se puede convertir, devuelve `Position`.

## Notas

El método convierte el punto con `gluUnProject` y las matrices de vista, de proyección y de ventana (*viewport*) del contexto OpenGL activo en el hilo que llama, y suma `Position` al resultado. De las propiedades de la cámara solo usa `Position`. El resultado corresponde a la ventana de dibujo solo si el método se llama en el hilo que tiene activo el contexto OpenGL de esa ventana.

El método inverso es [WorldToViewport](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/metodos/worldtoviewport.md).
