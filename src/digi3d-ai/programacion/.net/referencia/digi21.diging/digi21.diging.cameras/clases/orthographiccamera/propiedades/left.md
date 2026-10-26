# Left
<!-- id: left-2 -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Límite izquierdo de la vista ortográfica.

```csharp
public double Left { get; set; }
```

## Valor de la propiedad

`double`, en unidades del archivo de dibujo. La ventana de dibujo solo usa la diferencia `Right - Left` como ancho de la vista, centrada en `Position`. Los constructores que reciben una ventana asignan a `Left` el valor de `Xmin` de esa ventana. La cámara que devuelve `DigiNG.Camera` tiene `Left = -ancho / 2`, un valor relativo a `Position`. Lee [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).