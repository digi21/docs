# ERR
<!-- id: err -->

Muestra los errores del fichero gráfico generado con [BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md) o BINTOP, si has cargado ese fichero como referencia del archivo de trabajo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Número del error o `?` | Número entero mayor o igual que 0, o `?` | Sí |

### Ejemplos

`ERR=3`

Muestra el error número 3.

`ERR=?`

Muestra el error en cuál nos encontramos

## Observaciones

Sin parámetros, la orden solicita el número del error en la barra de estado. Cada error es la entidad con ese número del primer archivo de referencia; la orden desplaza la vista hasta su centro.

_BINTRAM_ y _BINTOP_ generan un fichero .bin con símbolos en las posiciones donde se han detectado errores. Puedes cargar el fichero como referencia del archivo de trabajo.

También puedes recorrer los errores mediante el panel de tareas. El panel muestra la lista de errores después de ejecutar _BINTRAM_ o _BINTOP_. Pulsa sobre un error para que el programa centre la vista en la posición del error.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BINTRAM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintram.md)<br>[ERR-](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-menos.md)<br>[ERR+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/err-mas.md) |
| Nombre interno | {E7BF3A8A-5AA8-474a-9A8E-4FA08264D19C} |

