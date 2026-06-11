# EXPORTAR\_VIRTUALES

Exporta únicamente las entidades virtuales a un archivo nuevo.

## Parámetros

Los parámetros de exportación dependerán del tipo de archivo que se desea exportar.


| Archivo | Parámetro | Descripción |
| :--- | :--- | :--- |
| BIN | Precisión; Coordenadas del origen global |  |
| DGN v8 | Archivo de células; Salto de entidades; Criterio para códigos; Códigos desconocidos | Archivo de células relacionado con el archivo DGN; Carga un archivo DGN v8 de gran tamaño sin cosumo de memoria; Criterio a seguir para la selección del código de Digi para la representación de entidades (Nivel, Color, Estilo, Grosor, Célula ó únicamente Grupo Gráfico); Código con que se generarán las entidades desconocidas, si no se especifica nada, el programa generará las entidades en el código desconocido standard (no seleccionable por parte del usuario) |
| DWG ó DXF de AutoCAD | Versión de AutoCAD | Con la cual se va a leer el archivo resultado (AutoCAD 11/12, 13, 14, 200, 2004 o AutoCAD 2007) |
| ASCII de Kork | Sin parámetro |  |
| MDB de Geomedia Datawarehose | Altura de textos | Es indispensable tener licencia de Geomedia |
| Coordenadas XYZ | Número de decimales | Número de decimales para las coordenadas |
| ASCII de Digi | Número de decimales | Número de decimales para las coordenadas |


## Características de la orden

| Tipo de orden | [Orden interactiva](exportar-virtuales.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar entidades virtuales... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {5DC58BC9-2FFA-4D99-9734-C6DDF9996460} |

