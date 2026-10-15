# Coordinate
<!-- id: coordinate -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la coordenada de inserción del [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/).

```csharp
public new Point3D Coordinate { get; set; }
```

## Valor de la propiedad

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) con las coordenadas X, Y y Z de inserción. En un `Point` nuevo vale (0, 0, 0).

La asignación no recalcula las coordenadas mínimas y máximas de la entidad (`Xmin`, `Valid`…).

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el punto es de solo lectura (`ReadOnly` es `true`). |
