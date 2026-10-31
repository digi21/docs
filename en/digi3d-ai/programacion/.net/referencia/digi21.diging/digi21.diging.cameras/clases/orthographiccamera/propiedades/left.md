# Left
<!-- id: left-2 -->
<!-- origen: b664bf4cccd0873be030822f4d501d4975ecc307 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Left boundary of the orthographic view.

```csharp
public double Left { get; set; }
```

## Property value

`double`, in drawing file units. The drawing window uses only the `Right - Left` difference as the view width, centered on `Position`. Constructors that take a window assign its `Xmin` value to `Left`. The camera returned by `DigiNG.Camera` has `Left = -ancho / 2`, a value relative to `Position`. See [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/).
