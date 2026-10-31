# TextHeight
<!-- id: textheight-2 -->
<!-- origen: 8316753750a48959268c453ffb41e6d62d59e22e -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Gets or sets the [Text](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/text/)'s height.

```csharp
public new double TextHeight { get; set; }
```

## Property value

Text height. In a new `Text`, it is 0. Assignment does not check the value.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | A value is assigned and the text is read-only (`ReadOnly` is `true`). |
