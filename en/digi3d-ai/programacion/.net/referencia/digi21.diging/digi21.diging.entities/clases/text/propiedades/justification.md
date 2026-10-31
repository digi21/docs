# Justification
<!-- id: justification-2 -->
<!-- origen: 067977fc05841ac7dd49aa4320cc59b89f28a163 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)'s justification: the insertion point (`Coordinate`)'s position relative to the text.

```csharp
public new TextJustification Justification { get; set; }
```

## Property value

A [TextJustification](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/enumeraciones/textjustification.md) value. In a new `Text`, it is `SouthWest`.

Assigning a value not defined in `TextJustification` does not change the justification.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the text is read-only (`ReadOnly` is `true`). |
