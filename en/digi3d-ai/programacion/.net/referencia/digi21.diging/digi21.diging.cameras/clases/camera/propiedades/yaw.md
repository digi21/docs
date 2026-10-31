# Yaw
<!-- id: yaw -->
<!-- origen: 95be3d98647a8884328448e9465db329352923f1 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Camera rotation around the drawing file's Z axis, in degrees.

```csharp
public float Yaw { get; set; }
```

## Property value

`float`. The drawing window applies `Yaw` after `Pitch` and `Roll`, around the drawing file's Z axis. In a top view (`Pitch` and `Roll` set to 0), `Yaw` rotates the view in the X, Y plane. Read the rotation discussion in [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/).
