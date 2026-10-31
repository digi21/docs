# CanRead
<!-- id: canread -->
<!-- origen: df06a9c97a882501731b90ff5950aad6d11e4bf4 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indicates whether the drawing file format allows entities to be read.

```csharp
bool CanRead { get; }
```

## Property value

`bool`: `true` if the file's entities can be iterated with `foreach`. The value depends on the format, not on how the file was opened: a file opened read-only has `CanRead` set to `true` and `CanWrite` set to `false`.
