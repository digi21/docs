# Digi21.DigiNG
<!-- id: digi21.diging -->

Este paquete [NuGet](https://www.nuget.org/packages/Digi21.DigiNG/) proporciona los tipos básicos para trabajar con Digi3D.AI: geometría (puntos, segmentos, ventanas), entidades de un archivo de dibujo, relaciones espaciales entre entidades, las interfaces de los archivos de dibujo, la tabla de códigos, las cámaras y las tareas (avisos y errores). Los demás paquetes de Digi21 dependen de este.

### Package manager
```bash
Install-Package Digi21.DigiNG -Version 26.0.0
```

### .NET Cli
```
dotnet add package Digi21.DigiNG --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
```

## Contenido del paquete

- El ensamblado de referencia `Digi21.DigiNG.dll` para `net10.0`: los tipos para compilar, sin el código. El ensamblado con el código lo instala Digi3D.AI.
- El archivo de código `Digi3DAssemblyResolver.cs`. El paquete añade este archivo a cada proyecto C# que referencia el paquete, directamente o a través de otro paquete. Al iniciarse el programa, el código de `Digi3DAssemblyResolver.cs` carga los ensamblados `Digi21.*` de la carpeta de instalación de Digi3D.AI. La carpeta se lee del valor `InstallDir` de la clave `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\Digi3D.NET\App\Configuration`; la variable de entorno `DIGI3D_INSTALLDIR`, si existe, sustituye a ese valor. El mecanismo está explicado en [Migración a .NET 10](/digi3d-ai/programacion/.net/migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

Para no añadir `Digi3DAssemblyResolver.cs` al proyecto, asigna `true` a la propiedad de MSBuild `Digi21DisableAssemblyResolver`. El archivo no se añade a los proyectos de Visual Basic ni de F#.

Para ejecutar un programa que usa este paquete hace falta una licencia de Digi3D.AI.

## Espacios de nombres

| Espacio de nombres | Descripción |
| :--- | :--- |
| [Digi21.DigiNG.Cameras](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.cameras/) | Cámaras: cónica (`ConicCamera`) y ortográfica (`OrthographicCamera`), y la enumeración de puntos de vista estándar. |
| [Digi21.DigiNG.DigiTab](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.digitab/) | Tabla de códigos: lectura, escritura y consulta de los códigos y de sus propiedades. |
| [Digi21.DigiNG.Entities](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities/) | Entidades de un archivo de dibujo (líneas, puntos, textos, polígonos y complejos) y sus códigos. |
| [Digi21.DigiNG.Entities.Relations](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.entities.relations/) | Relaciones espaciales entre entidades: `PointPoint`, `PointLine`, `PointArea`, `LineLine`, `LineArea` y `AreaArea`. |
| [Digi21.DigiNG.IO](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.diging.io/) | Interfaces de los archivos de dibujo (`IDrawingFile`, `IReadOnlyDrawingFile`), que implementan los importadores y exportadores. |
| [Digi21.Math](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.math/) | Puntos, segmentos, ventanas (coordenadas mínimas y máximas de un conjunto de puntos), conversión de ángulos y comparación de números reales con una precisión (épsilon). |
| [Digi21.Tasks](/digi3d-ai/programacion/.net/referencia/digi21.diging/digi21.tasks/) | Tareas: los avisos y errores que notifican los archivos de dibujo, y los argumentos y delegados de los eventos `ProgressChanged`, `ResultsAdded` y `TaskAdded`. |

## Ejemplo

Este programa crea una ventana a partir de dos puntos y muestra sus dimensiones:

```csharp
using Digi21.Math;

var ventana = new Window3D(new Point3D(0, 0, 0));
ventana.Union(new Point3D(10, 20, 5));

Console.WriteLine($"{ventana.Width} x {ventana.Height} x {ventana.Depth}");   // 10 x 20 x 5
Console.WriteLine(ventana.Center);
```
