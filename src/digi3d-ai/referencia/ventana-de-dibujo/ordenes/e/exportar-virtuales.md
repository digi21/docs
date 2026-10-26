# EXPORTAR\_VIRTUALES
<!-- id: exportar-virtuales -->

Exporta únicamente las entidades virtuales a un archivo nuevo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo de destino. Si el nombre del archivo no tiene extensión, la orden añade `.bind` | Sí |

Si no indicas el nombre del archivo, la orden muestra un cuadro de diálogo para seleccionar el archivo de destino, su formato y los parámetros de exportación. La orden funciona igual que [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md), pero solo exporta las entidades virtuales.

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


## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Exportar entidades virtuales... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md)<br>[EXPORTAR\_ENTIDADES\_SELECCIONADAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar-entidades-seleccionadas.md) |
| Nombre interno | {5DC58BC9-2FFA-4D99-9734-C6DDF9996460} |

