# BindADwg
<!-- id: ejemplo-net-bind-a-dwg -->

`BindADwg` es una **aplicación de consola** que convierte un archivo `.bind` a un archivo DWG de AutoCAD 2010.

Código: [BindADwg en GitHub](https://github.com/digi21/Ejemplos-Programacion-Digi3D/tree/main/BindADwg). La lección [Bin2Dwg](../curso-de-programacion-en-c/bin2dwg.md) del curso de programación en C# tiene un vídeo sobre un programa de conversión a DWG.

## Compilar

El proyecto usa .NET 10 y el paquete `Digi21.DigiNG.IO.BinDouble` 26.0.0. El ensamblado `Digi21.DigiNG.IO.Dwg` no tiene paquete NuGet, así que el proyecto referencia el ensamblado que instala Digi3D.AI:

```
<carpeta de instalación>\Digi21.DigiNG.IO.Dwg\26.0.0\Digi21.DigiNG.IO.Dwg.dll
```

Para compilar el proyecto, Digi3D.AI para .NET 10 tiene que estar instalado en el equipo. La propiedad MSBuild `Digi3DInstallDir` indica la carpeta de instalación. Si no se asigna, el proyecto toma el primero de estos valores que no esté vacío:

1. La variable de entorno `DIGI3D_INSTALLDIR`.
2. El valor `InstallDir` de la clave de registro `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\App\Configuration`, que escribe el instalador de Digi3D.AI.
3. `C:\Program Files\Digi21.net\Digi3D.AI\`, la carpeta de instalación por defecto.

Compila el proyecto desde la carpeta del repositorio:

```
dotnet build BindADwg\BindADwg.csproj -c Release -o C:\Herramientas\BindADwg
```

Para compilar contra otra instalación, añade `-p:Digi3DInstallDir="<carpeta>"` a la orden anterior. Si el ensamblado no existe en la ruta calculada, la compilación termina con el error `No se encuentra <ruta>`.

La referencia tiene `Private` a `false`, así que `dotnet build` no copia `Digi21.DigiNG.IO.Dwg.dll` a la carpeta de destino. Al ejecutarse, el programa carga ese ensamblado de la carpeta de instalación de Digi3D.AI, igual que los ensamblados de los paquetes `Digi21.DigiNG.*` (ver [Migración a .NET 10](../migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai)).

## Argumentos

```
BindADwg.exe <archivo original> <archivo a crear> <tabla de códigos>
```

| Argumento | Descripción |
|---|---|
| `<archivo original>` | Archivo `.bind` que se convierte. |
| `<archivo a crear>` | Archivo `.dwg` que se crea. |
| `<tabla de códigos>` | Ruta del archivo de tabla de códigos. |

Si faltan argumentos, el programa escribe el formato de uso en la salida de error y termina sin convertir el archivo.

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
    // DWG no tiene marca de borrado: las entidades borradas no se exportan.
    if (geometria.Deleted)
        continue;

    archivoSalida.Add(geometria.Clone());
    Console.Write("+");
}
```

`DwgVersion` admite los valores `Ac_12`, `Ac_13`, `Ac_14`, `Ac_2000`, `Ac_2004`, `Ac_2007` y `Ac_2010`.
