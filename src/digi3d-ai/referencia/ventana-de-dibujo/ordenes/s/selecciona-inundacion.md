# SELECCIONA\_INUNDACION
<!-- id: selecciona-inundacion -->

Envía las entidades que forman parte del límite del recinto seleccionado a la orden activa

## Parámetros

No admite parámetros.

## Observaciones

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo.

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple; si no la hay, la orden muestra el aviso «No se está ejecutando ninguna orden que admita selección múltiple.», emite el sonido de error y termina. Si la hay pero no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina. En los dos casos, la opción del menú **Inmediato/Selecciona por inundación** está deshabilitada.

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
