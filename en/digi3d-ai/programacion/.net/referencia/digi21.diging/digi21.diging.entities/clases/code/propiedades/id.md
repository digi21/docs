# Id
<!-- id: id -->
<!-- origen: 64ead88cd24fef3b8d32f31ad1ec5909e6de3b18 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Identifier of the database record linked to the code: the record's primary key value in [Table](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/table.md).

```csharp
public int? Id { get; }
```

## Property value

The identifier, or `null` if the code has no assigned record. In a code read from a drawing file, it is also `null` if the record identifier is a GUID.

The value is assigned in the constructor and cannot be changed.
