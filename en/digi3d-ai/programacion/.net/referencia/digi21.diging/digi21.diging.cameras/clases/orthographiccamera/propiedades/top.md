# Top
<!-- id: top -->
<!-- origen: 366ec4e1f142fea7ad093d701b74939bfb973b5f -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Top boundary of the orthographic view.

```csharp
public double Top { get; set; }
```

## Property value

`double`, in drawing file units. The drawing window uses only the `Top - Bottom` difference as the view height, centered on `Position`. Constructors that take a window assign its `Ymax` value to `Top`. The camera returned by `DigiNG.Camera` has `Top = alto / 2`, a value relative to `Position`. See [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).
