# Type
<!-- id: type -->
<!-- origen: 34a15387ef174e000a2de8ebc4f16d2b00edc517 -->

Namespace: `Digi21.DigiNG.DigiTab`  
Assembly: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Code's [geometry type](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md).

```csharp
public GeometryType Type { get; set; }
```

## Property value

[GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md): `Point`, `Line` or `Virtual`. A code created with the constructor is `Line`.

The `GeometryType` numbers in the NuGet package differ from those in the installed assembly. Compare the value using `Type.ToString()` and assign it using `Enum.Parse<GeometryType>("Point")`; read [GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md).

## Exceptions

If the object is read-only (nonmodifiable code table or code already added using `AddCode`), assignment throws `InvalidOperationException`.
