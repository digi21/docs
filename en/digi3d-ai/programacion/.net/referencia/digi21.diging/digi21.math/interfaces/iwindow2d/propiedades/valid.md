# Valid
<!-- id: valid -->
<!-- origen: 5cdc05e8ee19a8e36bb9ce51fcc04843a5360846 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the window is initialized and its bounds are ordered.

```csharp
bool Valid { get; }
```

## Property value

`bool`. In [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md), `true` if `Xmin` is not `null`, `Xmin <= Xmax` and `Ymin <= Ymax`. The property does not throw exceptions.

A `Window2D` with non-`null` `Xmin` and `Xmin > Xmax` has `Valid` set to `false`, but `Width`, `Height` and the cardinal points do not throw an exception: they return values calculated from those bounds, such as a negative width.

Back to [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
