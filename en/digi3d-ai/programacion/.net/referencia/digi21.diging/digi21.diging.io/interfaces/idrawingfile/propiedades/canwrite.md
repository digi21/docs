# CanWrite
<!-- id: canwrite -->
<!-- origen: 08ef65d7e7325fb61d8cdf3eda17757dcdcf7471 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether entities can be added and deleted in the drawing file.

```csharp
bool CanWrite { get; }
```

## Property value

`bool`: `false` if the file is opened read-only. In [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), `Add` and `Delete` throw `InvalidOperationException` when `CanWrite` is `false`. [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md) always returns `true`.

Check this property before calling [Add](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md) or [Delete](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) in a method taking an `IDrawingFile` of any format.
