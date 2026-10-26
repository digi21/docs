# Coordinate
<!-- id: coordinate-4 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la coordenada de inserción del [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
public new Point3D Coordinate { get; set; }
```

## Valor de la propiedad

[Point3D](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/clases/point3d.md) con las coordenadas X, Y y Z del punto de inserción. La posición del texto respecto a este punto la indica [Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md). En un `Text` nuevo vale (0, 0, 0).

La asignación de `Coordinate` aplica al punto de inserción y a las cinco esquinas del contorno del texto el desplazamiento definido por la diferencia entre la coordenada nueva y la anterior, y recalcula las coordenadas mínimas y máximas de la entidad (`Xmin`, `Valid`…) con el punto de inserción y esas esquinas. Asignar `TextHeight`, `Rotation` o `Justification` no mueve las esquinas.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el texto es de solo lectura (`ReadOnly` es `true`). |
