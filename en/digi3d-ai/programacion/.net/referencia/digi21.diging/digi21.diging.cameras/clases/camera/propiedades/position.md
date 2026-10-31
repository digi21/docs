# Position
<!-- id: position -->
<!-- origen: fb62e880605bd8e1a9ce473c3f45ebf46725d990 -->

Namespace: `Digi21.DigiNG.Cameras`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Camera position.

```csharp
public Point3D Position { get; set; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) in drawing file coordinates. In an [OrthographicCamera](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/clases/orthographiccamera/), `Position` is the center of the view. Constructors that take a window assign its center to `Position`; the other constructors leave `Position` at `(0, 0, 0)`.
