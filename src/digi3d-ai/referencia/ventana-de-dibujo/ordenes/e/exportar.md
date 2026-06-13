# EXPORTAR

Exporta el archivo actual a los formatos:

* BIN \(DigiNG\)
* DGN \(MicroStation v8\)
* DWG \(AutoCAD\)
* MDB Geomedia Datawarehose \(para poder utilizar esta función es requisito indispensable tener licencia de Geomedia\)
* ASCII de Kork
* Coordenadas XYZ
* ASCII de Digi

## Parámetros

Los parámetros de exportación dependerán del tipo de archivo que se desea exportar.


| Archivo | Parámetro | Descripción |
| :--- | :--- | :--- |
| BIN |Precisión<br>Coordenadas del origen global|  |
| DGN v8 |Archivo de células<br>Salto de entidades<br>Criterio para códigos<br>Códigos desconocidos|Archivo de células relacionado con el archivo DGN<br>Carga un archivo DGN v8 de gran tamaño sin cosumo de memoria<br>Criterio a seguir para la selección del código de Digi para la representación de entidades (Nivel, Color, Estilo, Grosor, Célula ó únicamente Grupo Gráfico)<br>Código con que se generarán las entidades desconocidas, si no se especifica nada, el programa generará las entidades en el código desconocido standard (no seleccionable por parte del usuario)|
| DWG ó DXF de AutoCAD | Versión de AutoCAD | Con la cual se va a leer el archivo resultado (AutoCAD 11/12, 13, 14, 200, 2004 o AutoCAD 2007) |
| ASCII de Kork | Sin parámetro |  |
| MDB de Geomedia Datawarehose | Altura de textos | Es indispensable tener licencia de Geomedia |
| Coordenadas XYZ | Número de decimales | Número de decimales para las coordenadas |
| ASCII de Digi | Número de decimales | Número de decimales para las coordenadas |


## Observaciones

Las entidades que estén registradas con un código que está apagado \([OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md), en el momento de ejecutar la orden, no serán incluidas en el archivo exportado.

## Características de la orden

| Tipo de orden | [Orden interactiva](exportar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {DC4164CD-347F-4f98-A060-7DDBC76699DF} |

