# DwgImportBlocksAs
<!-- id: digi21.diging.io.dwg.dwgimportblocksas -->

Espacio de nombres: `Digi21.DigiNG.IO.Dwg`  
Ensamblado: [Digi21.DigiNG.IO.Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/)

Tipo de entidad en que se convierte cada referencia a bloque de AutoCAD al leer un archivo DWG. Es el tipo de la propiedad `BlockCriteria` de [DwgParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwgparameters.md) y corresponde a la propiedad **Importar bloques como** del importador/exportador [Archivos AutoCAD DWG](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dwg.md).

```csharp
public enum DwgImportBlocksAs
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Complex` | 0 | Cada referencia a bloque se lee como un complejo (`ReadOnlyComplex`) que contiene las entidades del bloque. Las tablas y las referencias múltiples (MINSERT) no se leen como complejos. `Complex` es el valor de la propiedad BlockCriteria al crear `new DwgParameters()`. |
| `Point` | 1 | Cada referencia a bloque se lee como un punto (`ReadOnlyPoint`) en el punto de inserción de la referencia. |

## Ejemplo

El ejemplo de [Dwg](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dwg/dwg.md#ejemplo) asigna `DwgImportBlocksAs.Point`.
