# Pitch
<!-- id: pitch -->
<!-- origen: c846e5e48d33f9d286b983fdfe9820e937154853 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Camera rotation around the X axis, in degrees.

```csharp
public float Pitch { get; set; }
```

## Property value

`float`. With `Pitch`, `Yaw` and `Roll` set to 0, the camera looks in the −Z direction. The drawing window applies `Pitch` before `Roll` and `Yaw`, so `Pitch` rotates the camera around its own horizontal axis: 90 tilts the viewing direction from −Z to the horizon. Read the rotation discussion in [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).
