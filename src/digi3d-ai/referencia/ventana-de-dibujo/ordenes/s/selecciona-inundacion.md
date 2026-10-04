# SELECCIONA\_INUNDACION
<!-- id: selecciona-inundacion -->

Envía las entidades que forman parte del límite del recinto seleccionado a la orden activa

## Parámetros

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple. La orden necesita una topología temporal calculada; si no la hay, muestra el aviso «No hay ninguna topología temporal creada» y termina.

1. Pulsa el pulsador de datos dentro de un recinto para seleccionarlo. Mantén pulsada la tecla `Ctrl` para añadir o quitar recintos de la selección.
2. Pulsa el pulsador de tentativo para pasar al siguiente recinto que contiene el punto.
3. Pulsa la barra espaciadora para enviar a la orden activa las entidades del contorno exterior de los recintos seleccionados.

El pulsador de reset vacía la selección de recintos. La tecla `Esc` termina la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](selecciona-inundacion.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Selecciona por inundación |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {6B5E76DA-9197-42C8-B940-E28A594E123A} |
