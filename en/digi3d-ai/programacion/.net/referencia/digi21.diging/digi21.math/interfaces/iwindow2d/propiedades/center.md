# Center
<!-- id: center -->
<!-- origen: 0d7573b192202026ad2bd62943938c243d0f4fb1 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Window center.

```csharp
Point2D Center { get; }
```

## Property value

[Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md): (`(Xmin + Xmax) / 2`, `(Ymin + Ymax) / 2`).

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
