# Digi21.DigiNG.IO.Dwg
<!-- id: digi21.diging.io.dwg -->

Este ensamblado proporciona un importador/exportador de archivos DWG de AutoCAD (`.dwg`).

Digi3D.AI instala el ensamblado en `<carpeta de instalación>\Digi21.DigiNG.IO.Dwg\26.0.0\Digi21.DigiNG.IO.Dwg.dll`. La carpeta de instalación por defecto es `C:\Program Files\Digi21.net\Digi3D.AI`.

## Cómo referenciarlo

`Digi21.DigiNG.IO.Dwg` no tiene paquete NuGet. Para usarlo:

1. Añade al proyecto el paquete `Digi21.DigiNG`, que contiene los tipos de las entidades y el archivo `Digi3DAssemblyResolver.cs` que carga los ensamblados de la carpeta de instalación.
2. Añade una referencia a la DLL instalada con `Private` a `false`, para que no se copie a la carpeta de salida:

```xml
<ItemGroup>
  <PackageReference Include="Digi21.DigiNG" Version="26.0.0" />
  <Reference Include="Digi21.DigiNG.IO.Dwg">
    <HintPath>C:\Program Files\Digi21.net\Digi3D.AI\Digi21.DigiNG.IO.Dwg\26.0.0\Digi21.DigiNG.IO.Dwg.dll</HintPath>
    <Private>false</Private>
  </Reference>
</ItemGroup>
```

Al ejecutarse el programa, .NET no encuentra `Digi21.DigiNG.IO.Dwg` en la carpeta del programa y el código de `Digi3DAssemblyResolver.cs` lo carga de `<carpeta de instalación>\Digi21.DigiNG.IO.Dwg\26.0.0\`, igual que los ensamblados de los paquetes NuGet. Ese mecanismo está explicado en [Migración a .NET 10](/digi3d-ai/programacion/.net/migracion-a-net-10.md#cómo-encuentra-tu-programa-los-ensamblados-de-digi3dai).

A diferencia de un paquete NuGet, la referencia compila contra el ensamblado completo, y no contra un ensamblado de referencia. Por eso el equipo en el que se compila necesita Digi3D.AI instalado. El ejemplo [BindADwg](/digi3d-ai/programacion/.net/ejemplos/bind-a-dwg.md) calcula la ruta de la DLL a partir de la carpeta de instalación.

## Tipos

| Tipo | Descripción |
| :--- | :--- |
| [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md) | Archivo de dibujo en formato DWG de AutoCAD (`.dwg`). |
| [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md) | Parámetros de lectura y escritura de un archivo DWG. |
| [DwgVersion](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgversion.md) | Versión de AutoCAD con la que se escribe el archivo. |
| [DwgImportBlocksAs](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgimportblocksas.md) | Tipo de entidad en que se convierten las referencias a bloque. |

Para archivos DGN, usa [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/).
