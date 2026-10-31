# Deleted
<!-- id: deleted -->
<!-- origen: 335b534430dd7b311a0f4b4ba70acb5d6e260f06 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the entity is marked as deleted.

```csharp
public bool Deleted { get; }
```

## Property value

`true` if the entity is marked as deleted.

[IDrawingFile.Delete](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) marks the entity as deleted, but it remains in the drawing file and drawing files return it when iterating through their entities. To remove deleted entities, a new file is created without them; this is what the Digi3D.AI [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) command does.

`Clone()` copies `Deleted`.
