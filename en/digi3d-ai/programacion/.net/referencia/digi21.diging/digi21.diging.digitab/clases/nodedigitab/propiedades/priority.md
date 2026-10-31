# Priority
<!-- id: priority -->
<!-- origen: d16017e93e3059f25f78d7f631db3382addbec18 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code priority.

```csharp
public int Priority { get; set; }
```

## Property value

`int` with the code's [priority](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md).

## Exceptions

If the object is read-only (nonmodifiable code table or code already added using `AddCode`), assignment throws `InvalidOperationException`.
