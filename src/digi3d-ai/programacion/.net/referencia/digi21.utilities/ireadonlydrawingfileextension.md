# IReadOnlyDrawingFileExtension
<!-- id: digi21.utilities.ireadonlydrawingfileextension -->

Espacio de nombres: `Digi21.Utilities`  
Ensamblado: [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)

Añade a [IReadOnlyDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/ireadonlydrawingfile/) el método `Contains`, que indica si una entidad pertenece al archivo de dibujo.

```csharp
public static class IReadOnlyDrawingFileExtension
```

## Métodos estáticos

### Contains

```csharp
public static bool Contains(this IReadOnlyDrawingFile file, Entity entity)
```

Devuelve `true` si `entity.Owner` es el objeto `file`. La comparación es de referencias: no se recorren las entidades del archivo.

| Parámetro | Descripción |
| :--- | :--- |
| `file` | Archivo de dibujo. |
| `entity` | Entidad. |

Lanza `NullReferenceException` si `entity` es `null`.

`Entity.Owner` es de tipo [IDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/interfaces/idrawingfile/). Por eso `Contains` devuelve siempre `false` con un archivo que solo implementa `IReadOnlyDrawingFile`, como los archivos de referencia de `DigiNG.ReferenceFiles`. También devuelve `false` con un [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md): el `Owner` de sus entidades es el archivo de dibujo que envuelve.

Dentro del espacio de nombres `Digi21.Utilities`, o con `using Digi21.Utilities;`, la llamada `archivo.Contains(entidad)` usa este método y no `Enumerable.Contains` de LINQ, que recorre el archivo y compara las entidades una a una.

## Ejemplo

Este programa lee un archivo `.bin` y comprueba que la primera entidad pertenece a ese archivo y no a otro:

```csharp
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;
using Digi21.Utilities;

if (args.Length != 2)
{
    Console.WriteLine("Uso: Pertenece <a.bin> <b.bin>");
    return 1;
}

using var a = new Bin(args[0], 2, new Point3D(0, 0, 0), true);
using var b = new Bin(args[1], 2, new Point3D(0, 0, 0), true);

var primera = a.FirstOrDefault();
if (primera is null)
{
    Console.WriteLine("El archivo está vacío.");
    return 1;
}

Console.WriteLine($"¿Pertenece a {a.Path}? {a.Contains(primera)}"); // True
Console.WriteLine($"¿Pertenece a {b.Path}? {b.Contains(primera)}"); // False
return 0;
```
