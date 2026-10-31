# FieldOfView
<!-- id: fieldofview -->
<!-- origen: f98e9f242d24d69df076e304eaba9f76f2bad337 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Perspective's vertical viewing angle, in degrees.

```csharp
public double FieldOfView { get; set; }
```

## Property value

`double`. The drawing window passes `FieldOfView` to `gluPerspective` as the vertical angle; the horizontal angle follows from the drawing window's proportions. When reading the drawing window's camera with `DigiNG.Camera`, `FieldOfView` is not populated in the returned object and is 0 degrees. Set `FieldOfView` before assigning the camera back to the drawing window.
