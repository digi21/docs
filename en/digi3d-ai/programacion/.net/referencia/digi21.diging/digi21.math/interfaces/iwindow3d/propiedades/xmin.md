# Xmin
<!-- id: xmin-2 -->
<!-- origen: 504889b4246b3be688411f0720a0665123513ab4 -->

Namespace: `Digi21.Math`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Window minimum X coordinate.

```csharp
double? Xmin { get; }
```

## Property value

`double?`: the minimum X coordinate, or `null` if the window is uninitialized. A [Window3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/window3d.md) is uninitialized when created with `new Window3D()`.

`Window3D` throws `InvalidOperationException` when reading `Width`, `Height`, `Depth`, `Center` or one of the eight cardinal points if `Xmin` is `null`.

Back to [IWindow3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/interfaces/iwindow3d/).
