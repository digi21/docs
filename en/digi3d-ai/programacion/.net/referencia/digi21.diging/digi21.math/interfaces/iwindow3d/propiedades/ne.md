# NE
<!-- id: ne-2 -->
<!-- origen: 05540a5553884aea29a3d7910dc7391bc0bdc404 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Northeast corner of the window.

```csharp
Point3D NE { get; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`Xmax`, `Ymax`, `Zmin`).

The Z coordinate of all eight cardinal points is `Zmin`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
