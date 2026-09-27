# Tutorial: crear una aplicación de consola

En este tutorial crearás `ListarEntidades`, una aplicación de consola que abre un archivo binario de Digi3D.AI (`.bin`) y muestra sus entidades. La aplicación se puede copiar a cualquier carpeta del equipo y ejecutar sin abrir Digi3D.AI.

## Requisitos

- Digi3D.AI para .NET 10 instalado en el equipo. La aplicación usa los ensamblados que instala.
- El SDK de .NET 10. Viene con Visual Studio 2026; también se puede instalar por separado desde [dot.net](https://dotnet.microsoft.com/download).

Los pasos usan la línea de comandos (`dotnet`). En Visual Studio el resultado es el mismo: crea un proyecto *Aplicación de consola* para .NET 10 y añade el paquete desde *Administrar paquetes NuGet*.

## 1. Crear el proyecto

Abre una consola en la carpeta donde quieras crear el proyecto y ejecuta:

```
dotnet new console -n ListarEntidades -f net10.0
cd ListarEntidades
```

## 2. Añadir el paquete NuGet

```
dotnet add package Digi21.DigiNG.IO.Bin --version 26.0.0
```

`Digi21.DigiNG.IO.Bin` contiene los tipos para leer y escribir archivos `.bin`, y depende de `Digi21.DigiNG`, que contiene los tipos de las entidades. NuGet añade los dos. No añadas `Digi21.Digi3D.App`: desde la versión 26.0.0 no hace falta (ver [Migración a .NET 10](migracion-a-net-10.md)).

## 3. Escribir el programa

Sustituye el contenido de `Program.cs` por:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ListarEntidades <archivo.bin>");
    return 1;
}

// Abre el archivo en solo lectura, con 3 decimales y sin desplazamiento de origen.
using var archivo = new Bin(args[0], 3, new Point3D(0, 0, 0), true);

var total = 0;
foreach (var entidad in archivo)
{
    if (entidad.Deleted)
        continue;

    var codigos = string.Join(", ", entidad.Codes.Select(codigo => codigo.Name));
    var detalle = entidad switch
    {
        ReadOnlyLine linea => $"línea de {linea.Points.Count} vértices y {linea.Perimeter:F2} m",
        ReadOnlyPolygon poligono => $"polígono de {poligono.Points.Count} vértices y {poligono.Area:F2} m²",
        ReadOnlyPoint punto => $"punto en {punto.Coordinate}",
        ReadOnlyText texto => $"texto \"{texto.Txt}\" en {texto.Coordinate}",
        ReadOnlyComplex complejo => $"complejo de {complejo.Entities.Count()} entidades",
        _ => entidad.GetType().Name
    };

    Console.WriteLine($"{codigos}: {detalle}");
    total++;
}

Console.WriteLine($"{total} entidades.");
return 0;
```

El programa:

- abre el archivo con la clase `Bin`. El último argumento, `true`, lo abre en solo lectura;
- recorre las entidades con `foreach`, porque un archivo de dibujo es una colección de entidades (`IEnumerable<Entity>`);
- salta las entidades eliminadas, que siguen en el archivo marcadas con `Deleted`;
- según el tipo de cada entidad (línea, polígono, punto, texto o complejo), muestra sus códigos y un dato de la geometría.

## 4. Ejecutar el programa

```
dotnet run -- C:\Trabajos\prueba.bin
```

Con un archivo que contiene una línea con el código `020101` y un punto con el código `070401`, la salida es:

```
020101: línea de 3 vértices y 150.21 m
070401: punto en (120,220,11)
2 entidades.
```

## 5. Publicar el programa en cualquier carpeta

```
dotnet publish -c Release -o C:\Herramientas\ListarEntidades
```

La carpeta de destino contiene `ListarEntidades.exe` y sus archivos de configuración, pero **ninguna DLL de Digi21**: los paquetes solo contienen ensamblados de referencia. Al ejecutarse, el programa carga las DLL de la carpeta de instalación de Digi3D.AI. Así puedes copiar la carpeta a cualquier equipo que tenga Digi3D.AI para .NET 10 instalado y ejecutar:

```
C:\Herramientas\ListarEntidades\ListarEntidades.exe C:\Trabajos\prueba.bin
```

Cómo localiza el programa las DLL, y cómo indicarle otra carpeta de instalación, está explicado en [Migración a .NET 10](migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

## Siguientes pasos

- Para ejecutar código dentro de Digi3D.AI, con acceso al archivo de dibujo abierto y a la ventana de resultados, crea una extensión: [Tutorial: crear una extensión](tutorial-extension.md).
- Para conocer los tipos de la API, consulta la [referencia](referencia/README.md) y el [curso de programación en C#](curso-de-programacion-en-c/README.md).
