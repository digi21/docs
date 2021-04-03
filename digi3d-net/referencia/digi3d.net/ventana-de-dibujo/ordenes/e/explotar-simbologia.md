# EXPLOTAR\_SIMBOLOGIA

Explota líneas con patrón en segmentos independientes.

## Parámetros

No admite parámetros.

## Observaciones

Esta opción es frecuentemente utilizada antes de transformar un archivo BIN en DXF en caso de no tener definido el símbolo como un bloque, para no perder la simbología.

Al ejecutar esta orden hay que especificar en la línea de comandos el código de los elementos a explotar:

`explotar_simbologia=<código>` y pulsar \[ENTER\]

El sistema "explotará" automáticamente todas las líneas que tengan ese código.

Es recomendable que realices una copia de seguridad del fichero, con la orden [BAK](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/e/BAK.html), antes de ejecutar esta orden.

## Características de la orden

| Tipo de orden | [Orden inmediata](explotar-simbologia.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

