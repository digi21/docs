# FillColor
<!-- id: fillcolor -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Color de relleno propio de la entidad. Una entidad sin color de relleno propio usa el color de relleno que la tabla de códigos asigna al código de la entidad.

```csharp
public int? FillColor { get; set; }
```

## Valor de la propiedad

Índice de la [paleta de colores](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/colores.md#paleta-de-colores) de la tabla de códigos, o `null` si la entidad no tiene color de relleno propio. Asignar `null` quita el color de relleno propio.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | `get`: la entidad no tiene coordenadas mínimas y máximas (`Valid` es `false`). `set`: la entidad es de solo lectura. |
