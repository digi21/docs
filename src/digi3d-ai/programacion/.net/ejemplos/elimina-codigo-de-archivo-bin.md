# EliminaCodigoDeArchivoBin
<!-- id: ejemplo-net-elimina-codigo-de-archivo-bin -->

`EliminaCodigoDeArchivoBin` es una **aplicación de consola** que copia las entidades de un archivo `.bind` a otro archivo y quita a cada copia un código indicado.

Código: [EliminaCodigoDeArchivoBin en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/EliminaCodigoDeArchivoBin).

## Compilar

El proyecto del repositorio usa .NET 8 y los paquetes `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble` y `Digi21.DigiNG.Plugin` 24.0.0, más `Digi21.Digi3D.App` 24.0.1. Para compilarlo contra Digi3D.AI para .NET 10, sigue los pasos de [Compilar un ejemplo para .NET 10](README.md#compilar-un-ejemplo-para-net-10). Las versiones están en un elemento `<Version>` dentro de cada `PackageReference`. El proyecto queda con:

```xml
<TargetFramework>net10.0</TargetFramework>
...
<PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.Io.BinDouble" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.Plugin" Version="26.0.0" />
```

Compila el proyecto desde la carpeta del repositorio:

```
dotnet build EliminaCodigoDeArchivoBin\EliminaCodigoDeArchivoBin.csproj -c Release -o C:\Herramientas\EliminaCodigoDeArchivoBin
```

## Ejecutar

```
C:\Herramientas\EliminaCodigoDeArchivoBin\EliminaCodigoDeArchivoBin.exe digiBCA.Tab.xml 29091711.bind salida.bind 201
```

| Argumento | Descripción |
|---|---|
| `<tabla de códigos>` | Ruta de una tabla de códigos. El programa no la usa, pero el argumento es obligatorio. |
| `<archivo de entrada>` | Archivo `.bind` que se lee. |
| `<archivo de salida>` | Archivo `.bind` en el que se escriben las copias. |
| `<código a eliminar>` | Nombre del código que se quita. La comparación distingue mayúsculas y minúsculas. |

Si faltan argumentos, el programa escribe en la salida de error el formato de uso. Por cada entidad que escribe, el programa escribe un asterisco (`*`) en la consola. Si se produce una excepción, escribe `Se localizó el siguiente error:` y el mensaje de la excepción.

## Cómo funciona

```csharp
using var archivoEntrada = new BinDouble(args[1]);
// El segundo argumento es readOnly: false abre el archivo en lectura y escritura.
using var archivoSalida = new BinDouble(args[2], false);
foreach (var entidad in archivoEntrada)
{
    var clonada = entidad.Clone();

    // Vacía los códigos de la copia y le añade los de la entidad original salvo el indicado.
    clonada.Codes.Clear();
    foreach (var código in entidad.Codes)
    {
        if (código.Name == args[3])
            continue;

        clonada.Codes.Add(código);
    }

    if (entidad.Codes.Count == 0)
        continue;

    archivoSalida.Add(clonada);
    Console.Write("*");
}
```

- La condición `entidad.Codes.Count == 0` comprueba los códigos de la entidad **original**, no los de la copia. Por eso el programa llama a `Add` también con las copias de las entidades cuyo único código era el eliminado, que se han quedado sin códigos. El comentario del código del repositorio dice que esas entidades no se almacenan. Para descartarlas, la condición tiene que ser `clonada.Codes.Count == 0`.
- El programa no comprueba la propiedad `Deleted`, así que también copia las entidades borradas.
- Si el archivo de salida no existe, `BinDouble` lo crea. Si existe, añade las entidades a las que ya tiene.
- Al crear el archivo de salida, el programa no indica su sistema de referencia: no pasa un delegado que devuelva el WKT del archivo de entrada, como hace [comprimir](comprimir.md).
