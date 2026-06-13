# PARAMETROS\_IMPORTACIÓN

Especifica los parámetros que se enviarán al importador/exportador correspondiente, sin que aparecerá el cuadro de diálogo de configuración de importación al importar/exportar un determinado tipo de archivo.

## Parámetros

Los parámetros de exportación dependerán del tipo de archivo.


| Archivo | Parámetro | Descripción |
| :--- | :--- | :--- |
| BIN |Precisión<br>Coordenadas del origen global<br>Bloqueo de fichero|La precisión será:<br>0= micras<br>1= milímetros<br>2= centímetros<br>3= decímetros<br>4= metros|
| DGN v8 |Salto de entidades<br>Criterio para códigos<br>Importar paleta<br>Colores de las entidades|Carga un archivo DGN v8 de gran tamaño sin cosumo de memoria<br>0 - Nivel 1 - Nivel, color, grosor, estilo, célula<br>2 - Grupo gráfico<br>0 - No<br>1 - Si<br>0 - Utiliza colores del archivo DGN<br>1 - Utiliza colores de la tabla de códigos activa|
| DWG ó DXF de AutoCAD |Versión de AutoCAD<br>Importar bloques<br>Ruta de importación| Con la cual se va a leer el archivo resultado (AutoCAD 11/12, 13, 14, 200, 2004 o AutoCAD 2007) |


## Observaciones

Por defecto, si intentas abrir un archivo .dgn o .dxf \(con la orden [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md), aparece el cuadro de diálogo de configuración donde se especifican los parámetros para la orden. Si no te interesa que aparezca este cuadro de diálogo o bien quieres ejecutar estas órdenes desde la línea de comandos, deberás especificar estos valores a priori mediante la orden _PARÁMETROS\_IMPORTACIÓN_.

Sintaxis:

parámetros\_importación=\[importación/exportación\]\[.extensión\]

\["parámetros\_específicos\_para\_el\_importador/exportador"\]

donde:

* importación/exportación: cuando se trate de importar, este parámetro debe ser 1. Si deseas exportar debe ser 0.
* extensión: la correspondiente al archivo a importar/exportar con un punto delante \(.dgn, .dxf, .dwg, .bin\).
* parámetros específicos para el importador: deben ir entre comillas.

**Nota:**

La orden PARAMETROS\_IMPORTACIÓN recibe tres parámetros, por lo que todos los parámetros que recibe el importador tienen que ir delimitados entre comillas dobles o simples como en el ejemplo anterior, si a su vez los parámetros que recibe el importador tienen que estar entrecomillados por que contienen espacios, se utilizará el delimitador opuesto.

Después de haber ejecutado la orden PARAMETROS\_IMPORTACIÓN para definir los parámetros para el formato deseado, el usuario podrá ejecutar las órdenes de importación o exportación que le interesen más: [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md).

`EXPORTAR=C:\prueba.dxf`

ó

`IMPORTAR=C:\... fichero.BIN`

ó

`CARGA_F=C:\... fichero.dgn`

Puedes desactivar los parámetros asociados con alguna extensión, llamando a esta orden con la siguiente sintaxis:

`parametros_importacion=[importación/exportación][extensión]`

## Características de la orden

| Tipo de orden | [Orden inmediata](parametros-importacion.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {E7720090-FD63-48aa-9136-A9623665E777} |

