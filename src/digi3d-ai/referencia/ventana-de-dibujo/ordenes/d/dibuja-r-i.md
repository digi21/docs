# DIBUJA\_R\_I
<!-- id: dibuja-r-i -->

Dibuja recintos topológicos por inundación.

## Parámetros

No admite parámetros.

## Observaciones

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina, y la opción del menú **Inundación/Generar polígono** está deshabilitada.

1. Pulsa el pedal de registro dentro de un recinto para seleccionarlo. Mantén pulsada la tecla Ctrl para añadir recintos a la selección o quitarlos de ella.
2. Pulsa el pedal tentativo para pasar al siguiente recinto que contiene el punto.
3. Pulsa la barra espaciadora para crear un polígono, con sus huecos, a partir del contorno de los recintos seleccionados. El polígono se crea con el código activo y la orden termina.

Pulsa Esc para terminar sin crear nada.

## Características de la orden

| Tipo de orden | [Orden interactiva](dibuja-r-i.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inundación/Generar polígono |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [DIBUJA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja-r.md) |
| Nombre interno | {1C2857ED-88C7-4F91-B4CC-10C65F7613EB} |
