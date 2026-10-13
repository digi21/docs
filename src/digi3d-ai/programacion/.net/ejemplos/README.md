# Ejemplos de programación
<!-- id: ejemplo-net-ejemplos -->

El repositorio público [Ejemplos-Programacion-Digi3D](https://github.com/digi21/Ejemplos-Programacion-Digi3D) contiene programas de ejemplo escritos en C#. Hay tres clases de programas:

- **Aplicaciones de consola** que leen o escriben archivos de dibujo `.bind` con la API .NET de Digi3D.AI. Se ejecutan sin abrir Digi3D.AI, pero necesitan Digi3D.AI instalado en el equipo.
- **Una extensión** que añade dos órdenes a Digi3D.AI.
- **Utilidades independientes** que modifican archivos de tabla de códigos (`.tab.xml`) como documentos XML. No usan la API de Digi3D.AI.

## Clonar el repositorio

Ejecuta en una consola:

```
git clone https://github.com/digi21/Ejemplos-Programacion-Digi3D.git
```

La rama `main` contiene la solución `Ejemplos-programacion-digi3d.sln` con un proyecto por ejemplo. Cada proyecto está en una carpeta con su nombre.

## Requisitos

- El SDK de .NET 10. Viene con Visual Studio 2026; también se puede instalar por separado desde [dot.net](https://dotnet.microsoft.com/download).
- Digi3D.AI para .NET 10 instalado en el equipo, para ejecutar las aplicaciones de consola y la extensión. Las utilidades independientes no lo necesitan.

## Versiones de .NET y de los paquetes

Los proyectos del repositorio están configurados para **.NET 8** y para los paquetes NuGet de Digi21 de la versión **24.0.0**, más el paquete `Digi21.Digi3D.App` 24.0.1. Digi3D.AI usa ahora .NET 10 y los paquetes 26.0.0 (ver [Migración a .NET 10](../migracion-a-net-10.md)).

Con el SDK de .NET 10, los proyectos que referencian los paquetes 24.0.0 no compilan: la herramienta `AddRuntimeToDepsJson.exe` que añade el paquete `Digi21.DigiNG` 24.0.0 termina con error y la compilación falla con `error MSB3073`. Las utilidades independientes no referencian paquetes de Digi21 y compilan sin cambios.

### Compilar un ejemplo para .NET 10

Para compilar una aplicación de consola del repositorio contra Digi3D.AI para .NET 10:

1. Abre el archivo `.csproj` del ejemplo.
2. Sustituye `net8.0` por `net10.0` en `TargetFramework`. Conserva el resto del valor: en Binselec, `net8.0-windows10.0.17763.0` pasa a ser `net10.0-windows10.0.17763.0`.
3. Cambia a `26.0.0` la versión de todas las referencias `Digi21.DigiNG.*` y `Digi21.Utilities`.
4. Elimina la referencia a `Digi21.Digi3D.App`.
5. Compila el proyecto con `dotnet build`. Por ejemplo, para el ejemplo `comprimir`, ejecuta desde la carpeta del repositorio:

```
dotnet build comprimir\comprimir.csproj -c Release -o C:\Herramientas\comprimir
```

La carpeta de destino contiene el `.exe` del ejemplo y ninguna DLL de los paquetes `Digi21.DigiNG.*`, porque esos paquetes solo contienen ensamblados de referencia. El paquete `Digi21.Utilities` sí contiene su DLL, y `dotnet build` copia `Digi21.Utilities.dll` a la carpeta de Binselec. Al ejecutarse, el programa carga las DLL de la carpeta de instalación de Digi3D.AI, como se explica en [Migración a .NET 10](../migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

Varios proyectos referencian el paquete `Microsoft.CSharp`. El SDK de .NET 10 avisa (`warning NU1510`) de que esa referencia no hace falta; el aviso no impide compilar.

## Apertura de archivos con BinDouble

Varios ejemplos abren los archivos `.bind` con constructores de `BinDouble` que no reciben el argumento `readOnly`, o que lo reciben con valor `false`. Esos constructores abren el archivo en lectura y escritura:

- Si el archivo no existe, `BinDouble` lo crea.
- Si el archivo existe, `BinDouble` lo abre sin vaciarlo, y `Add` añade las entidades a las que ya tiene.
- Si el archivo existe pero no se puede abrir para escribir, por ejemplo porque tiene el atributo de solo lectura, `BinDouble` lo abre en solo lectura sin lanzar ninguna excepción. En ese caso la excepción se produce después, al llamar a `Add`.

Para abrir un archivo solo para leerlo, usa un constructor con `readOnly` y pasa `true`.

## Compilar la solución

La solución completa no compila, porque los proyectos `BindADwg` y `DigiNG.IO.Gps` fallan con cualquier versión de los paquetes. Compila cada proyecto por separado.

## Ejemplos

| Ejemplo | Tipo | Qué hace | Compila con .NET 10 y los paquetes 26.0.0 |
|---|---|---|---|
| [Utilidades para tablas de códigos](tablas-de-codigos.md) | Utilidades independientes | Añaden etiquetas y controles de calidad a varios códigos, y eliminan controles de calidad repetidos. | Sí, sin cambios en el proyecto |
| [comprimir](comprimir.md) | Aplicación de consola | Elimina de un archivo `.bind` las entidades borradas. | Sí, tras cambiar el proyecto |
| [Binselec](binselec.md) | Aplicación de consola | Copia a un archivo nuevo las entidades de los `.bind` de la carpeta actual que tienen alguno de los códigos indicados. | Sí, tras cambiar el proyecto |
| [EliminaCodigoDeArchivoBin](elimina-codigo-de-archivo-bin.md) | Aplicación de consola | Copia un archivo `.bind` quitando un código a todas las entidades. | Sí, tras cambiar el proyecto |
| [EliminarTextosDeArchivoBinD](eliminar-textos-de-archivo-bind.md) | Aplicación de consola | Copia un archivo `.bind` sin los textos que tienen un código y un contenido determinados. | Sí, tras cambiar el proyecto |
| [ListarArchivosReferenciaEnBinD](listar-archivos-de-referencia.md) | Aplicación de consola | Muestra los archivos de referencia de un archivo `.bind`. | Sí, tras cambiar el proyecto |
| [MuestraAtributosBBDDGeometriasArchivoBinD](muestra-atributos-de-base-de-datos.md) | Aplicación de consola | Muestra los atributos de base de datos de las entidades de un archivo `.bind`. | Sí, tras cambiar el proyecto |
| [Bind2Shape](bind2shape.md) | Aplicación de consola | Convierte un archivo `.bind` con atributos de base de datos a Shapefile. | Sí, tras cambiar el proyecto |
| [BindADwg](bind-a-dwg.md) | Aplicación de consola | Convierte un archivo `.bind` a DWG. | No: no existe el paquete NuGet `Digi21.DigiNG.IO.Dwg` |
| [DigiNG.IO.Gps](gps.md) | Extensión | Añade las órdenes `GPS` y `GPS_CLASICO`, que usan un receptor GPS como dispositivo de entrada. | No: usa tipos de .NET Framework |
