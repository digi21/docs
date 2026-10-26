# XYLINEA
<!-- id: xylinea -->

Esta orden añade vértices a la línea que estás digitalizando. Los vértices se extraen de una línea seleccionada, como en la orden EDITAR. Pulsa las teclas + y - para añadir vértices con la Z activa.
			Pulsa la barra de espacio para finalizar la orden e introducir los vértices en la línea que estabas digitalizando. También puedes finalizar la orden con el botón de Data; en ese caso, la orden añade además un vértice en el punto donde pulses ese botón.

## Parámetros

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) con una línea en curso. Si no es así, la orden muestra un aviso y termina.

Selecciona la línea o el polígono de origen con el pulsador de datos o con el pulsador de tentativo. La orden añade el vértice más cercano al punto señalado. Las teclas `+` y `-` avanzan o retroceden un vértice; al retroceder sobre un vértice ya añadido, la orden lo quita. Los vértices añadidos toman la X y la Y de la línea seleccionada y la Z del cursor.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md)<br>[XYZLINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xyzlinea.md) |
| Nombre interno | {4BF00D56-60C1-4D66-B58D-5E8FE5781B22} |
