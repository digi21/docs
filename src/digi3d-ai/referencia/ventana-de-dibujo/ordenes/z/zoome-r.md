# ZOOME\_R
<!-- id: zoome-r -->

Realiza un zoom extendido a los recintos seleccionados por inundación.

## Parámetros

No admite parámetros.

## Observaciones

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina, y la opción del menú **Zooms/Zoom a la extensión del recinto (por inundación)** está deshabilitada.

1. Pulsa el botón de datos dentro de un recinto para seleccionarlo. Mantén pulsada la tecla Control para añadir recintos a la selección o quitarlos de ella.
2. Pulsa el botón de reset para vaciar la selección.
3. Pulsa la barra espaciadora para aceptar la selección.

La orden ajusta la vista a la ventana que engloba las entidades del contorno exterior de los recintos seleccionados y termina. Pulsa Escape para cancelar la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](zoome-r.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Zooms/Zoom a la extensión del recinto (por inundación) |
| Barra de herramientas en la que aparece la orden | Zooms |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md) |
| Nombre interno | {8E5DA4E4-9A06-43a8-A94A-4EFD9A16BCB7} |

