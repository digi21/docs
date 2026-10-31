# ListarArchivosReferenciaEnBinD
<!-- id: ejemplo-net-listar-archivos-de-referencia -->
<!-- origen: b253da126301695e79d346dffb945bdb71d7dca8 -->

`ListarArchivosReferenciaEnBinD` is a **console application** that lists a `.bind` file's reference files in the console, one per line.

Code: [ListarArchivosReferenciaEnBinD on GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/ListarArchivosReferenciaEnBinD). The C# programming course's [Reference files](../curso-de-programacion-en-c/archivos-de-referencia.md) lesson has a video about reference files.

## Build

The project uses .NET 10 and the `Digi21.DigiNG.IO.BinDouble` 26.0.0 package. Build the project from the repository folder:

```
dotnet build ListarArchivosReferenciaEnBinD\ListarArchivosReferenciaEnBinD.csproj -c Release -o C:\Herramientas\ListarArchivosReferenciaEnBinD
```

## Run

```
C:\Herramientas\ListarArchivosReferenciaEnBinD\ListarArchivosReferenciaEnBinD.exe digiBCA.Tab.xml 29091711.bind
```

| Argument | Description |
|---|---|
| `<tabla de códigos>` | Path of the code table file used to open the drawing file. |
| `<archivo bind>` | `.bind` file whose reference files are listed. |

If arguments are missing, the program writes usage information and the example line `ListarArchivosReferenciaEnBinD.exe digiBCA.Tab.xml 29091711.bind` to standard error.

## How it works

```csharp
// Load the code table and use it to open the drawing file.
var tabla = DigiTab.Load(args[0]);

using var bin = new BinDouble(args[1], tabla);

// ReferenceFiles returns the path of each reference file.
foreach (var reference in bin.ReferenceFiles)
{
    Console.WriteLine(reference);
}
```

`new BinDouble(args[1], tabla)` opens the file for reading and writing. If the path does not exist, `BinDouble` creates an empty `.bind` file, and the program displays nothing. To open the file read-only, pass `true` as the third argument: `new BinDouble(args[1], tabla, true)`.

`ReferenceFiles` returns the reference file paths stored inside the `.bind` file, except those marked as deleted. The first read of `ReferenceFiles` iterates through all entities in the file to find these paths. Digi3D.AI also stores a `.reference_files.json` file alongside each drawing file (see [Reference files file](/digi3d-ai/referencia/archivos/archivo-de-archivos-de-referencia.md)); the program does not read that file.
