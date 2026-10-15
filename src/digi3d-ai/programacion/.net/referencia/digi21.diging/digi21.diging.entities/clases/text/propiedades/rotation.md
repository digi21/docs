# Rotation
<!-- id: rotation-4 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la rotación del [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
public new double Rotation { get; set; }
```

## Valor de la propiedad

Ángulo en centésimas de grado sexagesimal: 9000 son 90°. En un `Text` nuevo vale 0.

La propiedad lee y asigna sin conversión el campo de la entidad nativa en el que los importadores de Digi3D.AI (DGN, DWG, Geomedia…) guardan el ángulo en grados sexagesimales multiplicados por 100. [Point.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md), en cambio, convierte ese valor a radianes. Para pasar de radianes a este valor, multiplica por `18000 / Math.PI`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el texto es de solo lectura (`ReadOnly` es `true`). |
