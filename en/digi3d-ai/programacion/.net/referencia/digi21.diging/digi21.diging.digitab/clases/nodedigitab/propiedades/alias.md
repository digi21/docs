# Alias
<!-- id: alias -->
<!-- origen: ae283940afdac6f0eee5ba9eb601dda819b689ed -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code aliases.

```csharp
public IEnumerable<string> Alias { get; set; }
```

## Property value

`IEnumerable<string>` with the code's [aliases](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md). `HasCode` and the [DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/) indexer also find the code by its aliases. Reading returns a new array: modifying it does not change the code. Assignment replaces all aliases with those in the enumeration.

## Exceptions

If the object is read-only (nonmodifiable code table or code already added using `AddCode`), assignment throws `InvalidOperationException`. If the assigned value is `null`, it throws `NullReferenceException`.
