# Near
<!-- id: near -->

Espacio de nombres: `Digi21.DigiNG.Cameras`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Plano de recorte cercano.

```csharp
public double Near { get; set; }
```

## Valor de la propiedad

`double`. El uso depende del tipo de cámara al asignarla a la ventana de dibujo:

- [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/): distancia desde la cámara hasta el plano de recorte cercano de la perspectiva.
- [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/): la ventana de dibujo solo usa la diferencia `Far - Near` como profundidad de la vista. Al leer la cámara de la ventana de dibujo, `Near` vale menos la mitad de la profundidad de la vista. Los constructores que reciben una ventana asignan a `Near` el valor de `Zmax` de esa ventana.
