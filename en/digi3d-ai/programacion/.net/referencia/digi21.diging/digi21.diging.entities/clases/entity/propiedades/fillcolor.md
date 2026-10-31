# FillColor
<!-- id: fillcolor -->
<!-- origen: 9aa0daff98a49483b6e79fb6db0f480f8bd5c4d8 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity's own fill color. An entity without its own fill color uses the fill color assigned to the entity's code by the code table.

```csharp
public int? FillColor { get; set; }
```

## Property value

Index in the code table's [color palette](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/colores.md#color-palette), or `null` if the entity has no fill color of its own. Assigning `null` removes the entity's own fill color.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | `get`: the entity has no minimum and maximum coordinates (`Valid` is `false`). `set`: the entity is read-only. |
