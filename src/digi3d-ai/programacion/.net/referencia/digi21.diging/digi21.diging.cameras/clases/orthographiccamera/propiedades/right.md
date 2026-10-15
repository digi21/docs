# Right
<!-- id: right-2 -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Límite derecho de la vista ortográfica.

```csharp
public double Right { get; set; }
```

## Valor de la propiedad

`double`, en unidades del archivo de dibujo. La ventana de dibujo solo usa la diferencia `Right - Left` como ancho de la vista, centrada en `Position`. Los constructores que reciben una ventana asignan `Xmax` de la ventana. La cámara que devuelve `DigiNG.Camera` tiene `Right = ancho / 2`, relativo a `Position`. Lee [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).