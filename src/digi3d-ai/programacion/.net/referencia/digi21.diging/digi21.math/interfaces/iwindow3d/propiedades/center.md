# Center
<!-- id: center-2 -->

Espacio de nombres: `Digi21.Math`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Centro de la ventana.

```csharp
Point3D Center { get; }
```

## Valor de la propiedad

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`(Xmin + Xmax) / 2`, `(Ymin + Ymax) / 2`, `(Zmin + Zmax) / 2`).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) lanza la excepción si `Xmin` es `null`. |

Volver a [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
