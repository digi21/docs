# Referencia
<!-- id: referencia-2 -->

Digi3D.AI es una aplicación mixta de Windows, lo que significa que parte de la aplicación es nativa y parte es administrada.

La parte administrada es un conjunto de ensamblados .NET 10 que el instalador de Digi3D.AI copia en `<carpeta de instalación>\<ensamblado>\<versión>\` y que permiten a los programas .NET acceder a los servicios del programa.

Para usar esos ensamblados desde tu programa, referencia los paquetes [NuGet](https://www.nuget.org/profiles/Digi21) de Digi21, versión 26.0.0. Cada paquete contiene un [ensamblado de referencia](https://learn.microsoft.com/dotnet/standard/assembly/reference-assemblies): los tipos para compilar, sin el código. Los ensamblados de referencia no se copian a la carpeta de salida al compilar; el código lo carga tu programa de la carpeta de instalación de Digi3D.AI al ejecutarse. Así, si compilas un programa llamado `bintram.exe`, puedes copiar ese `.exe` a cualquier carpeta de cualquier equipo que tenga instalado Digi3D.AI y ejecutarlo.

La carga la hace un archivo que el paquete `Digi21.DigiNG` añade a los proyectos C#; está explicado en [Migración a .NET 10](../migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

A continuación, el listado de paquetes NuGet:

* [Digi21.DigiNG](/digi3d-ai/programacion/.net/referencia/digi21.diging/)
* [Digi21.DigiNG.Plugin](/digi3d-ai/programacion/.net/referencia/digi21.diging.plugin/)
* [Digi21.Utilities](/digi3d-ai/programacion/.net/referencia/digi21.utilities.md)
* [Digi21.DigiNG.Topology](/digi3d-ai/programacion/.net/referencia/digi21.diging.topology.md)
* [Digi21.OpenGis](/digi3d-ai/programacion/.net/referencia/digi21.opengis.md)
* [Digi21.Epsg](/digi3d-ai/programacion/.net/referencia/digi21.epsg.md)
* [Digi21.DigiNG.IO.Bin](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bin/)
* [Digi21.DigiNG.IO.BinDouble](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.bindouble/)
* [Digi21.DigiNG.IO.Shp](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.shp/)
* [Digi21.DigiNG.IO.Geomedia](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.geomedia/)

