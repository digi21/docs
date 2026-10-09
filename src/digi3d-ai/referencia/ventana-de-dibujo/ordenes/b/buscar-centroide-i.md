# BUSCAR\_CENTROIDE\_I
<!-- id: buscar-centroide-i -->

Busca, por inundación, el centroide del polígono topológico sobre el que se está trabajando.

## Parámetros

No admite parámetros.

## Observaciones

Esta es una orden de inundación: actúa sobre el recinto en el que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina, y la opción del menú **Inundación/Buscar centroide** está deshabilitada.

1. Pulsa el botón de datos dentro del recinto. Al mover el cursor, la orden resalta solo los recintos que tienen centroide.
2. Pulsa la barra espaciadora para aceptar. La orden centra la vista en el centroide del recinto y termina. Si el recinto no tiene centroide, suena el pitido de error y la vista no se mueve.

Pulsa el botón de reset para deseleccionar el recinto y Esc para cancelar la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](buscar-centroide-i.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inundación/Buscar centroide |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BUSCAR\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide.md)<br>[COPIAR\_CENTROIDE\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar-centroide-i.md) |
| Nombre interno | {A3432E6A-E83F-4BB5-B9D2-6EF8B2007F35} |
