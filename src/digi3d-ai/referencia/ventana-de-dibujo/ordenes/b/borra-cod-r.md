# BORRA\_COD\_R

Borra un código (atributo) de las entidades que forman el contorno de los recintos seleccionados en la topología temporal.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Atributo | Código a borrar | Si |

Si no se indica el parámetro, la orden muestra un cuadro de diálogo para elegir el código.

### Observaciones

La orden necesita una topología temporal calculada; si no la hay, muestra el aviso «No hay ninguna topología temporal creada» y termina.

Al ejecutar la orden, el programa pedirá la selección del código \(atributo\) de las entidades, a continuación podrás picar dentro de los recintos y éstos se iluminarán:

* Pulsa el botón de datos dentro de un recinto para seleccionarlo. La selección anterior se descarta.
* Mantén pulsada la tecla Ctrl al pulsar el botón de datos para añadir el recinto a la selección o quitarlo de ella.
* Pulsa el botón de tentativo para pasar al siguiente recinto que contiene el punto.
* Pulsa el botón de reset para deseleccionar todos los recintos.
* Pulsa Esc para cancelar la orden.

Para aceptar la selección, deberás pulsar la barra espaciadora. La orden recorre las entidades del contorno exterior de los recintos seleccionados. Si una entidad solo tiene el código indicado, se borra la entidad. Si tiene más códigos, la orden quita el código indicado y conserva la entidad con el resto de códigos. Las entidades que no tienen el código indicado no se modifican.

También es posible ejecutar la orden especificando el código desde la línea de comandos.

### Ejemplo

`BORRA_COD_R=3`

## Características de la orden

| Tipo de orden | [Orden interactiva](borra-cod-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {998553CF-11D7-449b-9324-C94446D48CBA} |

