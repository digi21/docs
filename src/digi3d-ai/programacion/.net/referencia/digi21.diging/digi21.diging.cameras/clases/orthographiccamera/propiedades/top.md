# Top
<!-- id: top -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Límite superior de la vista ortográfica.

```csharp
public double Top { get; set; }
```

## Valor de la propiedad

`double`, en unidades del archivo de dibujo. La ventana de dibujo solo usa la diferencia `Top - Bottom` como alto de la vista, centrada en `Position`. Los constructores que reciben una ventana asignan `Ymax` de la ventana. La cámara que devuelve `DigiNG.Camera` tiene `Top = alto / 2`, relativo a `Position`. Lee [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).