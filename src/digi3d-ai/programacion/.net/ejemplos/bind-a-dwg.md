# BindADwg
<!-- id: ejemplo-net-bind-a-dwg -->

`BindADwg` es una **aplicación de consola** que convierte un archivo `.bind` a un archivo DWG de AutoCAD 2010.

Código: [BindADwg en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/BindADwg). La lección [Bin2Dwg](../curso-de-programacion-en-c/bin2dwg.md) del curso de programación en C# tiene un vídeo sobre un programa de conversión a DWG.

> [!WARNING]
> Este ejemplo **no compila** con ninguna versión de los paquetes. El proyecto referencia el paquete `Digi21.DigiNG.IO.Dwg`, y ese paquete no está publicado en [nuget.org](https://www.nuget.org/profiles/Digi21). La restauración falla con `error NU1101: Unable to find package Digi21.DigiNG.IO.Dwg`.

## Qué haría falta para compilarlo

Hace falta un paquete NuGet `Digi21.DigiNG.IO.Dwg` 26.0.0 con el ensamblado de referencia de `Digi21.DigiNG.IO.Dwg`, como los que existen para `Digi21.DigiNG.IO.Bin`, `Digi21.DigiNG.IO.BinDouble` y `Digi21.DigiNG.IO.Shp`. Con ese paquete publicado:

1. Migra el proyecto con los pasos de [Compilar un ejemplo para .NET 10](README.md#compilar-un-ejemplo-para-net-10). El proyecto quedaría con:

```xml
<TargetFramework>net10.0</TargetFramework>
...
<PackageReference Include="Digi21.DigiNG.IO.BinDouble" Version="26.0.0" />
<PackageReference Include="Digi21.DigiNG.IO.Dwg" Version="26.0.0" />
```

2. Cambia en `Program.cs` la comprobación `args.Length < 4` por `args.Length < 3` (ver [Argumentos](#argumentos)).

## Argumentos

```
BindADwg.exe <archivo original> <archivo a crear> <tabla de códigos>
```

| Argumento | Descripción |
|---|---|
| `<archivo original>` | Archivo `.bind` que se convierte. |
| `<archivo a crear>` | Archivo `.dwg` que se crea. |
| `<tabla de códigos>` | Ruta del archivo de tabla de códigos. |

El programa usa tres argumentos, pero comprueba que haya al menos cuatro (`args.Length < 4`). Con tres argumentos escribe el formato de uso en la salida de error y termina sin convertir el archivo. El perfil de depuración del proyecto (`Properties\launchSettings.json`) pasa tres argumentos.

## Cómo funciona

```csharp
using var digiTab = DigiTab.Load(rutaTablaCodigos);

// Se pasa una conexión de base de datos sin valores: el archivo se lee sin base de datos.
using var archivoEntrada = new BinDouble(rutaArchivoOriginal, new DatabaseConnectionProperties(), digiTab);

// Salida DWG en formato AutoCAD 2010, con el sistema de referencia (WKT) del archivo de entrada.
using var archivoSalida = new Dwg(
    rutaArchivoCrear,
    new DwgParameters
    {
        Version = DwgVersion.Ac_2010
    },
    digiTab, () => archivoEntrada.Wkt);

foreach (var geometria in archivoEntrada)
{
    archivoSalida.Add(geometria.Clone());
    Console.Write("+");
}
```

`DwgVersion` admite los valores `Ac_12`, `Ac_13`, `Ac_14`, `Ac_2000`, `Ac_2004`, `Ac_2007` y `Ac_2010`.

El programa no comprueba la propiedad `Deleted`, así que también intenta convertir las entidades borradas.
