# Xmin
<!-- id: xmin -->
<!-- origen: 9d09ccc2996e9de28d2cd9de8a386ef48fbbf4ad -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Window minimum X coordinate.

```csharp
double? Xmin { get; }
```

## Property value

`double?`: the minimum X coordinate, or `null` if the window is uninitialized. A [Window2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window2d.md) is uninitialized when created with `new Window2D()` or when it is the result of `Intersection` between two nonoverlapping windows.

`Window2D` throws `InvalidOperationException` when reading `Width`, `Height`, `Center` or one of the eight cardinal points if `Xmin` is `null`.

Back to [IWindow2D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow2d/).
