# SE
<!-- id: se-2 -->
<!-- origen: 6a8508c45edd58317695c101e6a86cb4bef8c461 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Southeast corner of the window.

```csharp
Point3D SE { get; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md): (`Xmax`, `Ymin`, `Zmin`).

The Z coordinate of all eight cardinal points is `Zmin`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) throws the exception if `Xmin` is `null`. |

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
