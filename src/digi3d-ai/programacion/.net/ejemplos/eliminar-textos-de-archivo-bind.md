# EliminarTextosDeArchivoBinD
<!-- id: ejemplo-net-eliminar-textos-de-archivo-bind -->

`EliminarTextosDeArchivoBinD` es una **aplicación de consola** que copia un archivo `.bind` a otro archivo sin los textos que tienen un código y un contenido determinados.

Código: [EliminarTextosDeArchivoBinD en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/EliminarTextosDeArchivoBinD).

## Compilar

El proyecto usa .NET 10 y el paquete `Digi21.DigiNG.IO.BinDouble` 26.0.0. Compila el proyecto desde la carpeta del repositorio:

```
dotnet build EliminarTextosDeArchivoBinD\EliminarTextosDeArchivoBinD.csproj -c Release -o C:\Herramientas\EliminarTextosDeArchivoBinD
```

## Ejecutar

```
C:\Herramientas\EliminarTextosDeArchivoBinD\EliminarTextosDeArchivoBinD.exe a.bind _a.bind 010123 Hola 010123 Adiós 040101 "Sin nombre"
```

| Argumento | Descripción |
|---|---|
| `<archivo original>` | Archivo `.bind` que se lee. |
| `<archivo a crear>` | Archivo `.bind` en el que se escriben las entidades que no se eliminan. |
| `<código 1>` `<texto 1>` … `<código n>` `<texto n>` | Pares de código y texto. El programa no copia los textos que tienen el código y cuyo contenido es el texto del par. Un código puede aparecer en varios pares. |

El número total de argumentos tiene que ser par y como mínimo 4. Si no lo es, el programa escribe en la salida de error el formato de uso. Escribe entre comillas los textos con espacios, como `"Sin nombre"` en el ejemplo anterior; sin comillas, cada palabra es un argumento distinto.

Por cada entidad que no está borrada, el programa escribe en la consola un signo menos (`-`) si la elimina o un signo más (`+`) si la copia.

## Cómo funciona

```csharp
var rutaArchivoOriginal = args[0];
var rutaArchivoCrear = args[1];

using var archivoEntrada = new BinDouble(rutaArchivoOriginal);
// La salida se crea con el sistema de referencia (WKT) del archivo original.
using var archivoSalida = new BinDouble(rutaArchivoCrear, () => archivoEntrada.Wkt);

// Para cada código, la lista de textos que se eliminan.
var diccionario = new Dictionary<string, List<string>>();
for (var i = 2; i < args.Length; i+=2)
{
    if(!diccionario.ContainsKey(args[i]))
        diccionario[args[i]] = new();

    diccionario[args[i]].Add(args[i + 1]);
}

foreach (var geometria in archivoEntrada)
{
    // Las entidades borradas no se copian.
    if (geometria.Deleted)
        continue;

    if (EliminarGeometria(geometria, diccionario))
    {
        Console.Write("-");
        continue;
    }

    archivoSalida.Add(geometria.Clone());
    Console.Write("+");
}
```

La función `EliminarGeometria` decide qué entidades se eliminan:

```csharp
bool EliminarGeometria(Entity geometria, Dictionary<string, List<string>> diccionario)
{
    // Solo se eliminan textos.
    if (geometria is not ReadOnlyText texto)
        return false;

    foreach (var codigo in diccionario)
    {
        // El texto no tiene este código: pasa al siguiente.
        if (texto.Codes.All(c => 0 != string.Compare(c.Name, codigo.Key, StringComparison.CurrentCultureIgnoreCase)))
            continue;

        // El contenido coincide con alguno de los textos asociados al código.
        if (codigo.Value.Any(textoAEliminar => 0 == string.Compare(texto.Txt, textoAEliminar, StringComparison.CurrentCultureIgnoreCase)))
            return true;
    }

    return false;
}
```

- Las comparaciones de código y de texto no distinguen mayúsculas y minúsculas.
- El contenido del texto tiene que coincidir entero con el argumento: el programa no busca el argumento dentro del texto.
- El programa no copia las entidades que tienen la propiedad `Deleted` a `true`.
- Si el archivo a crear ya existe, `BinDouble` lo abre y el programa añade las entidades a las que ya tiene.
- Los dos archivos se declaran con `using var`: al terminar el programa se cierra primero el archivo de salida y después el original.
