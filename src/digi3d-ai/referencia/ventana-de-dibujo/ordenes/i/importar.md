# IMPORTAR
<!-- id: importar -->

Importa archivos de los siguientes tipos:

* BIN \(DigiNG\)
* DGN \(MicroStation v8\)
* DWG \(AutoCad\)
* .MDB Geomedia Datawarehouse \(para poder utilizar esta función es requisito indispensable tener licencia de Geomedia\)
* ASCII de Kork
* Coordenadas XYZ
* ASCII de Digi

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del archivo a importar. Si no se especifica, la orden muestra el cuadro de diálogo de selección de archivos, que admite seleccionar varios | Sí |

Los parámetros de importación dependen del tipo de archivo que se desea importar.


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

En cualquiera de las opciones seleccionadas se presenta la opción de **Defecto**. Esta propiedad deDigiNG guardará en caso de estar activada los parámetros del importador/exportador. Con lo cual dará la posibilidad al usuario de ejecutar la orden _IMPORTAR_ a partir de entonces especificando únicamente la ruta y nombre del archivo en la línea de órdenes, por ejemplo:

`IMPORTAR=C:\Brochales\case1.bin`

## Véase también

- [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — formatos disponibles y los parámetros que admite cada uno.

## Características de la orden

| Tipo de orden | [Orden inmediata](importar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Archivo/Importar... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md)<br>[IMPORTAR\_UNIENDO\_POLIGONOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar-uniendo-poligonos.md)<br>[PARAMETROS\_IMPORTACIÓN](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/parametros-importacion.md) |
| Nombre interno | {6DCCD1F4-17F1-4335-AFF4-86FA66BF5EB8} |

