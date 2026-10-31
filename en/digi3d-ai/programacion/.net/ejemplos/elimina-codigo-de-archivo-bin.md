# EliminaCodigoDeArchivoBin
<!-- id: ejemplo-net-elimina-codigo-de-archivo-bin -->
<!-- origen: 305a48023dd37e8b5c5d1dd2129cd18635747eae -->

`EliminaCodigoDeArchivoBin` is a **console application** that copies entities from one `.bind` file to another, removing a specified code from each copy.

Code: [EliminaCodigoDeArchivoBin on GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/EliminaCodigoDeArchivoBin).

## Build

The project uses .NET 10 and the `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble` and `Digi21.DigiNG.Plugin` 26.0.0 packages. Build the project from the repository folder:

```
dotnet build EliminaCodigoDeArchivoBin\EliminaCodigoDeArchivoBin.csproj -c Release -o C:\Herramientas\EliminaCodigoDeArchivoBin
```

## Run

```
C:\Herramientas\EliminaCodigoDeArchivoBin\EliminaCodigoDeArchivoBin.exe digiBCA.Tab.xml 29091711.bind salida.bind 201
```

| Argument | Description |
|---|---|
| `<tabla de códigos>` | Code table path. The program does not use it, but the argument is required. |
| `<archivo de entrada>` | Input `.bind` file. |
| `<archivo de salida>` | `.bind` file to which copies are written. |
| `<código a eliminar>` | Name of the code to remove. The comparison is case-sensitive. |

If arguments are missing, the program writes usage information to standard error. For each entity written, it writes an asterisk (`*`) to the console. If an exception occurs, it writes `Se localizó el siguiente error:` and the exception message.

## How it works

```csharp
using var archivoEntrada = new BinDouble(args[1]);
// The second argument is readOnly: false opens the file for reading and writing.
using var archivoSalida = new BinDouble(args[2], false);
foreach (var entidad in archivoEntrada)
{
    // Deleted entities are not copied.
    if (entidad.Deleted)
        continue;

    var clonada = entidad.Clone();

    // Clear the copy's codes and add those from the original entity except the specified code.
    clonada.Codes.Clear();
    foreach (var código in entidad.Codes)
    {
        if (código.Name == args[3])
            continue;

        clonada.Codes.Add(código);
    }

    // The copy has no codes left: the removed code was its only code.
    if (clonada.Codes.Count == 0)
        continue;

    archivoSalida.Add(clonada);
    Console.Write("*");
}
```

- The program does not write entities whose only code was the one removed.
- The program does not copy entities with `Deleted` set to `true`.
- If the output file does not exist, `BinDouble` creates it. If it exists, entities are appended to those already present.
- When creating the output file, the program does not specify its reference system: it does not pass a delegate returning the input file's WKT, as [comprimir](comprimir.md) does.
