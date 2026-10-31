# Rotation
<!-- id: rotation-3 -->
<!-- origen: 5a7f3642cff2a0e207fd1adba8b99b0249c21bdc -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets the [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/)'s rotation.

```csharp
public double Rotation { get; }
```

## Property value

Angle in degrees, counterclockwise from the X axis. Uses the same unit as [ReadOnlyPoint.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/rotation.md). In earlier versions, this property was in hundredths of a degree.

Rotation is around the world Z axis and is applied after [Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md), the text's orientation in space. If `Orientation` is `Quaternion.Identity`, the text lies in the XY plane, and its complete rotation is only this rotation.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) hides this property with a version that can also be assigned: [Text.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md).
