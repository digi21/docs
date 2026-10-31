# Right
<!-- id: right-2 -->
<!-- origen: 71e2496c7dfcd91003e00c0aa3f13b34682f7746 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Right boundary of the orthographic view.

```csharp
public double Right { get; set; }
```

## Property value

`double`, in drawing file units. The drawing window uses only the `Right - Left` difference as the view width, centered on `Position`. Constructors that take a window assign its `Xmax` value to `Right`. The camera returned by `DigiNG.Camera` has `Right = ancho / 2`, a value relative to `Position`. See [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).
