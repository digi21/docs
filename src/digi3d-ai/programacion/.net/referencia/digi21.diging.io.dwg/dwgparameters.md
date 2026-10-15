# DwgParameters
<!-- id: digi21.diging.io.dwg.dwgparameters -->

Espacio de nombres: `Digi21.DigiNG.IO.Dwg`  
Ensamblado: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Parámetros de lectura y escritura que reciben los constructores de [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md). Corresponden a las propiedades del importador/exportador [Archivos AutoCAD DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md) de Digi3D.AI.

```csharp
public struct DwgParameters
```

`new DwgParameters()` deja todas las propiedades con su valor por defecto de .NET (`null` o el primer valor de la enumeración). La columna «Valor por defecto» indica el efecto de ese valor.

## Propiedades

| Propiedad | Descripción | Valor por defecto |
| :--- | :--- | :--- |
| `DwgVersion Version` | Versión de AutoCAD con la que se escribe el archivo al llamar a `Dispose`. Ver [DwgVersion](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgversion.md). | `Ac_12`: AutoCAD R11/R12. Asigna la versión siempre que escribas el archivo. |
| `string TemplateFile` | Archivo `.dwg` que se copia como base cuando `path` no existe. | `null`: sin plantilla. |
| `string CellFile` | No se usa: el constructor de `Dwg` no lee esta propiedad. | — |
| `DwgImportBlocksAs BlockCriteria` | Tipo de entidad en que se convierte cada referencia a bloque al leer el archivo. Ver [DwgImportBlocksAs](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgimportblocksas.md). | `Complex`. |

El constructor de `Dwg` fija además estas propiedades del importador, que no se pueden cambiar desde `DwgParameters`:

| Propiedad del importador | Valor |
| :--- | :--- |
| Importar bloques | No |
| Importar paleta | Sí: al abrir un archivo existente, la paleta de la tabla de códigos se sustituye por la paleta estándar de 256 colores de AutoCAD. |
| Utilizar colores archivo dibujo | Sí: las entidades con color propio en el archivo conservan ese color. |

## Ejemplo

```csharp
using Digi21.DigiNG.IO.Dwg;

var parámetros = new DwgParameters
{
    Version = DwgVersion.Ac_2010,
    BlockCriteria = DwgImportBlocksAs.Point
};

Console.WriteLine($"{parámetros.Version}, bloques como {parámetros.BlockCriteria}");
```

El ejemplo de [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md#ejemplo) pasa un `DwgParameters` al constructor.
