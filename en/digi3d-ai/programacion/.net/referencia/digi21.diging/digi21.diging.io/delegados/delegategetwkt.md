# DelegateGetWkt
<!-- id: delegategetwkt -->
<!-- origen: 6e2c7d310d9eb084b2a3f179179ab47e2d1af010 -->

Namespace: `Digi21.DigiNG.IO`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Parameterless function returning the WKT (*Well-Known Text*, the text defining a [coordinate reference system](/digi3d-ai/sistemas-referencia-coordenadas/)) assigned to a drawing file when it has no coordinate reference system.

```csharp
public delegate string DelegateGetWkt();
```

Drawing file constructors receive this delegate in the `GetWkt` parameter and call it only if the file has no coordinate reference system. Each format determines when:

| Class | When it calls the delegate |
| :--- | :--- |
| [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md) | If the `.prj` file does not exist. |
| [BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/bindouble.md) | If the `.bind` file does not exist. |
| [Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/shp.md) | If the folder has no layers. |
| [Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/geomedia.md) | `Geomedia` does not call `DelegateGetWkt`: the coordinate reference system is obtained from the file. |

A lambda expression returning a `string` converts to this delegate, for example `() => entrada.Wkt`.

## Example

The [IReadOnlyDrawingFile example](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/#example) creates a `.bin` file with another file's coordinate reference system using a `DelegateGetWkt`.
