# ERR

Teniendo el fichero gráfico generado con los programas [BINTRAM](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/e/BINTRAM.html) o [BINTOP](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/e/BINTOP.html), cargado como referencia sobre el archivo de trabajo, podremos visualizar los errores encontrados por cualquiera de los programas anteriormente citados.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |

### Ejemplos

`ERR=3`

Se visualiza el error número 3

`ERR=?`

Muestra el error en cuál nos encontramos

## Observaciones

Los programas _BINTRAM_ y _BINTOP_ sirven para generar un fichero con símbolos, cuya localización se corresponde con todas aquellas posiciones donde se ha detectado un error. El fichero creado es un fichero .bin que puede ser cargado como referencia sobre el archivo de trabajo.

El usuario también se podrá mover de error en error mediante la ventana de tareas, en esta aparecerá la lista de errores después de haber ejecutado una de las órdenes _BINTRAM_ o _BINTOP_, y al pulsar sobre cualquiera de estos errores el programa llevará al usuario directamente a la posición del error.

## Características de la orden

| Tipo de orden | [Orden inmediata](err.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

