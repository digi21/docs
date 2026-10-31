# Color
<!-- id: color-3 -->
<!-- origen: 5ffb40bc4da53ba4d8dc9dea548c6b51bd92a8a6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity's own color. An entity without its own color is drawn using the color assigned to its code by the code table.

```csharp
public int? Color { get; set; }
```

## Property value

Index in the code table's [color palette](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/colores.md#color-palette), or `null` if the entity has no color of its own. Assigning `null` removes the entity's own color.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | `get`: the entity has no minimum and maximum coordinates (`Valid` is `false`). `set`: the entity is read-only. |
