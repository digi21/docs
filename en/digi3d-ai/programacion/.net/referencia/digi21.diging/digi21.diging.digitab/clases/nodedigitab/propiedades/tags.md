# Tags
<!-- id: tags -->
<!-- origen: dc71ffe3af1ee104c18c59f71ee39eb7e162c55c -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code tags.

```csharp
public IEnumerable<string> Tags { get; set; }
```

## Property value

`IEnumerable<string>` with the code's [tags](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md). Reading returns a new array: modifying it does not change the code. Assignment replaces all tags with those in the enumeration.

## Exceptions

If the object is read-only (nonmodifiable code table or code already added using `AddCode`), assignment throws `InvalidOperationException`. If the assigned value is `null`, it throws `NullReferenceException`.
