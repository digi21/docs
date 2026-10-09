# BORRA\_COD\_R
<!-- id: borra-cod-r -->

Borra un código (atributo) de las entidades que forman el contorno de los recintos seleccionados en la topología temporal.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Atributo | Código a borrar | Si |

Si no se indica el parámetro, la orden muestra un cuadro de diálogo para elegir el código.

### Observaciones

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina sin pedir el código, y la opción del menú **Inundación/Eliminar código...** está deshabilitada.

Al ejecutar la orden, el programa pedirá la selección del código \(atributo\) de las entidades, a continuación podrás picar dentro de los recintos y éstos se iluminarán:

* Pulsa el botón de datos dentro de un recinto para seleccionarlo. La selección anterior se descarta.
* Mantén pulsada la tecla Ctrl al pulsar el botón de datos para añadir el recinto a la selección o quitarlo de ella.
* Pulsa el botón de tentativo para sustituir el último recinto seleccionado por el siguiente recinto que contiene el punto y que no está ya seleccionado. Si no hay ninguno, el último recinto sale de la selección y la orden emite el sonido de error.
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
| Opción del menú donde aparece la orden | Inundación/Eliminar código... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ANADE\_CODIGOS\_ACTIVOS\_Y\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md)<br>[BORRA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-r.md)<br>[EDITAR\_CODIGOS\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md)<br>[MOSTRAR\_COD\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mostrar-cod-i.md)<br>[PONER\_ATR\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md)<br>[PONER\_COD\_RECINTO\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md) |
| Nombre interno | {998553CF-11D7-449b-9324-C94446D48CBA} |

