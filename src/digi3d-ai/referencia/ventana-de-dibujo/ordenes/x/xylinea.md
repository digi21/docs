# XYLINEA

Esta orden añade vértices a la orden que se esté ejecutando. Estos vértices añadidos se extraen de una línea seleccionada al estilo de la orden EDITAR, con las teclas + y - se van añadiendo vértices (respetando la Z activa).
			Al pulsar la barra de espacio se finaliza la orden y se introducen los vértices en la entidad que se estuviera ejecutando previamente. También se puede finalizar la orden con el botón de Data, lo que genera además un vértice en el punto donde se realizó el Data.

## Parámetros

No admite parámetros.

## Observaciones

Es necesario que se esté ejecutando la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) con una línea en curso. Si no es así, la orden muestra un aviso y termina.

Selecciona la línea o el polígono de origen con el pulsador de datos o con el pulsador de tentativo. La orden añade el vértice más cercano al punto señalado. Las teclas `+` y `-` avanzan o retroceden un vértice; al retroceder sobre un vértice ya añadido, la orden lo quita. Los vértices añadidos toman la X y la Y de la línea seleccionada y la Z del cursor.

## Características de la orden

| Tipo de orden | [Orden interactiva](xylinea.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {4BF00D56-60C1-4D66-B58D-5E8FE5781B22} |
