# Valid
<!-- id: valid-2 -->
<!-- origen: 86e2731aa9e7824717daaba99077b45455453382 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the window is initialized and its bounds are ordered.

```csharp
bool Valid { get; }
```

## Property value

`bool`. In [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md), `true` if `Xmin` is not `null`, `Xmin <= Xmax`, `Ymin <= Ymax` and `Zmin <= Zmax`. The property does not throw exceptions.

A `Window3D` with non-`null` `Xmin` and a minimum greater than its maximum has `Valid` set to `false`, but `Width`, `Height`, `Depth` and the cardinal points do not throw an exception: they return values calculated from those bounds, such as a negative width.

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
