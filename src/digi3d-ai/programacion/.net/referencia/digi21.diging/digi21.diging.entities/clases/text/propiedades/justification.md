# Justification
<!-- id: justification-2 -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve o asigna la justificación del [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/): la posición del punto de inserción (`Coordinate`) respecto al texto.

```csharp
public new TextJustification Justification { get; set; }
```

## Valor de la propiedad

Un valor de [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md). En un `Text` nuevo vale `SouthWest`.

Asignar un valor que no está definido en `TextJustification` no cambia la justificación.

## Excepciones

| Excepción | Cuándo |
| :--- | :--- |
| `InvalidOperationException` | Se asigna el valor y el texto es de solo lectura (`ReadOnly` es `true`). |
