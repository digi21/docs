# Rotation
<!-- id: rotation-4 -->
<!-- origen: 7c568303a5b67d1eaa793407207d123a9d0326a2 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)'s rotation.

```csharp
public new double Rotation { get; set; }
```

## Property value

Angle in degrees, counterclockwise from the X axis. In a new `Text`, it is 0. Uses the same unit as [Point.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md).

In earlier versions, this property was in hundredths of a degree. To convert a value in hundredths, divide it by 100.

Rotation is around the world Z axis and is applied after [Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/orientation.md), the text's orientation in space. Assigning `Rotation` does not change `Orientation`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the text is read-only (`ReadOnly` is `true`). |
