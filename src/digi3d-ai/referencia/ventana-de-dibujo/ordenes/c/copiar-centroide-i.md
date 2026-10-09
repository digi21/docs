# COPIAR\_CENTROIDE\_I
<!-- id: copiar-centroide-i -->

Copia el centroide de un recinto de la topología temporal en otros recintos que no tienen centroide.

## Parámetros

No admite parámetros.

## Observaciones

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina, y las opciones del menú **Inundación/Copiar centroide** y **Topología/Copiar centroide** están deshabilitadas.

1. Pulsa el botón de datos dentro de un recinto que tenga centroide y pulsa la barra espaciadora. La orden toma el centroide de ese recinto.
2. Pulsa el botón de datos dentro de un recinto sin centroide y pulsa la barra espaciadora. La orden añade una copia del centroide en el punto central calculado por la topología para ese recinto.
3. Repite el paso 2 para copiar el mismo centroide en otros recintos.
4. Pulsa **Esc** para terminar la orden.

Si el recinto seleccionado en el paso 1 no tiene centroide, o el del paso 2 ya tiene uno, la orden emite un sonido de error.

## Características de la orden

| Tipo de orden | [Orden interactiva](copiar-centroide-i.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inundación/Copiar centroide<br>Topología/Copiar centroide |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [BUSCAR\_CENTROIDE\_I](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/buscar-centroide-i.md) |
| Nombre interno | {415D4B3E-68C0-43C4-B8D8-D8EF42C288C6} |
