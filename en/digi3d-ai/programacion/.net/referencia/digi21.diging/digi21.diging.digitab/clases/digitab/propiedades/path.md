# Path
<!-- id: path -->
<!-- origen: 3a15dd1d04707c8f03a9bbc13b8b864af98ab3e7 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Path of the file from which the code table was loaded.

```csharp
public string Path { get; }
```

## Property value

`string`. In a table loaded with [Load](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos-estaticos/load.md), this is the value of the `path` parameter. A table not loaded from a file returns an empty string. [Write](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/clases/digitab/metodos/write.md) does not change this property.
