# VisiblePhotogrammetricWindow
<!-- id: visiblephotogrammetricwindow -->
<!-- origen: df21371f579bddf0d920db5bb1203322b1d73186 -->

Namespace: [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/)  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Bitmask of entity types displayed with this code in the photogrammetric window.

```csharp
public uint VisiblePhotogrammetricWindow { get; set; }
```

## Property value

Bits have the same meaning as in [Visible](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/clases/code/propiedades/visible.md). Constructors assign `0xFFFFFFFF`, except `Code(string, int?, int?)`, which assigns `1`.

`Code` is a structure: assigning the property on an element of `Entity.Codes` modifies a copy. Then assign the copy to `Entity.Codes[i]`.
