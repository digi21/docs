# Delete
<!-- id: delete -->
<!-- origen: 3d0b01451e90c173690b2690a2f40501df071d24 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Deletes entities from the drawing file.

## Overloads

| Method | Description |
| :--- | :--- |
| `Delete(Entity)` | Deletes one entity. |
| `Delete(IEnumerable<Entity>)` | Deletes multiple entities. |

Each implementation determines how the entity is deleted. [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), for example, marks it as deleted and writes it back: the entity remains in the file with `Deleted` set to `true`. See each class's page.

## Delete(Entity)

```csharp
void Delete(Entity entity);
```

| Parameter | Description |
| :--- | :--- |
| `entity` | [Entity](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/) to delete from the file. |

## Delete(IEnumerable&lt;Entity&gt;)

```csharp
void Delete(IEnumerable<Entity> entities);
```

| Parameter | Description |
| :--- | :--- |
| `entities` | File entities to delete. |

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `entity` is `null`. `Delete(IEnumerable<Entity>)` does not check whether `entities` is `null` in `Bin` or `DrawingFile`. |
| `InvalidOperationException` | The entity belongs to another file, or the file is opened read-only in implementations checking [CanWrite](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/propiedades/canwrite.md) (such as `Bin`). |
