# Txt
<!-- id: txt-2 -->
<!-- origen: a4a85913f09367eba4935634647ae22eea17bdf9 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)'s string.

```csharp
public new string Txt { get; set; }
```

## Property value

Text string. In a new `Text`, it is an empty string. The property never returns `null`.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the text is read-only (`ReadOnly` is `true`). |
