# Write
<!-- id: write -->
<!-- origen: 08134ffeed6e9708617c2b4acc25e2802e88bac8 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Saves the code table to a file.

```csharp
public void Write(string path)
```

## Parameters

| Parameter | Description |
| :--- | :--- |
| `path` | Path of the file to write. |

The format is selected by the extension of `path`, case-insensitively:

- `.xml` extension: code table XML file.
- Any other extension: ZIP file with the `Digi.tab.xml` entry and, in the `Symbols` folder, the `.bin` files from the symbols folder configured in Digi3D.AI. If the ZIP file already exists, these entries are added or replaced.

## Notes

`Write` does not change the [Path](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/propiedades/path.md) property.

## Exceptions

| Exception | When |
| :--- | :--- |
| `ArgumentNullException` | `path` is `null`. |
| `InvalidOperationException` | The code table is encrypted. Nothing is written. |
| `IOException` | Native code could not write the code table. The message includes `path`. |
| `Exception` | Native code threw its own error while writing; the message is that error's message. |
| `Exception` | A file writing error reported by native code through an exception. The message describes the error. |

Exception messages are in the Digi3D.AI interface language.

## Example

The complete example is in [NodeDigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/nodedigitab/).
