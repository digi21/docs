# DgnCodeCriteria
<!-- id: digi21.diging.io.dgn.dgncodecriteria -->

Espacio de nombres: `Digi21.DigiNG.IO.Dgn`  
Ensamblado: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Criterio con el que se busca en la tabla de códigos el código de Digi3D.AI de cada elemento DGN: qué atributos del elemento tienen que coincidir con la traducción a DGN del código. Es el tipo de la propiedad `CodeCriteria` de [DgnParameters](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnparameters.md).

```csharp
public enum DgnCodeCriteria
```

> En la versión 26.0.0 el constructor de [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md) no aplica el valor de `DgnParameters.CodeCriteria`: usa el criterio de la última configuración del importador/exportador DGN guardada para el usuario.

## Valores

| Valor | Número | Atributos que se comparan |
| :--- | :--- | :--- |
| `Level` | 0 | Nombre del nivel. |
| `LevelCell` | 1 | Si el elemento es una célula, basta con que coincida el nombre de la célula (sin distinguir mayúsculas de minúsculas). Si no coincide, o el elemento no es una célula, se compara el nombre del nivel. |
| `LevelColorStyleWeight` | 2 | Nombre del nivel, color, estilo y grosor. |
| `LevelColorStyleWeightCell` | 3 | Como `LevelCell`, pero sin coincidencia de célula se comparan el nombre del nivel, el color, el estilo y el grosor. |
| `LevelColor` | 4 | Nombre del nivel y color. |
| `LevelStyle` | 5 | Nombre del nivel y estilo. |
| `LevelWeight` | 6 | Nombre del nivel y grosor. |
| `GraphicsGroup` | 7 | Grupo gráfico. |

Los números coinciden con las posiciones 0 a 7 de la lista **Criterio para códigos** del importador/exportador [Archivos DGNv8](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md). Los criterios de las posiciones 8 a 18 de esa lista (Geographics, NGix, número de nivel…) no tienen valor en esta enumeración.

## Ejemplo

```csharp
using Digi21.DigiNG.IO.Dgn;

var parámetros = new DgnParameters { CodeCriteria = DgnCodeCriteria.LevelColor };
Console.WriteLine($"{parámetros.CodeCriteria} = {(int)parámetros.CodeCriteria}"); // LevelColor = 4
```
