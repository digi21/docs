# Rotation
<!-- id: rotation-4 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la rotación del [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/).

```csharp
public new double Rotation { get; set; }
```

## Valor de la propiedad

Ángulo en grados sexagesimales, en sentido antihorario desde el eje X. En un `Text` nuevo vale 0. Es la misma unidad que [Point.Rotation](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/propiedades/rotation.md).

En versiones anteriores esta propiedad estaba en centésimas de grado. Para convertir un valor en centésimas, divídelo por 100.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el texto es de solo lectura (`ReadOnly` es `true`). |
