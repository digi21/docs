# Justification
<!-- id: justification -->
<!-- origen: e897b1dc61b4c05cf1d324c471df484bc1a3c915 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets the [ReadOnlyText](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/readonlytext/)'s justification: the insertion point (`Coordinate`)'s position relative to the text.

```csharp
public TextJustification Justification { get; }
```

## Property value

A [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md) value. If the native entity stores a justification value other than the first eight values, the property returns `Center`.

[Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/) hides this property with a version that can also be assigned: [Text.Justification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/propiedades/justification.md).
