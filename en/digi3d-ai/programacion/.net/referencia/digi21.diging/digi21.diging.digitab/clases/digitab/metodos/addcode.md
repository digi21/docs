# AddCode
<!-- id: addcode -->
<!-- origen: 09b38f52e2da49eb81a234190d18d08e8f005c16 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Adds a code to the code table.

```csharp
public void AddCode(NodeDigiTab code)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `code` | [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) created using its constructor. |

## Notes

`AddCode` assigns the code the code table's first style and its import and export format translation parameters, appends the code and reorders the table.

After the call, `code` is read-only: assigning one of its properties throws `InvalidOperationException`. To modify the added code, retrieve it again using the [this[string]](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/item-string.md) indexer or [Codes](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/codes.md).

`AddCode` does not check whether the table already has a code with that name. To avoid duplicating the code, check whether the name exists using [HasCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/hascode.md) before adding it.

The code is added to the table in memory. To save the table, call [Write](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md).

## Exceptions

| Exception | When |
| :--- | :--- |
| `InvalidOperationException` | The code table is not modifiable, for example the one returned by `DigiNG.DigiTab`. |
| `ArgumentException` | `code` has already been added to a code table using `AddCode`. |
| `NullReferenceException` | `code` is `null`. |

`AddCode` does not throw `ArgumentException` for a `NodeDigiTab` obtained from `Codes` or the indexer of another modifiable table: that code becomes part of both tables at once. To copy a code from one table to another, create a new `NodeDigiTab` and copy its properties.

## Example

The complete example is in [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/).
