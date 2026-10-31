# Near
<!-- id: near -->
<!-- origen: d6c9e3fc8d02f8c51a4e782545f5fb7625b4cc7e -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Near clipping plane.

```csharp
public double Near { get; set; }
```

## Property value

`double`. Its use depends on the camera type when applied to the drawing window:

- [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/): distance from the camera to the perspective's near clipping plane.
- [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/): the drawing window uses only the `Far - Near` difference as the view depth. When reading the drawing window's camera, `Near` is minus half the view depth. Constructors that take a window assign that window's `Zmax` value to `Near`.
