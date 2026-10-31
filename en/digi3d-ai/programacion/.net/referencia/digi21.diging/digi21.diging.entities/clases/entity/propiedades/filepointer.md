# FilePointer
<!-- id: offset -->
<!-- origen: 593b3e726ce09410ee3088c714669edb805cddf4 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Entity identifier in the drawing file from which it was read or to which it was saved.

```csharp
public string FilePointer { get; }
```

## Property value

Identifier assigned by the file format's importer. The text content depends on the format.

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The entity has no drawing file data; for example, an entity created with a constructor that has not been added to a file. |
