# XYZLINEA
<!-- id: xyzlinea -->

Añade vértices a la orden que se esté ejecutando.

## Parámetros.

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) con una línea en curso. Si no es así, la orden muestra un aviso y termina.

Los vértices añadidos se extraen de una línea o polígono seleccionado con el pulsador de datos o con el pulsador de tentativo. La orden añade primero el vértice más cercano al punto señalado. Las teclas `+` y `-` avanzan o retroceden un vértice; al retroceder sobre un vértice ya añadido, la orden lo quita. Los vértices añadidos conservan sus coordenadas X, Y y Z.

Al pulsar la barra de espacio se finaliza la orden y se introducen los vértices en la entidad que se estuviera ejecutando previamente. Si finalizas la orden con el botón Data, genera además de un vértice en el punto donde se realizó el Data.

## Características de la orden

| Tipo de orden | [Orden interactiva](xyzlinea.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)<br>[XYLINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xylinea.md) |
| Nombre interno | {7FB50BE4-62C9-4af6-9B30-C2DA6249B3F1} |

