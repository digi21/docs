# Position
<!-- id: position -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Posición de la cámara.

```csharp
public Point3D Position { get; set; }
```

## Valor de la propiedad

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) en coordenadas del archivo de dibujo. En una [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/), `Position` es el centro de la vista. Los constructores que reciben una ventana asignan el centro de esa ventana; los demás dejan `(0, 0, 0)`.
