# Far
<!-- id: far -->
<!-- origen: 24a9d47db5c8b2c5bd16eb8ebd19763cbf823f21 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Far clipping plane.

```csharp
public double Far { get; set; }
```

## Property value

`double`. Its use depends on the camera type when applied to the drawing window:

- [ConicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/coniccamera/): distance from the camera to the perspective's far clipping plane.
- [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/): the drawing window uses only the `Far - Near` difference as the view depth. When reading the drawing window's camera, `Far` is half the view depth. Constructors that take a window assign that window's `Zmin` value to `Far`.
