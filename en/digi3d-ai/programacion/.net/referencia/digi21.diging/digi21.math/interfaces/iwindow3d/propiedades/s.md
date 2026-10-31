# S
<!-- id: s-6 -->
<!-- origen: fe047255276213fdde2d9fc5ae66e0bff339b17c -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Midpoint of the window's south side.

```csharp
Point3D S { get; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`(Xmin + Xmax) / 2`, `Ymin`, `Zmin`).

The Z coordinate of all eight cardinal points is `Zmin`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
