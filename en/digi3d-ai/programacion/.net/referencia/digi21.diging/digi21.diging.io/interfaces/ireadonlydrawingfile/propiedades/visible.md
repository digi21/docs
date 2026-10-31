# Visible
<!-- id: visible-3 -->
<!-- origen: e8e4f440b73d44289bd8dcae44c713ae6cd02b7a -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Drawing file visibility in the Digi3D.AI drawing window.

```csharp
bool Visible { get; set; }
```

## Property value

`bool`: `true` if the drawing window shows the file's entities. The property does not affect reading or writing entities.

This is the interface's only property with a `set` accessor. Behavior depends on the implementation:

| Class | Behavior |
| :--- | :--- |
| [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md), [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md), [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) | Store the value in the object and return it from `get`. Do not throw exceptions. |
| [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md) | Shows or hides the file loaded in the drawing window. `get` and `set` throw `MissingMethodException` if the file format does not allow it to be hidden. |
