# Rotation
<!-- id: rotation -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la rotación del [Point](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/point/), en radianes.

```csharp
public new double Rotation { get; set; }
```

## Valor de la propiedad

Ángulo en radianes. En un `Point` nuevo vale 0. El valor no se normaliza.

La entidad nativa guarda el ángulo en grados sexagesimales multiplicados por 100, en un `double`; la propiedad convierte de radianes a ese valor al asignar y al revés al leer.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el punto es de solo lectura (`ReadOnly` es `true`). |
