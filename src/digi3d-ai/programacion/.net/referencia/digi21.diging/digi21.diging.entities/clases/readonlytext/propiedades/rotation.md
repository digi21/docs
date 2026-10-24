# Rotation
<!-- id: rotation-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve la rotación del [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/).

```csharp
public double Rotation { get; }
```

## Valor de la propiedad

Ángulo en grados sexagesimales, en sentido antihorario desde el eje X. Es la misma unidad que [ReadOnlyPoint.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/rotation.md). En versiones anteriores esta propiedad estaba en centésimas de grado.

El giro es alrededor del eje Z del mundo y se aplica después de [Orientation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/propiedades/orientation.md), la orientación del texto en el espacio. Si `Orientation` es `Quaternion.Identity`, el texto está en el plano XY y la rotación completa del texto es solo este giro.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) oculta esta propiedad con una versión que también se puede asignar: [Text.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md).
