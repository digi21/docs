# EXPLOTAR\_PUNTOS

Explota símbolos puntuales en segmentos independientes.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden es frecuentemente utilizada antes de transformar un archivo BIN en DXF en caso de no tener definido el símbolo como un bloque, para no perder la simbología.

Al ejecutar esta orden hay que especificar en la línea de comandos el código de los elementos a exportar:

`EXPLOTAR_PUNTOS=<código>` y pulsar \[ENTER\]. El sistema "explotará" automáticamente todos los textos que tengan ese código.

Nota: Antes de ejecutar esta orden conviene hacer una copia de seguridad del archivo BIN ya que sólo es reversible mediante la orden [UNDO](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/e/UNDO.html).

## Características de la orden

| Tipo de orden | [Orden interactiva](explotar-puntos.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

