# Bind2Shape
<!-- id: ejemplo-net-bind2shape -->

`Bind2Shape` es una **aplicación de consola** que convierte un archivo `.bind` a Shapefile. Las entidades del archivo tienen atributos en una base de datos Access, y el programa los lee con la tabla de códigos.

Código: [Bind2Shape en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/Bind2Shape).

## Compilar

El proyecto usa .NET 10 y los paquetes `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble` y `Digi21.DigiNG.IO.Shp` 26.0.0. Compila el proyecto desde la carpeta del repositorio:

```
dotnet build Bind2Shape\Bind2Shape.csproj -c Release -o C:\Herramientas\Bind2Shape
```

## Ejecutar

```
C:\Herramientas\Bind2Shape\Bind2Shape.exe tablacodigos.tab.xml basedatos.mdb archivo.bind shapefiles\prueba.shp
```

| Argumento | Descripción |
|---|---|
| `<tabla de códigos>` | Ruta del archivo de tabla de códigos. |
| `<base de datos.mdb>` | Ruta de la base de datos Access con los atributos. |
| `<archivo bin a traducir>` | Archivo `.bind` que se convierte. |
| `<archivo .shp de salida>` | Ruta de un archivo `.shp`. El programa crea los shapefiles en la carpeta de esa ruta (`shapefiles` en el ejemplo anterior). |

El mensaje de uso del programa y el archivo `Readme.md` del ejemplo describen igual el cuarto argumento:

- El exportador de Shapefile de Digi3D.AI crea un shapefile por capa en la carpeta del archivo `.shp` indicado. El archivo indicado puede no llegar a crearse si ninguna geometría va a esa capa.
- El exportador toma como carpeta la parte de la ruta anterior a la última barra invertida. Si el argumento es una carpeta sin nombre de archivo, por ejemplo `C:\salida\shapefiles`, los shapefiles se crean en `C:\salida`.
- El programa no crea la carpeta de salida, así que la carpeta tiene que existir.

La cadena de conexión usa el proveedor OLE DB `Microsoft.ACE.OLEDB.16.0`, que tiene que estar instalado en el equipo en su versión de 64 bits. El modelo de datos es `CATDBS`; los modelos de datos están descritos en la opción `--mdat` de [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md).

Por cada entidad que convierte, el programa escribe un signo más (`+`) en la consola. Si la conversión de una entidad produce una excepción, el programa escribe `Se localizó el siguiente error: <mensaje>` en la salida de error y continúa con la entidad siguiente. Un bloque `try` exterior, que el fragmento siguiente no muestra, escribe el mismo mensaje y termina el programa si falla la carga de la tabla de códigos, la apertura del archivo `.bind` con su base de datos o la creación del Shapefile.

## Cómo funciona

```csharp
var tabla = DigiTab.Load(args[0]);

var parámetrosbbdd = new DatabaseConnectionProperties
{
    ConnectionString =
        $"Provider=Microsoft.ACE.OLEDB.16.0;Data Source={args[1]};Persist Security Info=False",
    DataModel = "CATDBS"
};

// Entrada: archivo .bind con su base de datos. Salida: Shapefile con la misma tabla de códigos
// y el sistema de referencia (WKT) del archivo de entrada.
using var archivoEntrada = new BinDouble(args[2], parámetrosbbdd, tabla);
using var archivoSalida = new Shp(args[3], tabla, () => archivoEntrada.Wkt);

foreach (var entidad in archivoEntrada)
{
    // Shapefile no tiene marca de borrado: las entidades borradas no se exportan.
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
        // Un error en una entidad no detiene la conversión de las demás.
        Console.Error.WriteLine($"Se localizó el siguiente error: {excepción.Message}");
    }
}
```
