# Owner
<!-- id: owner -->
<!-- origen: 6a49405886d43f68b6d83b89d0586ee52c9ea2d6 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Drawing file to which the entity belongs.

```csharp
public IDrawingFile Owner { get; }
```

## Property value

The [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/) from which the entity was read or to which it was added, or `null` if the entity belongs to no file: an entity created with a constructor that has not yet been added to a file, or a copy made with `Clone()`.

While `Owner` is not `null`, the entity is read-only ([ReadOnly](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/entity/propiedades/readonly.md)). A drawing file does not accept entities belonging to another file: add the copy returned by `Clone()`.
