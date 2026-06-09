# TIEMPO_ESPERA

Define los milisegundos que el usuario desea que transcurran antes de autoregistrar cada punto cuando se ejecuta la orden [MDT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mdt.md).

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Milisegundos | Número entero | Si |

### Ejemplos

`TIEMPO_ESPERA=500`

Asigna un tiempo de espera de 500 milisegundos.

`TIEMPO_ESPERA=?`

Muestra el valor actual del tiempo de espera.

## Observaciones

Este valor sólo tiene efecto durante la captura automática de puntos de la orden [MDT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mdt.md): cuanto mayor sea el tiempo de espera, más tiempo transcurrirá entre el registro automático de un punto y el siguiente.

## Características de la orden

| Tipo de variable | [Numérica](/digi3d-ai/referencia/ventana-de-dibujo/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [MDT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mdt.md) |
| Nombre interno | {0AD35503-1733-45fc-92C9-88F8C436729B} |
