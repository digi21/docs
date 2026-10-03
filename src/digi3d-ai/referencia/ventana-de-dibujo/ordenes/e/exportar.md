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

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo de destino. Si no tiene extensión, la orden añade `.bind` | Si |

Si no indicas el nombre del archivo, la orden muestra un cuadro de diálogo para seleccionar el archivo de destino, su formato y los parámetros de exportación. Ese cuadro de diálogo incluye la opción de exportar solo el primer código de cada entidad. Si el archivo indicado existe y es de solo lectura, la orden muestra un error y termina.

### Parámetros de exportación por formato

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

La orden exporta las entidades no borradas, visibles, no virtuales y dentro de la zona de interés. Si el formato de destino no admite varios códigos por entidad, la orden exporta una copia de la entidad por cada código.

## Véase también

- [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — formatos disponibles y los parámetros que admite cada uno.

## Características de la orden

| Tipo de orden | [Orden interactiva](exportar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [EXPORTAR\_ENTIDADES\_SELECCIONADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md)<br>[EXPORTAR\_VIRTUALES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-virtuales.md)<br>[IMPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md)<br>[PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) |
| Nombre interno | {DC4164CD-347F-4f98-A060-7DDBC76699DF} |

