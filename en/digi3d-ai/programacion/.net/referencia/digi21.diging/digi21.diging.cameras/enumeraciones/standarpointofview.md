# StandarPointOfView
<!-- id: standarpointofview -->
<!-- origen: 06b6efd56e2ca5a6eac291f3acbd0cca3a45a134 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Predefined camera orientations relative to the model.

```csharp
public enum StandarPointOfView
```

No public Digi3D.AI member takes or returns this type: a [Camera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/camera/)'s orientation is specified with `Pitch`, `Yaw` and `Roll`.

## Values

| Value | Number | Meaning |
| :--- | :--- | :--- |
| `Top` | 0 | Camera above the model, looking down. |
| `Bottom` | 1 | Camera below the model, looking up. |
| `Left` | 2 | Camera to the model's left, looking right. |
| `Right` | 3 | Camera to the model's right, looking left. |
| `Front` | 4 | Camera in front of the model, looking back. |
| `Back` | 5 | Camera behind the model, looking forward. |
| `SW` | 6 | Camera southwest of the model, looking toward its center. |
| `SE` | 7 | Camera southeast of the model, looking toward its center. |
| `NE` | 8 | Camera northeast of the model, looking toward its center. |
| `NW` | 9 | Camera northwest of the model, looking toward its center. |
| `Free` | 10 | Orientation other than those above. |
