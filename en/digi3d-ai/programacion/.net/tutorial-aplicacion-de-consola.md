# Tutorial: creating a console application
<!-- id: tutorial-aplicacion-de-consola -->
<!-- origen: 05d4f8a645c4a1fdb4ff9f7343a332019493f51b -->

In this tutorial, you will create `ListarEntidades`, a console application that opens a Digi3D.AI binary file (`.bin`) and lists its entities. You can copy the application to any folder on the computer and run it without opening Digi3D.AI.

## Requirements

- Digi3D.AI for .NET 10 installed on the computer. The application uses the assemblies installed by Digi3D.AI.
- The .NET 10 SDK. It comes with Visual Studio 2026; you can also install it separately from [dot.net](https://dotnet.microsoft.com/download).

The steps use the command line (`dotnet`). In Visual Studio, the result is the same: create a *Console App* project for .NET 10 and add the package through *Manage NuGet Packages*.

## 1. Create the project

Open a console in the folder where you want to create the project and run:

```
dotnet new console -n ListarEntidades -f net10.0
cd ListarEntidades
```

## 2. Add the NuGet package

Run the following command:

```
dotnet add package Digi21.DigiNG.IO.Bin --version 26.0.0
```

`Digi21.DigiNG.IO.Bin` contains the types for reading and writing `.bin` files and depends on `Digi21.DigiNG`, which contains the entity types. NuGet adds the `Digi21.DigiNG.IO.Bin` and `Digi21.DigiNG` packages. Do not add `Digi21.Digi3D.App`: it has not been needed since version 26.0.0 (see [Migrating to .NET 10](migracion-a-net-10.md)).

## 3. Write the program

Replace the contents of `Program.cs` with:

```csharp
using Digi21.DigiNG.Entities;
using Digi21.DigiNG.IO.Bin;
using Digi21.Math;

if (args.Length != 1)
{
    Console.WriteLine("Uso: ListarEntidades <archivo.bin>");
    return 1;
}

// Open the file read-only, with 2 decimal places and no origin offset.
using var archivo = new Bin(args[0], 2, new Point3D(0, 0, 0), true);

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

The program:

- opens the file using the [`Bin`](referencia/digi21.diging.io.bin/bin.md) class. The second argument is the number of decimal places used to store coordinates, the third is the global origin, and the last, `true`, opens the file read-only;
- iterates through entities using `foreach`, because a drawing file is a collection of entities (`IEnumerable<Entity>`);
- skips deleted entities, which remain in the file marked with `Deleted`;
- depending on each entity's type (line, polygon, point, text or complex), displays its codes and a geometry detail.

## 4. Run the program

Run the following command:

```
dotnet run -- C:\Trabajos\prueba.bin
```

With a file containing a line with code `020101` and a point with code `070401`, the output is:

```
020101: línea de 3 vértices y 150.21 m
070401: punto en (120,220,11)
2 entidades.
```

## 5. Publish the program to any folder

Run the following command:

```
dotnet publish -c Release -o C:\Herramientas\ListarEntidades
```

The destination folder contains `ListarEntidades.exe` and its configuration files, but **no Digi21 DLLs**: the packages contain only reference assemblies. At runtime, the program loads DLLs from the Digi3D.AI installation folder. You can therefore copy the folder to any computer with Digi3D.AI for .NET 10 installed and run:

```
C:\Herramientas\ListarEntidades\ListarEntidades.exe C:\Trabajos\prueba.bin
```

How the program locates DLLs, and how to specify another installation folder, is explained in [Migrating to .NET 10](migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies).

## Next steps

- To run code inside Digi3D.AI, with access to the open drawing file and the results window, create an extension: [Tutorial: creating an extension](tutorial-extension.md).
- To learn about the API types, see the [reference](referencia/README.md) and the [C# programming course](curso-de-programacion-en-c/README.md).
- For other console applications that iterate through and write `.bind` files, see the [programming examples](ejemplos/README.md). Like this tutorial, the [comprimir](ejemplos/comprimir.md) example iterates through entities with `foreach` and skips those with `Deleted` set.
