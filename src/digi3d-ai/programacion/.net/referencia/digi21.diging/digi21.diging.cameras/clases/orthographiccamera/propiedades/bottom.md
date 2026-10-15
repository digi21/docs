# Bottom
<!-- id: bottom -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Límite inferior de la vista ortográfica.

```csharp
public double Bottom { get; set; }
```

## Valor de la propiedad

`double`, en unidades del archivo de dibujo. La ventana de dibujo solo usa la diferencia `Top - Bottom` como alto de la vista, centrada en `Position`. Los constructores que reciben una ventana asignan `Ymin` de la ventana. La cámara que devuelve `DigiNG.Camera` tiene `Bottom = -alto / 2`, relativo a `Position`. Lee [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).