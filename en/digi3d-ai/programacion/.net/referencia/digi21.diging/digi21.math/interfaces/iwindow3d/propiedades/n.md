# N
<!-- id: n-6 -->
<!-- origen: cd18bda8327b52413d72bc1e61dad6fd266db887 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Midpoint of the window's north side.

```csharp
Point3D N { get; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`(Xmin + Xmax) / 2`, `Ymax`, `Zmin`).

The Z coordinate of all eight cardinal points is `Zmin`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
