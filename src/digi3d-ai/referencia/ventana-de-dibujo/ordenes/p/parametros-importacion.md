# PARAMETROS\_IMPORTACIÓN

Especifica los parámetros que se enviarán al importador o exportador correspondiente, de modo que no aparezca el cuadro de diálogo de configuración al importar o exportar un archivo de ese tipo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Extensión del formato, con el punto delante \(por ejemplo `.asc`\), o la ruta de un archivo con esa extensión \(por ejemplo `e:\trabajos\a.asc`\). | No |
| 2 | Valores que se le pasan al importador/exportador, en el orden en que los espera. | No |

El primer parámetro determina **qué** importador/exportador se configura \(a partir de la extensión\); el resto son los valores concretos que admite ese formato, que se describen en la página de cada uno dentro de [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md).

## Observaciones

Por defecto, al abrir o importar un archivo \(por ejemplo con la orden [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md)\) aparece el cuadro de diálogo de configuración donde se indican los parámetros del formato. Si no quieres que aparezca, o si vas a ejecutar la importación/exportación desde la línea de comandos, define antes esos valores con la orden PARAMETROS\_IMPORTACIÓN.

Sintaxis:

`PARAMETROS_IMPORTACION=<extensión o ruta> <valores del importador>`

Por ejemplo, para que el exportador de archivos ASCII de Digi \(extensión `.asc`\) escriba las coordenadas con 4 decimales:

`PARAMETROS_IMPORTACION=.asc 4`

Los valores se indican separados por espacios, sin necesidad de entrecomillarlos aunque sean varios. Por ejemplo, para el formato BIN:

`PARAMETROS_IMPORTACION=.bin 3 1000 2000 0`

Una vez ejecutada la orden PARAMETROS\_IMPORTACIÓN, el usuario puede ejecutar la orden de importación o exportación que le interese \([IMPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md), [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md) o [CARGA\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md)\):

`EXPORTAR=C:\prueba.dxf`

`CARGA_F=C:\fichero.dgn`

## Véase también

- [Importadores y exportadores](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — formatos disponibles y los parámetros que admite cada uno.

## Características de la orden

| Tipo de orden | [Orden inmediata](parametros-importacion.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {E7720090-FD63-48aa-9136-A9623665E777} |

