# comprimir
<!-- id: ejemplo-net-comprimir -->
<!-- origen: 454a6b7299eb98ec7589b8d9b13dae50ea5c08d4 -->

`comprimir` is a **console application** that removes entities marked as deleted from a `.bind` file. The [COMPRESS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/comprimir.md) command removes the same entities from the active drawing file; the program works on a file specified at the command line without opening Digi3D.AI.

Code: [comprimir on GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/comprimir). The program's development is explained in the video [Developing a console application to compress .bind files](https://youtu.be/6YrmK-p0FEw).

## Build

The project uses .NET 10 and the `Digi21.DigiNG.IO.BinDouble` 26.0.0 package. Build the project from the repository folder:

```
dotnet build comprimir\comprimir.csproj -c Release -o C:\Herramientas\comprimir
```

## Run

```
C:\Herramientas\comprimir\comprimir.exe <archivo .bind>
```

| Argument | Description |
|---|---|
| `<archivo .bind>` | Path of the file to compress. The program replaces this file with the compressed file. |

The program writes `Comprimiendo archivo <ruta>...` when it starts copying entities and `Trabajo finalizado` when finished. If the argument is missing, it writes `Se esperaban parámetros: [archivo a comprimir]`. If the file does not exist, it writes `El archivo <ruta> no existe`. Both messages go to standard error.

## How it works

1. Creates a `.bind` file in the user's temporary folder, with the same reference system as the input file.
2. Copies entities that are not marked as deleted to that file.
3. Deletes the original file and moves the temporary file to the original path.

```csharp
// Path of a .bind file in the temporary folder.
var rutaTemporal = Path.Combine(Path.GetTempPath(), Path.ChangeExtension(Path.GetTempFileName(), "bind"));

using (var entrada = new BinDouble(args[0]))
{
    // The delegate returns the input file WKT: the output is created with the same reference system.
    using var salida = new BinDouble(rutaTemporal, () => entrada.Wkt);

    foreach (var geometría in entrada)
    {
        // Deleted entities remain in the file with Deleted set to true.
        if (geometría.Deleted)
            continue;

        salida.Add(geometría.Clone());
    }
}

// Both files are closed when leaving the using block.
File.Delete(args[0]);
File.Move(rutaTemporal, args[0]);
```

`Path.GetTempFileName` creates an empty file with the `.tmp` extension in the temporary folder. The program uses that name with the `.bind` extension and does not delete the `.tmp` file.

The program deletes the original file before moving the temporary file. If `File.Move` fails, the compressed file remains in the temporary folder.
