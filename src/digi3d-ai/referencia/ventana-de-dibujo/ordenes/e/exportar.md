# EXPORTAR
<!-- id: exportar -->

Exporta el archivo actual a los siguientes formatos:

* BIN \(DigiNG\)
* DGN \(MicroStation v8\)
* DWG \(AutoCAD\)
* MDB Geomedia Datawarehose \(requiere una licencia de Geomedia\)
* ASCII de Kork
* Coordenadas XYZ
* ASCII de Digi

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo de destino. Si el nombre del archivo no tiene extensión, la orden añade `.bind` | Sí |

Si no indicas el nombre del archivo, la orden muestra un cuadro de diálogo para seleccionar el archivo de destino, su formato y los parámetros de exportación. Ese cuadro de diálogo incluye la opción de exportar solo el primer código de cada entidad. Si el archivo indicado existe y es de solo lectura, la orden muestra un error y termina.

### Parámetros de exportación por formato

Los parámetros de exportación dependen del formato del archivo de destino.


| Archivo | Parámetro | Descripción |
| :--- | :--- | :--- |
| BIN |Precisión<br>Coordenadas del origen global|  |
| DGN v8 |Archivo de células<br>Salto de entidades<br>Criterio para códigos<br>Códigos desconocidos|Archivo de células relacionado con el archivo DGN<br>Carga un archivo DGN v8 de gran tamaño sin consumo de memoria<br>Criterio para seleccionar el código de Digi con el que se representan las entidades (Nivel, Color, Estilo, Grosor, Célula o únicamente Grupo Gráfico)<br>Código con el que se generan las entidades desconocidas. Si no indicas ningún código, el programa utiliza el código desconocido estándar (no puedes seleccionarlo)|
| DWG o DXF de AutoCAD | Versión de AutoCAD | Versión de AutoCAD con la que se leerá el archivo resultante (AutoCAD 11/12, 13, 14, 200, 2004 o AutoCAD 2007) |
| ASCII de Kork | Sin parámetro |  |
| MDB de Geomedia Datawarehose | Altura de textos | Es indispensable tener licencia de Geomedia |
| Coordenadas XYZ | Número de decimales | Número de decimales para las coordenadas |
| ASCII de Digi | Número de decimales | Número de decimales para las coordenadas |


## Observaciones

La orden no incluye en el archivo exportado las entidades registradas con un código que está oculto \([OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)\) en el momento de ejecutar la orden.

La orden exporta las entidades no borradas, visibles, no virtuales y dentro de la zona de interés. Si el formato de destino no admite varios códigos por entidad, la orden exporta una copia de la entidad por cada código.

## Véase también

- [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — formatos disponibles y los parámetros que admite cada uno.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [EXPORTAR\_ENTIDADES\_SELECCIONADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md)<br>[EXPORTAR\_VIRTUALES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-virtuales.md)<br>[IMPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md)<br>[PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) |
| Nombre interno | {DC4164CD-347F-4f98-A060-7DDBC76699DF} |

