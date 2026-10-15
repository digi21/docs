# Type
<!-- id: type -->

Espacio de nombres: `Digi21.DigiNG.DigiTab`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

[Tipo de geometría](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) del código.

```csharp
public GeometryType Type { get; set; }
```

## Valor de la propiedad

[GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md): `Point`, `Line` o `Virtual`. Un código creado con el constructor es `Line`.

Los números de `GeometryType` del paquete NuGet no coinciden con los del ensamblado instalado. Compara el valor con `Type.ToString()` y asígnalo con `Enum.Parse<GeometryType>("Point")`; lee [GeometryType](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/enumeraciones/geometrytype.md).

## Excepciones

Si el objeto es de solo lectura (tabla de códigos no modificable o código ya añadido con `AddCode`), la asignación lanza `InvalidOperationException`.
