# Center
<!-- id: center -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Centro de la ventana.

```csharp
Point2D Center { get; }
```

## Valor de la propiedad

[Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md): (`(Xmin + Xmax) / 2`, `(Ymin + Ymax) / 2`).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) lanza la excepción si `Xmin` es `null`. |

Volver a [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
