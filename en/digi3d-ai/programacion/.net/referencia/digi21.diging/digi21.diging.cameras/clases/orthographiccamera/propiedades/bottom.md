# Bottom
<!-- id: bottom -->
<!-- origen: af4539d1045192f5552b22047225163313bd9726 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Bottom boundary of the orthographic view.

```csharp
public double Bottom { get; set; }
```

## Property value

`double`, in drawing file units. The drawing window uses only the `Top - Bottom` difference as the view height, centered on `Position`. Constructors that take a window assign its `Ymin` value to `Bottom`. The camera returned by `DigiNG.Camera` has `Bottom = -alto / 2`, a value relative to `Position`. See [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).
