# Coordinate
<!-- id: coordinate-4 -->
<!-- origen: b9af6dc07c42c17aeb8088ee72350af0e4a804e2 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)'s insertion coordinate.

```csharp
public new Point3D Coordinate { get; set; }
```

## Property value

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) with the insertion point's X, Y and Z coordinates. [Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md) specifies the text's position relative to this point. In a new `Text`, it is (0, 0, 0).

Assigning `Coordinate` applies the offset defined by the difference between the new and previous coordinates to the insertion point and the text outline's five corners, then recalculates the entity's minimum and maximum coordinates (`Xmin`, `Valid`…) using the insertion point and these corners. Assigning `TextHeight`, `Rotation` or `Justification` does not move the corners.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the text is read-only (`ReadOnly` is `true`). |
