# Digi21.Utilities
<!-- id: digi21.utilities -->

Este paquete [NuGet](https://www.nuget.org/packages/Digi21.Utilities/) proporciona herramientas y utilidades para el desarrollo de aplicaciones con el motor de Digi3D.AI.

### Package manager
```bash
Install-Package Digi21.Utilities -Version 26.0.0
```

### .NET Cli
```
dotnet add package Digi21.Utilities --version 26.0.0
```

### Package reference
```markup
<PackageReference Include="Digi21.Utilities" Version="26.0.0" />
```

Puedes clonar y modificar este paquete en el repositorio de GitHub [Digi21.Utilities](https://github.com/digi21/Digi21.Utilities).

A diferencia de los demás paquetes de Digi21, `Digi21.Utilities` contiene el código y no un ensamblado de referencia: `Digi21.Utilities.dll` se copia a la carpeta de salida de tu proyecto. El paquete depende de `Digi21.DigiNG.Plugin`.

Todos los tipos están en el espacio de nombres `Digi21.Utilities`. Casi todos son clases estáticas con métodos de extensión: para usarlos, añade `using Digi21.Utilities;`.

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [IListExtension](/digi3d-ai/programacion/.net/referencia/digi21.utilities/ilistextension.md) | Método de extensión `AddRange` para cualquier `IList<T>`. |
| [IReadOnlyDrawingFileExtension](/digi3d-ai/programacion/.net/referencia/digi21.utilities/ireadonlydrawingfileextension.md) | Método de extensión `Contains`, que indica si una entidad pertenece a un archivo de dibujo. |
| [MemoryDrawingFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/memorydrawingfile.md) | Archivo de dibujo que guarda en memoria las entidades de otro archivo de dibujo, para recorrerlo más de una vez. |
| [UtilidadesDigiNG](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesdiging.md) | Métodos para las entidades de la ventana de dibujo de Digi3D.AI. Solo funcionan dentro de una extensión. |
| [UtilidadesEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesentity.md) | Métodos de extensión de `Entity`: códigos, visibilidad y conversión a líneas. |
| [UtilidadesReadOnlyLine](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadesreadonlyline.md) | Métodos de extensión de `ReadOnlyLine`: distancias y continuidad entre líneas. |
| [UtilidadesSecuenciaEntity](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaentity.md) | Métodos de extensión de `IEnumerable<Entity>`: filtros por tipo, código, ventana, eliminación y visibilidad. |
| [UtilidadesSecuenciaIntersecciones](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciaintersecciones.md) | Método de extensión para filtrar las intersecciones que devuelve `IntersectionDetector`. |
| [UtilidadesSecuenciaPoint2D](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciapoint2d.md) | Método de extensión `ContieneElPunto` de `IEnumerable<Point2D>`. |
| [UtilidadesSecuenciaReadOnlyFile](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciareadonlyfile.md) | Métodos de extensión que concatenan las entidades de varios archivos de dibujo. |
| [UtilidadesSecuenciaVertexPointer](/digi3d-ai/programacion/.net/referencia/digi21.utilities/utilidadessecuenciavertexpointer.md) | Método de extensión para los nodos que devuelve `NodeDetector`. |
