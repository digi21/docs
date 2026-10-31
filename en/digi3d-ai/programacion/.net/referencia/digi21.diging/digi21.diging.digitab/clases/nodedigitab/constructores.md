# Constructors
<!-- id: constructores-3 -->
<!-- origen: 84880fde17fcb675ad05ed91ee17a3a4e10e22ed -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Creates a [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/) that does not belong to any code table.

```csharp
public NodeDigiTab(string name)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `name` | Code name, up to 255 characters. |

## Initial values

| Property | Value |
| :--- | :--- |
| `Name` | `name`. |
| `Type` | `GeometryType.Line`. |
| `Description`, `Table` | Empty string. |
| `Tags`, `Alias`, `Values` | Empty. |
| `Priority` | 0. |
| `Color`, `ColorPhotogrammetric` | `"0"`: color 0 in the code table palette. |

The object is modifiable until passed to [AddCode](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/addcode.md).

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `name` is `null`. |
| `ArgumentException` | `name` exceeds 255 characters. |

## Example

The example is in [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/).
