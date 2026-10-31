# Coordinate
<!-- id: coordinate -->
<!-- origen: aa928430ae4e914e9193d36ca3ba874ffda11139 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)'s insertion coordinate.

```csharp
public new Point3D Coordinate { get; set; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) with the insertion X, Y and Z coordinates. In a new `Point`, it is (0, 0, 0).

Assignment recalculates the entity's minimum and maximum coordinates (`Xmin`, `Valid`…): both corners equal the assigned coordinate.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the point is read-only (`ReadOnly` is `true`). |
