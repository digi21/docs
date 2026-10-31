# NW
<!-- id: nw-2 -->
<!-- origen: f9b9773d187d52b6afdfd9c26f136f7d90466d61 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Northwest corner of the window.

```csharp
Point3D NW { get; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`Xmin`, `Ymax`, `Zmin`).

The Z coordinate of all eight cardinal points is `Zmin`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
