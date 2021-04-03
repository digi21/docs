# CORTAR\_POLIGONO

Recorta un polígono en varios polígonos en función de las intersecciones del polígono a recortar y la línea de corte.

## Parámetros

Esta orden no admite parámetros.

## Observaciones

Esta orden realiza las siguientes operaciones:

1. Solicita al usuario que seleccione el polígono a modificar. Únicamente se va a permitir seleccionar polígonos \(con o sin huecos\) del archivo de dibujo activo. No se permitirán seleccionar otro tipo de entidades o de archivos de referencia.
2. Solicita al usuario que seleccione la línea de corte.
3. Analiza las intersecciones entre el polígono seleccionado y la línea de corte.
   * Si la línea no intersecciona con el polígono lo comunica al usuario mediante un globo y no realiza ninguna operación.
   * Si la línea únicamente intersecciona con los huecos del polígono \(sin Inter seccionar con el límite de este\) se lo comunica al usuario mediante un globo y no realiza ninguna operación.
4. Recorta el polígono en función de las intersecciones calculadas con la línea de corte.

El polígono original será eliminado del archivo de dibujo.

Los polígonos generados tendrán el mismo código que el polígono original. En caso de tener enlace a base de datos, se conservará el índice del polígono.

## Características de la orden

| Tipo de orden | [Orden interactiva](cortar-poligono.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Editar/Polígonos/Recortar polígono |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

