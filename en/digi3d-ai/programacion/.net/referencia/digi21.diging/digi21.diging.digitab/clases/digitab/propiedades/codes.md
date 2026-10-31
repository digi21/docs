# Codes
<!-- id: codes -->
<!-- origen: 4fba458f7dddf36b56ee45e6101c3ad25ad7cc4d -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Codes in the code table.

```csharp
public IEnumerable<NodeDigiTab> Codes { get; }
```

## Property value

`IEnumerable<NodeDigiTab>`. Each read creates a new array with one [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) per code, in table order. The `NodeDigiTab` objects are not copies: assigning a property of one changes the code in the table. In a nonmodifiable table, these assignments throw `InvalidOperationException`.

The array returned by `Codes` does not incorporate codes added with `AddCode` after reading `Codes`: read `Codes` again to obtain an array that includes them.
