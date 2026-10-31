# IndexOf
<!-- id: digi21.diging.io.ireadonlydrawingfile.indexof -->
<!-- origen: c2eaf79d9acc9ac135f29170066f3654fba66418 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Returns an entity's position in the drawing file.

```csharp
int IndexOf(Entity entity);
```

| Parameter | Description |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) to find. |

## Return value

`int`: zero-based entity position among the file's entities. Deleted entities also count. Returns `-1` in these cases:

- The entity does not belong to any file (`Owner` is `null`).
- The entity belongs to another file (`Owner` is another object).
- The entity belongs to this file but is not among the entities the file has in memory.

## Exceptions

| Exception | When |
| :--- | :--- |
| `NullReferenceException` | `entity` is `null`. Implementations do not check whether the parameter is null. |
