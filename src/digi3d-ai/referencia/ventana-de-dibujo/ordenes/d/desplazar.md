# DESPLAZAR

Desplaza entidades del archivo de dibujo distancias definidas por el usuario mediante desplazamientos en X, Y y Z.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Desplazamiento en X, en unidades del sistema de referencia | No |
| 2 | Desplazamiento en Y, en unidades del sistema de referencia | No |
| 3 | Desplazamiento en Z, en unidades del sistema de referencia | No |

## Observaciones

La orden funciona únicamente cuando se le pasan directamente los desplazamientos en la línea de comandos. Sin parámetros, muestra un mensaje de error y termina.

Una vez ejecutada la orden, cada pulsación del pedal de registro o del tentativo selecciona una entidad y la desplaza. La orden sigue activa hasta que pulses Esc. Si seleccionas varias entidades a la vez mediante una selección múltiple, la orden desplaza las del modelo actual y termina.

### Ejemplo:

`desplazar=0 0 0.5`

Mueve una o varias entidades una cantidad fija de 0.5 m en Z.

## Características de la orden

| Tipo de orden | [Orden interactiva](desplazar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {DEB8EC05-421D-4e7f-B3A4-ED5BF9CC7334} |

