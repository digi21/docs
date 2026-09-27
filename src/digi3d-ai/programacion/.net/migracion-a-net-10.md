# Migración a .NET 10

Digi3D.AI se ejecuta sobre **.NET 10**. Los ensamblados .NET que instala y los paquetes [NuGet](https://www.nuget.org/profiles/Digi21) con los que se programa contra ellos pasan a la **versión 26.0.0**.

Esta página explica qué ha cambiado y qué hay que hacer con las aplicaciones de consola y las extensiones creadas con versiones anteriores.

## Qué ha cambiado

| | Hasta la versión 24.0.0 | Desde la versión 26.0.0 |
|---|---|---|
| Versión de .NET | .NET 8 | .NET 10 |
| `TargetFramework` de tus proyectos | `net8.0` | `net10.0` |
| Paquetes que hay que referenciar | los `Digi21.DigiNG.*` que uses **y** `Digi21.Digi3D.App` | solo los `Digi21.DigiNG.*` que uses |
| Carpeta de instalación | `C:\Program Files\Digi21.net\Digi3D.NET` | `C:\Program Files\Digi21.net\Digi3D.AI` |
| Carpeta de cada ensamblado | `<instalación>\<paquete>\24.0.0\` | `<instalación>\<paquete>\26.0.0\` |

Los paquetes siguen siendo **ensamblados de referencia**: contienen los tipos para compilar, pero no el código. El código lo instala Digi3D.AI, y tu programa lo carga de la carpeta de instalación al ejecutarse. Por eso no hace falta copiar tu programa a la carpeta de Digi3D.AI: puedes instalarlo en cualquier carpeta del equipo.

El paquete `Digi21.Digi3D.App` ya no es necesario. Con .NET 10 no funciona: el SDK de .NET 10 elimina del archivo `.deps.json` los paquetes sin ensamblados de ejecución, y la herramienta que añadían los paquetes 24.0.0 falla al compilar.

## Cómo encuentra tu programa los ensamblados de Digi3D.AI

El paquete `Digi21.DigiNG` añade a tu proyecto C# el archivo `Digi3DAssemblyResolver.cs`. Lo añade tanto si referencias `Digi21.DigiNG` directamente como si lo recibes a través de otro paquete, por ejemplo `Digi21.DigiNG.IO.Bin`. No aparece en el Explorador de soluciones y no tienes que modificarlo.

Al iniciarse tu programa, ese código:

1. Lee la carpeta de instalación de Digi3D.AI del valor `InstallDir` de la clave de registro `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\App\Configuration`. La clave conserva el nombre `Digi3D.NET` para no perder la configuración de las instalaciones existentes.
2. Cuando .NET no encuentra un ensamblado cuyo nombre empieza por `Digi21.`, lo busca en `<instalación>\<ensamblado>\<versión>\`. Busca también los ensamblados satélite de idioma, así que los mensajes salen en el idioma del programa.

Para usar otra carpeta de instalación, por ejemplo una copia de pruebas, asigna la ruta a la variable de entorno `DIGI3D_INSTALLDIR`.

Para que el archivo no se añada a un proyecto, asigna `true` a la propiedad `Digi21DisableAssemblyResolver` del proyecto:

```xml
<PropertyGroup>
  <Digi21DisableAssemblyResolver>true</Digi21DisableAssemblyResolver>
</PropertyGroup>
```

> [!IMPORTANT]
> NuGet solo añade el archivo a proyectos **C#**. En un proyecto de Visual Basic o de F#, registra tú un manejador del evento `AssemblyLoadContext.Default.Resolving` al iniciar el programa. Puedes usar como modelo [Digi3DAssemblyResolver.cs](https://github.com/digi21/Digi21.DigiNG/blob/main/NuGet/buildTransitive/Digi3DAssemblyResolver.cs).

## Migrar una aplicación de consola

Una aplicación de consola compilada con los paquetes 24.0.0 **deja de funcionar** con Digi3D.AI para .NET 10, por dos motivos:

- Se ejecuta sobre .NET 8, y .NET 8 no puede cargar ensamblados compilados para .NET 10. El error es `FileNotFoundException: Could not load file or assembly 'System.Runtime, Version=10.0.0.0'`.
- Busca los ensamblados en las carpetas `24.0.0`, que Digi3D.AI ya no instala.

Para migrarla:

1. Cambia `TargetFramework` a `net10.0` en el archivo `.csproj`.
2. Cambia la versión de todas las referencias `Digi21.DigiNG.*` a `26.0.0`.
3. Elimina la referencia a `Digi21.Digi3D.App`.
4. Si añadiste a mano `additionalProbingPaths` en un archivo `runtimeconfig.template.json`, elimina esa entrada.
5. Compila el proyecto con el SDK de .NET 10 (Visual Studio 2026, o `dotnet build` con el SDK 10).
6. Corrige los errores de compilación que produzcan los [cambios en la API](#cambios-en-la-api).

Un proyecto mínimo queda así:

```xml
<Project Sdk="Microsoft.NET.Sdk">
  <PropertyGroup>
    <OutputType>Exe</OutputType>
    <TargetFramework>net10.0</TargetFramework>
  </PropertyGroup>
  <ItemGroup>
    <PackageReference Include="Digi21.DigiNG.IO.Bin" Version="26.0.0" />
  </ItemGroup>
</Project>
```

Si solo cambias la versión de los paquetes y dejas `net8.0`, la restauración falla con `NU1202: Package Digi21.DigiNG.IO.Bin 26.0.0 is not compatible with net8.0`.

## Migrar una extensión

Las extensiones (órdenes, buscadores, controles de calidad…) se cargan dentro de Digi3D.AI, que ya tiene cargados sus propios ensamblados. Una extensión compilada contra los paquetes 24.0.0 sigue encontrando `Digi21.DigiNG` y `Digi21.DigiNG.Plugin`: Digi3D.AI le entrega los de la versión 26.0.0.

Aun así, recompila cada extensión:

1. Cambia `TargetFramework` a `net10.0-windows` en el archivo `.csproj`.
2. Cambia la versión de todas las referencias `Digi21.DigiNG.*` a `26.0.0`.
3. Asigna `true` a la propiedad `Digi21DisableAssemblyResolver`. En una extensión el archivo `Digi3DAssemblyResolver.cs` no hace falta, porque Digi3D.AI ya carga los ensamblados.
4. Compila el proyecto y corrige los errores que produzcan los [cambios en la API](#cambios-en-la-api).

Los ensamblados de referencia 24.0.0 declaraban miembros que no existen en los ensamblados de Digi3D.AI (ver la sección siguiente). Una extensión que los use compila con los paquetes 24.0.0 y falla al ejecutarse con `MissingMethodException`; al recompilar con los paquetes 26.0.0, el error aparece al compilar.

## Cambios en la API

Los ensamblados de referencia 26.0.0 se han comparado miembro a miembro con los ensamblados que instala Digi3D.AI. Estos miembros cambian respecto a los paquetes 24.0.0. En todos los casos el código anterior compilaba, pero fallaba al ejecutarse:

| Tipo | Paquetes 24.0.0 | Paquetes 26.0.0 |
|---|---|---|
| `Digi21.DigiNG.Cameras.Camera` | `Pitch`, `Roll` y `Yaw` de tipo `double` | `Pitch`, `Roll` y `Yaw` de tipo `float` |
| `Digi21.DigiNG.Cameras.OrthographicCamera` | constructores con ángulos `double` | constructores con ángulos `float`, en el orden `yaw`, `pitch`, `roll` |
| `Digi21.DigiNG.Plugin.TaskPanel.TaskGotoPoint` | métodos `GetCoordinates()` y `SetCoordinates(Point3D)` | propiedad `Coordinates` |

Además, estos tipos ya no tienen constructor público sin parámetros, porque no lo tienen en Digi3D.AI y no se pueden crear desde tu código:

- En `Digi21.DigiNG`: `Camera`, `DigiTab`, `Entity`, `ReadOnlyComplex`, `ReadOnlyLine`, `ReadOnlyPoint`, `ReadOnlyPolygon`, `ReadOnlyText`, `Point3DCollection` y `Point3DReadOnlyCollection`.
- En `Digi21.DigiNG.Plugin`: `OutputWindow`, `Panes`, `Progress`, `StatusBar`, `Tasks`, `ActiveParameters`, `Codes`, `Commands`, `DrawingFile`, `GeographicCalculator`, `InputDeviceOptions`, `LicenseInfo` y `VisualizationOptions`.

## Errores frecuentes

| Error | Causa | Solución |
|---|---|---|
| `NU1202: Package Digi21.DigiNG... 26.0.0 is not compatible with net8.0` | El proyecto sigue en .NET 8. | Cambia `TargetFramework` a `net10.0`. |
| `FileNotFoundException: ... 'System.Runtime, Version=10.0.0.0'` | La aplicación está compilada para .NET 8. | Recompílala para `net10.0` con los paquetes 26.0.0. |
| `FileNotFoundException: ... 'Digi21.DigiNG, Version=26.0.0.0'` al ejecutar | El programa no encuentra la instalación de Digi3D.AI para .NET 10. | Instala Digi3D.AI para .NET 10. Si el proyecto es de Visual Basic o F#, o tiene `Digi21DisableAssemblyResolver` a `true`, registra un manejador del evento `Resolving`. |
| `MissingMethodException` en `Pitch`, `Roll`, `Yaw` o `GetCoordinates` | La extensión está compilada con los paquetes 24.0.0. | Recompila con los paquetes 26.0.0 y corrige los [cambios en la API](#cambios-en-la-api). |
