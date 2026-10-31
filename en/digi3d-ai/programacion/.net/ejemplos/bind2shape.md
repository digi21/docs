# Bind2Shape
<!-- id: ejemplo-net-bind2shape -->
<!-- origen: 5dba70a07bbc4bf67164a6eb4b62e9d8c833a5f5 -->

`Bind2Shape` is a **console application** that converts a `.bind` file to Shapefile. The file's entities have attributes in an Access database, and the program reads them using the code table.

Code: [Bind2Shape on GitHub](https://github.com/digi21/Examples-Programacion-Digi3D/tree/main/Bind2Shape).

## Build

The project uses .NET 10 and the `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble` and `Digi21.DigiNG.IO.Shp` 26.0.0 packages. Build the project from the repository folder:

```
dotnet build Bind2Shape\Bind2Shape.csproj -c Release -o C:\Herramientas\Bind2Shape
```

## Run

```
C:\Herramientas\Bind2Shape\Bind2Shape.exe tablacodigos.tab.xml basedatos.mdb archivo.bind shapefiles\prueba.shp
```

| Argument | Description |
|---|---|
| `<tabla de códigos>` | Code table file path. |
| `<base de datos.mdb>` | Path of the Access database containing the attributes. |
| `<archivo bin a traducir>` | `.bind` file to convert. |
| `<archivo .shp de salida>` | Path of a `.shp` file. The program creates shapefiles in that path's folder (`shapefiles` in the example above). |

The program's usage message and the example's `Readme.md` file describe the fourth argument in the same way:

- The Digi3D.AI Shapefile exporter creates one shapefile per layer in the folder of the specified `.shp` file. The specified file may never be created if no geometry goes to that layer.
- The exporter uses the portion of the path before the last backslash as the folder. If the argument is a folder without a filename, such as `C:\salida\shapefiles`, shapefiles are created in `C:\salida`.
- The program does not create the output folder, so it must already exist.

The connection string uses the `Microsoft.ACE.OLEDB.16.0` OLE DB provider, whose 64-bit version must be installed on the computer. The data model is `CATDBS`; data models are described under the `--mdat` option of [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md).

For each entity converted, the program writes a plus sign (`+`) to the console. If converting an entity throws an exception, it writes `Se localizó el siguiente error: <mensaje>` to standard error and continues with the next entity. An outer `try` block, not shown in the following excerpt, writes the same message and ends the program if loading the code table, opening the `.bind` file with its database, or creating the Shapefile fails.

## How it works

```csharp
var tabla = DigiTab.Load(args[0]);

var parámetrosbbdd = new DatabaseConnectionProperties
{
    ConnectionString =
        $"Provider=Microsoft.ACE.OLEDB.16.0;Data Source={args[1]};Persist Security Info=False",
    DataModel = "CATDBS"
};

// Input: .bind file with its database. Output: Shapefile with the same code table
// and the input file's reference system (WKT).
using var archivoEntrada = new BinDouble(args[2], parámetrosbbdd, tabla);
using var archivoSalida = new Shp(args[3], tabla, () => archivoEntrada.Wkt);

foreach (var entidad in archivoEntrada)
{
    // Shapefile has no deletion flag: deleted entities are not exported.
    if (entidad.Deleted)
        continue;

    try
    {
        var clonada = entidad.Clone();
        archivoSalida.Add(clonada);
        Console.Write("+");
    }
    catch (Exception excepción)
    {
        // An error in one entity does not stop conversion of the others.
        Console.Error.WriteLine($"Se localizó el siguiente error: {excepción.Message}");
    }
}
```
