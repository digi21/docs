# Bind2Shape
<!-- id: ejemplo-net-bind2shape -->

`Bind2Shape` es una **aplicación de consola** que convierte un archivo `.bind` a Shapefile. Las entidades del archivo tienen atributos en una base de datos Access, y el programa los lee con la tabla de códigos.

Código: [Bind2Shape en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/Bind2Shape).

## Compilar

El proyecto del repositorio usa .NET 8 y los paquetes `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble` y `Digi21.DigiNG.IO.Shp` 24.0.0, más `Digi21.Digi3D.App` 24.0.1. Para compilarlo contra Digi3D.AI para .NET 10, sigue los pasos de [Compilar un ejemplo para .NET 10](README.md#compilar-un-ejemplo-para-net-10). Las versiones están en un elemento `<Version>` dentro de cada `PackageReference`. El proyecto queda con:

```xml
<TargetFramework>net10.0</TargetFramework>
...
<PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.Io.BinDouble" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.Io.Shp" Version="26.0.0" />
```

Compila el proyecto desde la carpeta del repositorio:

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
| `<salida>` | Ruta de un archivo `.shp` dentro de la carpeta de salida. |

El archivo `Readme.md` del ejemplo indica que:

- el exportador de Shapefile de Digi3D.AI necesita como salida la ruta de un archivo `.shp`, aunque ese archivo puede no llegar a crearse si ninguna geometría va a esa capa;
- el programa guarda los shapefiles en la carpeta de esa ruta (`shapefiles` en el ejemplo anterior);
- el programa no crea la carpeta de salida, así que la carpeta tiene que existir.

El mensaje de uso del programa llama al cuarto argumento «carpeta de salida» y pone como ejemplo `shapefiles`, sin nombre de archivo. El `Readme.md` del ejemplo usa la forma `shapefiles\prueba.shp`.

La cadena de conexión usa el proveedor OLE DB `Microsoft.ACE.OLEDB.16.0`, que tiene que estar instalado en el equipo en su versión de 64 bits. El modelo de datos es `CATDBS`; los modelos de datos están descritos en la opción `--mdat` de [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md).

Por cada entidad que convierte, el programa escribe un signo más (`+`) en la consola. Si la conversión de una entidad produce una excepción, el programa escribe `Se localizó el siguiente error: <mensaje>` en la salida de error y continúa con la entidad siguiente.

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

El programa no comprueba la propiedad `Deleted`, así que también intenta convertir las entidades borradas.
