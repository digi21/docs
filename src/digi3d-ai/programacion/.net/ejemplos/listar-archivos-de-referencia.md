# ListarArchivosReferenciaEnBinD
<!-- id: ejemplo-net-listar-archivos-de-referencia -->

`ListarArchivosReferenciaEnBinD` es una **aplicación de consola** que muestra en la consola los archivos de referencia de un archivo `.bind`, uno por línea.

Código: [ListarArchivosReferenciaEnBinD en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/ListarArchivosReferenciaEnBinD). La lección [Archivos de referencia](../curso-de-programacion-en-c/archivos-de-referencia.md) del curso de programación en C# tiene un vídeo sobre los archivos de referencia.

## Compilar

El proyecto usa .NET 10 y el paquete `Digi21.DigiNG.IO.BinDouble` 26.0.0. Compila el proyecto desde la carpeta del repositorio:

```
dotnet build ListarArchivosReferenciaEnBinD\ListarArchivosReferenciaEnBinD.csproj -c Release -o C:\Herramientas\ListarArchivosReferenciaEnBinD
```

## Ejecutar

```
C:\Herramientas\ListarArchivosReferenciaEnBinD\ListarArchivosReferenciaEnBinD.exe digiBCA.Tab.xml 29091711.bind
```

| Argumento | Descripción |
|---|---|
| `<tabla de códigos>` | Ruta del archivo de tabla de códigos con el que se abre el archivo de dibujo. |
| `<archivo bind>` | Archivo `.bind` cuyos archivos de referencia se muestran. |

Si faltan argumentos, el programa escribe en la salida de error el formato de uso y la línea de ejemplo `ListarArchivosReferenciaEnBinD.exe digiBCA.Tab.xml 29091711.bind`.

## Cómo funciona

```csharp
// Carga la tabla de códigos y abre el archivo de dibujo con ella.
var tabla = DigiTab.Load(args[0]);

using var bin = new BinDouble(args[1], tabla);

// ReferenceFiles devuelve la ruta de cada archivo de referencia.
foreach (var reference in bin.ReferenceFiles)
{
    Console.WriteLine(reference);
}
```

`new BinDouble(args[1], tabla)` abre el archivo en lectura y escritura. Si la ruta no existe, `BinDouble` crea un archivo `.bind` vacío y el programa no muestra nada. Para abrir el archivo en solo lectura, pasa `true` como tercer argumento: `new BinDouble(args[1], tabla, true)`.

`ReferenceFiles` devuelve las rutas de archivos de referencia que el archivo `.bind` guarda en su interior, salvo las marcadas como borradas. La primera lectura de `ReferenceFiles` recorre todas las entidades del archivo para encontrar esas rutas. Digi3D.AI guarda además, junto a cada archivo de dibujo, un archivo `.reference_files.json` (ver [Archivo de archivos de referencia](/digi3d-ai/referencia/archivos/archivo-de-archivos-de-referencia.md)); el programa no lee ese archivo.
