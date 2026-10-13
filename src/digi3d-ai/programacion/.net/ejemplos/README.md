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
- Digi3D.AI para .NET 10 instalado en el equipo, para ejecutar las aplicaciones de consola y para compilar `BindADwg`. Las utilidades independientes no lo necesitan.

## Versiones de .NET y de los paquetes

Los proyectos del repositorio usan **.NET 10** (`net10.0`) y los paquetes NuGet de Digi21 de la versión **26.0.0**. Ningún proyecto referencia el paquete `Digi21.Digi3D.App`. La página [Migración a .NET 10](../migracion-a-net-10.md) explica los cambios respecto a los paquetes 24.0.0.

La extensión `DigiNG.IO.Gps` es la excepción: sigue configurada para .NET 8 y los paquetes 24.0.0, y no compila (ver [DigiNG.IO.Gps](gps.md)).

## Compilar un ejemplo

Compila el proyecto con `dotnet build`. Por ejemplo, para el ejemplo `comprimir`, ejecuta desde la carpeta del repositorio:

```
dotnet build comprimir\comprimir.csproj -c Release -o C:\Herramientas\comprimir
```

La carpeta de destino contiene el `.exe` del ejemplo y ninguna DLL de los paquetes `Digi21.DigiNG.*`, porque esos paquetes solo contienen ensamblados de referencia. El paquete `Digi21.Utilities` sí contiene su DLL, y `dotnet build` copia `Digi21.Utilities.dll` a la carpeta de Binselec. Al ejecutarse, el programa carga las DLL de la carpeta de instalación de Digi3D.AI, como se explica en [Migración a .NET 10](../migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

## Entidades borradas

`BinDouble` devuelve también las entidades que tienen la marca de borrado, con la propiedad `Deleted` a `true`. Todas las aplicaciones de consola descartan esas entidades: no las copian, no las exportan y no muestran sus atributos.

## Apertura de archivos con BinDouble

Varios ejemplos abren los archivos `.bind` con constructores de `BinDouble` que no reciben el argumento `readOnly`, o que lo reciben con valor `false`. Esos constructores abren el archivo en lectura y escritura:

- Si el archivo no existe, `BinDouble` lo crea.
- Si el archivo existe, `BinDouble` lo abre sin vaciarlo, y `Add` añade las entidades a las que ya tiene.
- Si el archivo existe pero no se puede abrir para escribir, por ejemplo porque tiene el atributo de solo lectura, `BinDouble` lo abre en solo lectura sin lanzar ninguna excepción. En ese caso la excepción se produce después, al llamar a `Add`.

Para abrir un archivo solo para leerlo, usa un constructor con `readOnly` y pasa `true`.

## Compilar la solución

La solución completa no compila, porque el proyecto `DigiNG.IO.Gps` falla con cualquier versión de los paquetes. Compila cada proyecto por separado.

## Ejemplos

| Ejemplo | Tipo | Qué hace | Compila con .NET 10 y los paquetes 26.0.0 |
|---|---|---|---|
| [Utilidades para tablas de códigos](tablas-de-codigos.md) | Utilidades independientes | Añaden etiquetas y controles de calidad a varios códigos, y eliminan controles de calidad repetidos. | Sí |
| [comprimir](comprimir.md) | Aplicación de consola | Elimina de un archivo `.bind` las entidades borradas. | Sí |
| [Binselec](binselec.md) | Aplicación de consola | Copia a un archivo nuevo las entidades de los `.bind` de la carpeta actual que tienen alguno de los códigos indicados. | Sí |
| [EliminaCodigoDeArchivoBin](elimina-codigo-de-archivo-bin.md) | Aplicación de consola | Copia un archivo `.bind` quitando un código a todas las entidades. | Sí |
| [EliminarTextosDeArchivoBinD](eliminar-textos-de-archivo-bind.md) | Aplicación de consola | Copia un archivo `.bind` sin los textos que tienen un código y un contenido determinados. | Sí |
| [ListarArchivosReferenciaEnBinD](listar-archivos-de-referencia.md) | Aplicación de consola | Muestra los archivos de referencia de un archivo `.bind`. | Sí |
| [MuestraAtributosBBDDGeometriasArchivoBinD](muestra-atributos-de-base-de-datos.md) | Aplicación de consola | Muestra los atributos de base de datos de las entidades de un archivo `.bind`. | Sí |
| [Bind2Shape](bind2shape.md) | Aplicación de consola | Convierte un archivo `.bind` con atributos de base de datos a Shapefile. | Sí |
| [BindADwg](bind-a-dwg.md) | Aplicación de consola | Convierte un archivo `.bind` a DWG. | Sí, con Digi3D.AI instalado: referencia el ensamblado `Digi21.DigiNG.IO.Dwg` de la carpeta de instalación |
| [DigiNG.IO.Gps](gps.md) | Extensión | Añade las órdenes `GPS` y `GPS_CLASICO`, que usan un receptor GPS como dispositivo de entrada. | No: usa tipos de .NET Framework y una API de transformación de coordenadas que los paquetes 26.0.0 no tienen |
