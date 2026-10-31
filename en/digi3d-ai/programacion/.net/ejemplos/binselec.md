# Binselec
<!-- id: ejemplo-net-binselec -->
<!-- origen: ee4df8dfb65ba016b43b505e11ddd740f6aa9915 -->

`Binselec` is a **console application** that reads all `.bind` files in the current folder and copies entities with any of the specified codes to a new file.

Code: [Binselec on GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/Binselec). The C# programming course's [Binselec](../curso-de-programacion-en-c/binselec.md) lesson has a video about a program with the same name.

## Build

The project uses .NET 10 (`net10.0`) and the `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble`, `Digi21.DigiNG.Plugin` and `Digi21.Utilities` 26.0.0 packages. Build the project from the repository folder:

```
dotnet build Binselec\Binselec.csproj -c Release -o C:\Herramientas\Binselec
```

## Run

Run the program from the folder containing the `.bind` files:

```
cd C:\Trabajos\Hoja1
C:\Herramientas\Binselec\Binselec.exe curvado.bind 020400 020200
```

| Argument | Description |
|---|---|
| `<archivo .bind a generar>` | Output file path. |
| `<código 1>` `[<código 2> ...]` | Codes of the entities to copy. At least one is required. |

If arguments are missing, the program writes usage information to standard error. The message calls the program `ExtraerEntidadesDeArchivos`.

For each input file, the program writes `Analizando el archivo: <nombre>`.

## How it works

```csharp
var di = new DirectoryInfo(Directory.GetCurrentDirectory());
var archivos = di.GetFiles("*.bind");

using var archivoSalida = new BinDouble(args[0]);
foreach (var archivo in archivos)
{
    using var archivoEntrada = new BinDouble(archivo.Name);
    Console.WriteLine($"Analizando el archivo: {archivo.Name}");

    // Discard deleted entities. TieneAlgúnCódigo is an extension method from Digi21.Utilities.
    var entidades = from entidad in archivoEntrada
        where !entidad.Deleted && entidad.TieneAlgúnCódigo(args.Skip(1))
        select entidad;

    foreach (var entidad in entidades)
        archivoSalida.Add(entidad.Clone());
}
```

- `TieneAlgúnCódigo` compares each entity code's name with the arguments, character by character. It does not support wildcards. `Digi21.Utilities` also has the `TieneAlgúnCódigoConComodín` method, which does support them.
- The program does not copy entities with `Deleted` set to `true`.
- `new BinDouble(args[0])` opens the output file for reading and writing. If the file does not exist, it creates it. If it exists, entities are appended to those already present.
- The program obtains the list of `.bind` files before opening the output file. If the output file already existed in the current folder, it also appears in the input file list. Specify an output file that does not exist.
- When creating the output file, the program does not specify its reference system: it does not pass a delegate returning the WKT, as [comprimir](comprimir.md) does.
