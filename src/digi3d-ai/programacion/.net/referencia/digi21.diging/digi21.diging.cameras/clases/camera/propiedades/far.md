# Far
<!-- id: far -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Plano de recorte lejano.

```csharp
public double Far { get; set; }
```

## Valor de la propiedad

`double`. El uso depende del tipo de cámara al asignarla a la ventana de dibujo:

- [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/): distancia desde la cámara hasta el plano de recorte lejano de la perspectiva.
- [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/): la ventana de dibujo solo usa la diferencia `Far - Near` como profundidad de la vista. Al leer la cámara de la ventana, `Far` vale la mitad de esa profundidad. Los constructores que reciben una ventana asignan `Zmin` de la ventana.
