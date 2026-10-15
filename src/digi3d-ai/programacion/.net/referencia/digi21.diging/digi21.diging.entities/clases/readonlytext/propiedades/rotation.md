# Rotation
<!-- id: rotation-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve la rotación del [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/).

```csharp
public double Rotation { get; }
```

## Valor de la propiedad

Ángulo en centésimas de grado sexagesimal: 9000 son 90°. La propiedad devuelve sin conversión el campo de la entidad nativa en el que los importadores de Digi3D.AI guardan el ángulo en grados sexagesimales multiplicados por 100. [ReadOnlyPoint.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlypoint/propiedades/rotation.md), en cambio, devuelve radianes. Para pasar este valor a radianes, multiplica por `Math.PI / 18000`.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) oculta esta propiedad con una versión que también se puede asignar: [Text.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/rotation.md).
