# MuestraAtributosBBDDGeometriasArchivoBinD
<!-- id: ejemplo-net-muestra-atributos-de-base-de-datos -->
<!-- origen: 3606f5e90928a181d870e9640ab86e300764e4fd -->

`MuestraAtributosBBDDGeometriasArchivoBinD` is a **console application** that displays the database attributes of all entities in a `.bind` file. The attributes are in an Access database linked to the file's entities.

Code: [MuestraAtributosBBDDGeometriasArchivoBinD on GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/MuestraAtributosBBDDGeometriasArchivoBinD).

## Build

The project uses .NET 10 and the `Digi21.DigiNG` and `Digi21.DigiNG.IO.BinDouble` 26.0.0 packages. Build the project from the repository folder:

```
dotnet build MuestraAtributosBBDDGeometriasArchivoBinD\MuestraAtributosBBDDGeometriasArchivoBinD.csproj -c Release -o C:\Herramientas\MuestraAtributos
```

## Run

```
C:\Herramientas\MuestraAtributos\MuestraAtributosBBDDGeometriasArchivoBinD.exe prueba.Tab.xml prueba.mdb prueba.bind
```

| Argument | Description |
|---|---|
| `<tabla de códigos>` | Path of the code table file used to open the drawing file. |
| `<base de datos.mdb>` | Access database path. |
| `<archivo bin a enumerar>` | `.bind` file whose entities are iterated. |

The connection string uses the `Microsoft.ACE.OLEDB.16.0` OLE DB provider, whose 64-bit version must be installed on the computer. The data model is `CATDBS`; data models are described under the `--mdat` option of [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md).

If arguments are missing, the program writes usage information to standard error. If an exception occurs, it writes `Se localizó el siguiente error:` and the exception message.

## How it works

```csharp
var tabla = DigiTab.Load(args[0]);

// Connection to the Access database and CATDBS data model.
var parámetrosbbdd = new DatabaseConnectionProperties
{
    ConnectionString = $"Provider=Microsoft.ACE.OLEDB.16.0;Data Source={args[1]};Persist Security Info=False",
    DataModel = "CATDBS"
};

using var archivoEntrada = new BinDouble(args[2], parámetrosbbdd, tabla);

foreach (var entidad in archivoEntrada)
{
    // Deleted entities are not displayed.
    if (entidad.Deleted)
        continue;

    // Each entity code has its own attributes.
    foreach (var código in entidad.Codes)
    foreach (var clave in código.Attributes)
        Console.WriteLine($"{clave.Key}: {clave.Value}");

    Console.Write("-----------------");
}
```

- The program writes one `<campo>: <valor>` line for each attribute of each code.
- The separator between entities is written with `Console.Write`, without a newline, so the next entity's first line starts immediately after the hyphens.
- The program does not display attributes of entities with `Deleted` set to `true`.
- `new BinDouble(args[2], parámetrosbbdd, tabla)` opens the file for reading and writing. If the path does not exist, `BinDouble` creates an empty `.bind` file.
