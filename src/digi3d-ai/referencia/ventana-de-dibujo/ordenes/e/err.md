# ERR

Teniendo el fichero gráfico generado con los programas [BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md), cargado como referencia sobre el archivo de trabajo, podremos visualizar los errores encontrados por cualquiera de los programas anteriormente citados.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Número del error o `?` | Número entero mayor o igual que 0, o `?` | Si |

### Ejemplos

`ERR=3`

Se visualiza el error número 3

`ERR=?`

Muestra el error en cuál nos encontramos

## Observaciones

Sin parámetros, la orden solicita el número del error en la barra de estado. Cada error es la entidad con ese número del primer archivo de referencia; la orden desplaza la vista hasta su centro.

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
| Nombre interno | {E7BF3A8A-5AA8-474a-9A8E-4FA08264D19C} |

