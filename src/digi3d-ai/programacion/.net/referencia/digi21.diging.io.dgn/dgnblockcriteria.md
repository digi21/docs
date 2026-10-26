# DgnBlockCriteria
<!-- id: digi21.diging.io.dgn.dgnblockcriteria -->

Espacio de nombres: `Digi21.DigiNG.IO.Dgn`  
Ensamblado: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Tipo de entidad en que se convierte cada célula de MicroStation al leer un archivo DGN. Es el tipo de la propiedad `BlockCriteria` de [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md) y corresponde a la propiedad **Importar células como** del importador/exportador [Archivos DGNv8](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md).

```csharp
public enum DgnBlockCriteria
```

## Valores

| Valor | Número | Significado |
| :--- | :--- | :--- |
| `Complex` | 0 | Cada célula se lee como un complejo (`ReadOnlyComplex`) que contiene las entidades de la célula. `Complex` es el valor de la propiedad BlockCriteria al crear `new DgnParameters()`. |
| `Point` | 1 | Cada célula se lee como un punto (`ReadOnlyPoint`). |

Los dos valores se aplican a las células y a las células compartidas (*shared cells*). No se aplican a las células huérfanas (*orphan cells*) que MicroStation usa para agrupar formas: esas células se leen como polígono o como complejo con cualquiera de los dos valores.

## Ejemplo

El ejemplo de [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md#ejemplo) asigna `DgnBlockCriteria.Point`.
