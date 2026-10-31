# Weight
<!-- id: weight -->
<!-- origen: 858a4f6bb110a75bceeae88e3d74ff5252f2efb2 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity's own line weight. An entity without its own line weight is drawn using the line weight assigned to its code by the code table.

```csharp
public int? Weight { get; set; }
```

## Property value

The line weight, or `null` if the entity has none of its own. Assigning `null` removes the entity's own line weight.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | `get`: the entity has no minimum and maximum coordinates (`Valid` is `false`). `set`: the entity is read-only. |
