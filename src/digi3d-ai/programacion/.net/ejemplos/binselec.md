# Binselec
<!-- id: ejemplo-net-binselec -->

`Binselec` es una **aplicación de consola** que lee todos los archivos `.bind` de la carpeta actual y copia a un archivo nuevo las entidades que tienen alguno de los códigos indicados.

Código: [Binselec en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/Binselec). La lección [Binselec](../curso-de-programacion-en-c/binselec.md) del curso de programación en C# tiene un vídeo sobre un programa con el mismo nombre.

## Compilar

El proyecto usa .NET 10 (`net10.0`) y los paquetes `Digi21.DigiNG`, `Digi21.DigiNG.IO.BinDouble`, `Digi21.DigiNG.Plugin` y `Digi21.Utilities` 26.0.0. Compila el proyecto desde la carpeta del repositorio:

```
dotnet build Binselec\Binselec.csproj -c Release -o C:\Herramientas\Binselec
```

## Ejecutar

Ejecuta el programa desde la carpeta que contiene los archivos `.bind`:

```
cd C:\Trabajos\Hoja1
C:\Herramientas\Binselec\Binselec.exe curvado.bind 020400 020200
```

| Argumento | Descripción |
|---|---|
| `<archivo .bind a generar>` | Ruta del archivo de salida. |
| `<código 1>` `[<código 2> ...]` | Códigos de las entidades que se copian. Hace falta al menos uno. |

Si faltan argumentos, el programa escribe en la salida de error el formato de uso. El mensaje llama al programa `ExtraerEntidadesDeArchivos`.

Por cada archivo de entrada, el programa escribe `Analizando el archivo: <nombre>`.

## Cómo funciona

```csharp
var di = new DirectoryInfo(Directory.GetCurrentDirectory());
var archivos = di.GetFiles("*.bind");

using var archivoSalida = new BinDouble(args[0]);
foreach (var archivo in archivos)
{
    using var archivoEntrada = new BinDouble(archivo.Name);
    Console.WriteLine($"Analizando el archivo: {archivo.Name}");

    // Descarta las entidades borradas. TieneAlgúnCódigo es un método de extensión de Digi21.Utilities.
    var entidades = from entidad in archivoEntrada
        where !entidad.Deleted && entidad.TieneAlgúnCódigo(args.Skip(1))
        select entidad;

    foreach (var entidad in entidades)
        archivoSalida.Add(entidad.Clone());
}
```

- `TieneAlgúnCódigo` compara el nombre de cada código de la entidad con los argumentos, carácter a carácter. No admite comodines. `Digi21.Utilities` tiene también el método `TieneAlgúnCódigoConComodín`, que sí los admite.
- El programa no copia las entidades que tienen la propiedad `Deleted` a `true`.
- `new BinDouble(args[0])` abre el archivo de salida en lectura y escritura. Si el archivo no existe, lo crea. Si existe, añade las entidades a las que ya tiene.
- El programa obtiene la lista de archivos `.bind` antes de abrir el archivo de salida. Si el archivo de salida ya existía en la carpeta actual, también aparece en la lista de archivos de entrada. Indica como salida un archivo que no exista.
- Al crear el archivo de salida, el programa no indica su sistema de referencia: no pasa un delegado que devuelva el WKT, como hace [comprimir](comprimir.md).
