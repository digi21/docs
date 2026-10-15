# Digi21.DigiNG.IO.Dgn
<!-- id: digi21.diging.io.dgn -->

Este ensamblado proporciona un importador/exportador de archivos DGN de MicroStation V8 (`.dgn`).

Digi3D.AI instala el ensamblado en `<carpeta de instalación>\Digi21.DigiNG.IO.Dgn\26.0.0\Digi21.DigiNG.IO.Dgn.dll`. La carpeta de instalación por defecto es `C:\Program Files\Digi21.net\Digi3D.AI`.

## Cómo referenciarlo

`Digi21.DigiNG.IO.Dgn` no tiene paquete NuGet. Para usarlo:

1. Añade al proyecto el paquete `Digi21.DigiNG`, que contiene los tipos de las entidades y el archivo `Digi3DAssemblyResolver.cs` que carga los ensamblados de la carpeta de instalación.
2. Añade una referencia a la DLL instalada con `Private` a `false`, para que no se copie a la carpeta de salida:

```xml
<ItemGroup>
  <PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
  <Reference Include="Digi21.DigiNG.IO.Dgn">
    <HintPath>C:\Program Files\Digi21.net\Digi3D.AI\Digi21.DigiNG.IO.Dgn\26.0.0\Digi21.DigiNG.IO.Dgn.dll</HintPath>
    <Private>false</Private>
  </Reference>
</ItemGroup>
```

Al ejecutarse el programa, .NET no encuentra `Digi21.DigiNG.IO.Dgn` en la carpeta del programa y el código de `Digi3DAssemblyResolver.cs` lo carga de `<carpeta de instalación>\Digi21.DigiNG.IO.Dgn\26.0.0\`, igual que los ensamblados de los paquetes NuGet. Ese mecanismo está explicado en [Migración a .NET 10](/digi3d-ai/programacion/.net/migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

A diferencia de un paquete NuGet, la referencia compila contra el ensamblado completo, y no contra un ensamblado de referencia. Por eso el equipo en el que se compila necesita Digi3D.AI instalado.

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md) | Archivo de dibujo en formato DGN de MicroStation V8 (`.dgn`). |
| [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md) | Parámetros de lectura y escritura de un archivo DGN. |
| [DgnCodeCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgncodecriteria.md) | Criterio para asignar un código de la tabla de códigos a cada elemento DGN. |
| [DgnBlockCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnblockcriteria.md) | Tipo de entidad en que se convierten las células. |

Para archivos DWG, usa [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/).
