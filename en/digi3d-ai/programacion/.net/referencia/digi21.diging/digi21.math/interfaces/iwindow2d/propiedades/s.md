# S
<!-- id: s-5 -->
<!-- origen: 50eb2693fbf166476a947895c7b4cfd1e4cb712e -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Midpoint of the window's south side.

```csharp
Point2D S { get; }
```

## Property value

[Point2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point2d.md): (`(Xmin + Xmax) / 2`, `Ymin`).

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
