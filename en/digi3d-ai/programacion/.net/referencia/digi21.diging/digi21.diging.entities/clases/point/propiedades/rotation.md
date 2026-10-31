# Rotation
<!-- id: rotation -->
<!-- origen: 8f2650aa772206b9a8e40473d44dd1e070207ae0 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/)'s rotation, in degrees.

```csharp
public new double Rotation { get; set; }
```

## Property value

Angle in degrees, counterclockwise from the X axis. In a new `Point`, it is 0. The value is not normalized.

In earlier versions, this property was in radians. To convert a value in radians, multiply it by `180 / Math.PI`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the point is read-only (`ReadOnly` is `true`). |
