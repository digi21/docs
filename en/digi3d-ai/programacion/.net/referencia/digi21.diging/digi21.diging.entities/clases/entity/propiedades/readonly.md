# ReadOnly
<!-- id: readonly -->
<!-- origen: 529e7206eb4da375bb23a3945fe6cfc93f1a62ba -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the entity is read-only.

```csharp
public bool ReadOnly { get; }
```

## Property value

`true` if [Owner](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/owner.md) is not `null`, meaning the entity belongs to a drawing file.

In a read-only entity, the `set` accessors of `Color`, `Weight` and `FillColor`, methods modifying `Codes`, and members modifying geometry (`Points`, `Holes`, `Entities`, `Offset`, `Close`, `ChangeDirection`, `Coordinate`, `Rotation`…) throw `InvalidOperationException`. An entity of type `Line`, `Polygon` or another read/write type is also read-only if it belongs to a file.
