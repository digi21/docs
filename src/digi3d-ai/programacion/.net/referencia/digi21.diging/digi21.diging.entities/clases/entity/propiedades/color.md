# Color
<!-- id: color-3 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Color propio de la entidad. Una entidad sin color propio se dibuja con el color que la tabla de códigos asigna a su código.

```csharp
public int? Color { get; set; }
```

## Valor de la propiedad

Índice de la [paleta de colores](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/colores.md#paleta-de-colores) de la tabla de códigos, o `null` si la entidad no tiene color propio. Asignar `null` quita el color propio.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | `get`: la entidad no tiene coordenadas mínimas y máximas (`Valid` es `false`). `set`: la entidad es de solo lectura. |
