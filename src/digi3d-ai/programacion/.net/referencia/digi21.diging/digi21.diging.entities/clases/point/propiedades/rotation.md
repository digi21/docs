# Rotation
<!-- id: rotation -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la rotación del [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), en grados.

```csharp
public new double Rotation { get; set; }
```

## Valor de la propiedad

Ángulo en grados sexagesimales, en sentido antihorario desde el eje X. En un `Point` nuevo vale 0. El valor no se normaliza.

En versiones anteriores esta propiedad estaba en radianes. Para convertir un valor en radianes, multiplícalo por `180 / Math.PI`.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el punto es de solo lectura (`ReadOnly` es `true`). |
