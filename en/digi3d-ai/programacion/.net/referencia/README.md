# Reference
<!-- id: referencia-2 -->
<!-- origen: 3e94a61032d2b8e5afe1c32ff299206033fe61af -->

Digi3D.AI is a mixed Windows application, meaning that part of the application is native and part is managed.

The managed part is a set of .NET 10 assemblies copied by the Digi3D.AI installer to `<carpeta de instalación>\<ensamblado>\<versión>\`, allowing .NET programs to access the program's services.

To use these assemblies from your program, reference the Digi21 [NuGet](https://www.nuget.org/profiles/Digi21) packages, version 26.0.0. Each package contains a [reference assembly](https://learn.microsoft.com/dotnet/standard/assembly/reference-assemblies): types for compilation, without code. Reference assemblies are not copied to the output folder when building; your program loads the code from the Digi3D.AI installation folder at runtime. Thus, if you compile a program called `bintram.exe`, you can copy that `.exe` to any folder on any computer with Digi3D.AI installed and run it.

Loading is handled by a file that the `Digi21.DigiNG` package adds to C# projects; this is explained in [Migrating to .NET 10](../migracion-a-net-10.md#how-your-program-finds-the-digi3dai-assemblies).

Available NuGet packages and assemblies:

* [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)
* [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)
* [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities/)
* [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology/)
* [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/)
* [Digi21.DigiNG.IO.Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/)
* [Digi21.DigiNG.IO.BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/)
* [Digi21.DigiNG.IO.Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/)
* [Digi21.DigiNG.IO.Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/)
* [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/) and [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/): assemblies installed by Digi3D.AI that have no NuGet package.
