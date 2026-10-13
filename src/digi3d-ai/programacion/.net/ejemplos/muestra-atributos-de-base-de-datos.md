# MuestraAtributosBBDDGeometriasArchivoBinD
<!-- id: ejemplo-net-muestra-atributos-de-base-de-datos -->

`MuestraAtributosBBDDGeometriasArchivoBinD` es una **aplicación de consola** que muestra los atributos de base de datos de todas las entidades de un archivo `.bind`. Los atributos están en una base de datos Access enlazada con las entidades del archivo.

Código: [MuestraAtributosBBDDGeometriasArchivoBinD en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/MuestraAtributosBBDDGeometriasArchivoBinD).

## Compilar

El proyecto del repositorio usa .NET 8 y los paquetes `Digi21.DigiNG` y `Digi21.DigiNG.IO.BinDouble` 24.0.0, más `Digi21.Digi3D.App` 24.0.1. Para compilarlo contra Digi3D.AI para .NET 10, sigue los pasos de [Compilar un ejemplo para .NET 10](README.md#compilar-un-ejemplo-para-net-10). Las versiones están en un elemento `<Version>` dentro de cada `PackageReference`. El proyecto queda con:

```xml
<TargetFramework>net10.0</TargetFramework>
...
<PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.Io.BinDouble" Version="26.0.0" />
```

Compila el proyecto desde la carpeta del repositorio:

```
dotnet build MuestraAtributosBBDDGeometriasArchivoBinD\MuestraAtributosBBDDGeometriasArchivoBinD.csproj -c Release -o C:\Herramientas\MuestraAtributos
```

## Ejecutar

```
C:\Herramientas\MuestraAtributos\MuestraAtributosBBDDGeometriasArchivoBinD.exe prueba.Tab.xml prueba.mdb prueba.bind
```

| Argumento | Descripción |
|---|---|
| `<tabla de códigos>` | Ruta del archivo de tabla de códigos con el que se abre el archivo de dibujo. |
| `<base de datos.mdb>` | Ruta de la base de datos Access. |
| `<archivo bin a enumerar>` | Archivo `.bind` cuyas entidades se recorren. |

La cadena de conexión usa el proveedor OLE DB `Microsoft.ACE.OLEDB.16.0`, que tiene que estar instalado en el equipo en su versión de 64 bits. El modelo de datos es `CATDBS`; los modelos de datos están descritos en la opción `--mdat` de [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md).

Si faltan argumentos, el programa escribe en la salida de error el formato de uso. Si se produce una excepción, escribe `Se localizó el siguiente error:` y el mensaje de la excepción.

## Cómo funciona

```csharp
var tabla = DigiTab.Load(args[0]);

// Conexión con la base de datos Access y modelo de datos CATDBS.
var parámetrosbbdd = new DatabaseConnectionProperties
{
    ConnectionString = $"Provider=Microsoft.ACE.OLEDB.16.0;Data Source={args[1]};Persist Security Info=False",
    DataModel = "CATDBS"
};

using var archivoEntrada = new BinDouble(args[2], parámetrosbbdd, tabla);

foreach (var entidad in archivoEntrada)
{
    // Cada código de la entidad tiene sus propios atributos.
    foreach (var código in entidad.Codes)
    foreach (var clave in código.Attributes)
        Console.WriteLine($"{clave.Key}: {clave.Value}");

    Console.Write("-----------------");
}
```

- El programa escribe una línea `<campo>: <valor>` por cada atributo de cada código.
- El separador entre entidades se escribe con `Console.Write`, sin salto de línea, así que la primera línea de la entidad siguiente empieza a continuación de los guiones.
- El programa no comprueba la propiedad `Deleted`, así que también muestra los atributos de las entidades borradas.
- `new BinDouble(args[2], parámetrosbbdd, tabla)` abre el archivo en lectura y escritura. Si la ruta no existe, `BinDouble` crea un archivo `.bind` vacío.
