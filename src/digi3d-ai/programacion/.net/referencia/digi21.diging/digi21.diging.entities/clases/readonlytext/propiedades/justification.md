# Justification
<!-- id: justification -->

Espacio de nombres: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Devuelve la justificación del [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/): la posición del punto de inserción (`Coordinate`) respecto al texto.

```csharp
public TextJustification Justification { get; }
```

## Valor de la propiedad

Un valor de [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md). Si la entidad nativa guarda un valor de justificación que no corresponde a ninguno de los ocho primeros valores, la propiedad devuelve `Center`.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) oculta esta propiedad con una versión que también se puede asignar: [Text.Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md).
