# EliminarTextosDeArchivoBinD
<!-- id: ejemplo-net-eliminar-textos-de-archivo-bind -->
<!-- origen: fe66cca2838c08d531d2c9ba1dcc4ae7f6e3193a -->

`EliminarTextosDeArchivoBinD` is a **console application** that copies one `.bind` file to another, excluding text entities with a specified code and content.

Code: [EliminarTextosDeArchivoBinD on GitHub](https://github.com/digi21/Examples-Programacion-Digi3D/tree/main/EliminarTextosDeArchivoBinD).

## Build

The project uses .NET 10 and the `Digi21.DigiNG.IO.BinDouble` 26.0.0 package. Build the project from the repository folder:

```
dotnet build EliminarTextosDeArchivoBinD\EliminarTextosDeArchivoBinD.csproj -c Release -o C:\Herramientas\EliminarTextosDeArchivoBinD
```

## Run

```
C:\Herramientas\EliminarTextosDeArchivoBinD\EliminarTextosDeArchivoBinD.exe a.bind _a.bind 010123 Hola 010123 Adiós 040101 "Sin nombre"
```

| Argument | Description |
|---|---|
| `<archivo original>` | Input `.bind` file. |
| `<archivo a crear>` | `.bind` file to which entities not removed are written. |
| `<código 1>` `<texto 1>` … `<código n>` `<texto n>` | Code and text pairs. The program does not copy text entities having the code and whose content matches the pair's text. A code may appear in several pairs. |

The program requires an even number of arguments, with a minimum of 4. If the argument count does not meet both conditions, the program writes usage information to standard error. Enclose text containing spaces in quotation marks, such as `"Sin nombre"` in the example above; without quotation marks, each word is a separate argument.

For each entity not marked as deleted, the program writes a minus sign (`-`) to the console if it removes it, or a plus sign (`+`) if it copies it.

## How it works

```csharp
var rutaArchivoOriginal = args[0];
var rutaArchivoCrear = args[1];

using var archivoEntrada = new BinDouble(rutaArchivoOriginal);
// The output is created with the original file's reference system (WKT).
using var archivoSalida = new BinDouble(rutaArchivoCrear, () => archivoEntrada.Wkt);

// For each code, the list of text strings to remove.
var diccionario = new Dictionary<string, List<string>>();
for (var i = 2; i < args.Length; i+=2)
{
    if(!diccionario.ContainsKey(args[i]))
        diccionario[args[i]] = new();

    diccionario[args[i]].Add(args[i + 1]);
}

foreach (var geometria in archivoEntrada)
{
    // Deleted entities are not copied.
    if (geometria.Deleted)
        continue;

    if (EliminarGeometria(geometria, diccionario))
    {
        Console.Write("-");
        continue;
    }

    archivoSalida.Add(geometria.Clone());
    Console.Write("+");
}
```

The `EliminarGeometria` function decides which entities to remove:

```csharp
bool EliminarGeometria(Entity geometria, Dictionary<string, List<string>> diccionario)
{
    // Only text entities are removed.
    if (geometria is not ReadOnlyText texto)
        return false;

    foreach (var codigo in diccionario)
    {
        // The text entity does not have this code: move to the next.
        if (texto.Codes.All(c => 0 != string.Compare(c.Name, codigo.Key, StringComparison.CurrentCultureIgnoreCase)))
            continue;

        // The content matches one of the text strings associated with the code.
        if (codigo.Value.Any(textoAEliminar => 0 == string.Compare(texto.Txt, textoAEliminar, StringComparison.CurrentCultureIgnoreCase)))
            return true;
    }

    return false;
}
```

- Code and text comparisons are case-insensitive.
- The entire text content must match the argument: the program does not search for the argument within the text.
- The program does not copy entities with `Deleted` set to `true`.
- If the file to create already exists, `BinDouble` opens it and the program appends entities to those already present.
- Both files are declared with `using var`: when the program ends, the output file closes first, followed by the original.
