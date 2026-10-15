# DgnParameters
<!-- id: digi21.diging.io.dgn.dgnparameters -->

Espacio de nombres: `Digi21.DigiNG.IO.Dgn`  
Ensamblado: [Digi21.DigiNG.IO.Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/)

Parámetros de lectura y escritura que reciben los constructores de [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md). Corresponden a las propiedades del importador/exportador [Archivos DGNv8](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/dgn.md) de Digi3D.AI.

```csharp
public struct DgnParameters
```

`new DgnParameters()` deja todas las propiedades con su valor por defecto de .NET (`null`, `0` o el primer valor de la enumeración). La columna «Valor por defecto» indica el efecto de ese valor.

## Propiedades

| Propiedad | Descripción | Valor por defecto |
| :--- | :--- | :--- |
| `string TemplateFile` | Archivo `.dgn` que se copia como base cuando `path` no existe. | `null`: sin plantilla. |
| `string CellFile` | Archivo de células (`.cel`) del que se toma la forma de las células al escribir. Si es `null`, la forma de las células se toma de la carpeta de símbolos de Digi3D.AI. | `null`: carpeta de símbolos. |
| `DgnCodeCriteria CodeCriteria` | Criterio para buscar el código de cada elemento en la tabla de códigos. Ver [DgnCodeCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgncodecriteria.md). Con un valor que no está en `DgnCodeCriteria`, el constructor de `Dgn` lanza `ArgumentOutOfRangeException`. | `Level`. |
| `DgnBlockCriteria BlockCriteria` | Tipo de entidad en que se convierte cada célula al leer el archivo. Ver [DgnBlockCriteria](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgnblockcriteria.md). | `Complex`. |
| `double SplineIncrement` | Distancia, en unidades del dibujo, entre los vértices que se generan al convertir las splines en polilíneas al leer. Un valor menor que 1 se trata como 1. | `0`, que se trata como 1. |
| `string FormatForUnknownCodes` | Nombre del código que se crea para un elemento sin traducción en la tabla de códigos. Admite los sustituidores `$(Level)`, `$(Color)`, `$(Style)`, `$(Thickness)` y `$(GraphicGroup)`, y sus equivalentes en español `$(Nivel)`, `$(Estilo)`, `$(Grosor)` y `$(GrupoGrafico)`. | `null` o vacío: el nombre del nivel (`$(Level)`). |

El constructor de `Dgn` fija además estas propiedades del importador, que no se pueden cambiar desde `DgnParameters`:

| Propiedad del importador | Valor |
| :--- | :--- |
| Transformar el nivel de las entidades de las células | Sí |
| Importar paleta | Sí |
| Colores de las entidades | Colores del archivo DGN |

La propiedad **Archivos de recursos de simbología** toma el valor de la última configuración del importador/exportador DGN que Digi3D.AI guardó para el usuario.

## Ejemplo

El ejemplo de [Dgn](/digi3d-ai/programacion/.net/referencia/digi21.diging.io.dgn/dgn.md#ejemplo) crea un `DgnParameters` y lo pasa al constructor.
