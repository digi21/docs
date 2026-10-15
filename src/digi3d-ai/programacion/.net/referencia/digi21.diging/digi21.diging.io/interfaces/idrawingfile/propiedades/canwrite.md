# CanWrite
<!-- id: canwrite -->

Espacio de nombres: `Digi21.DigiNG.IO`  
Ensamblado: [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)

Indica si se pueden añadir y eliminar entidades en el archivo de dibujo.

```csharp
bool CanWrite { get; }
```

## Valor de la propiedad

`bool`: `false` si el archivo está abierto en solo lectura. En [Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/bin.md), `Add` y `Delete` lanzan `InvalidOperationException` cuando `CanWrite` vale `false`. [DrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/digi21.diging/clases/drawingfile.md) devuelve siempre `true`.

Comprueba esta propiedad antes de llamar a [Add](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/add.md) o [Delete](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/metodos/delete.md) en un método que recibe un `IDrawingFile` de cualquier formato.
