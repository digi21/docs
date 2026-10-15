# Weight
<!-- id: weight -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Grosor propio de la entidad. Una entidad sin grosor propio se dibuja con el grosor que la tabla de códigos asigna a su código.

```csharp
public int? Weight { get; set; }
```

## Valor de la propiedad

El grosor, o `null` si la entidad no tiene grosor propio. Asignar `null` quita el grosor propio.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | `get`: la entidad no tiene coordenadas mínimas y máximas (`Valid` es `false`). `set`: la entidad es de solo lectura. |
