# PONER\_ATR\_R
<!-- id: poner-atr-r -->

Añade los códigos activos a las entidades que forman el contorno de los recintos seleccionados en la topología temporal.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Ordenar de forma inversa (0/1). La orden no utiliza este parámetro | Si |

## Observaciones

La orden necesita una topología temporal calculada; si no la hay, muestra el aviso «No hay ninguna topología temporal creada» y termina.

Al mover el cursor, el recinto que contiene el cursor se ilumina:

* Pulsa el botón de datos dentro de un recinto para seleccionarlo. La selección anterior se descarta.
* Mantén pulsada la tecla Ctrl al pulsar el botón de datos para añadir el recinto a la selección o quitarlo de ella.
* Pulsa el botón de tentativo para pasar al siguiente recinto que contiene el punto.
* Pulsa el botón de reset para deseleccionar todos los recintos.
* Pulsa Esc para cancelar la orden.

Para aceptar la selección, pulsa la barra espaciadora. La orden añade los códigos activos a cada entidad del contorno exterior de los recintos seleccionados.

## Características de la orden

| Tipo de orden | [Orden interactiva](poner-atr-r.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inundación/Añadir códigos activos |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ANADE\_CODIGOS\_ACTIVOS\_Y\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md)<br>[BORRA\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md)<br>[EDITAR\_CODIGOS\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md)<br>[PONER\_COD\_RECINTO\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-cod-recinto-centroide.md) |
| Nombre interno | {1508551C-4306-4DAA-9ED6-C6BA81C7209C} |
