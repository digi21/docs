# Envío de coordenadas por puerto serie
<!-- id: envio-de-coordenadas-por-puerto-serie -->

Configura el envío de las coordenadas de la ventana fotogramétrica a través del puerto serie.

Configura estas opciones desde el cuadro de diálogo de **[Configuración](../README.md)**.

## Cuándo se envían las coordenadas

La ventana fotogramétrica activa envía una línea con las coordenadas del cursor al pulsar o soltar el botón o pedal de Dato y cuando el dispositivo de entrada mueve el cursor. Si el valor de [Milisegundos de espera para modo continuo](milisegundos-de-espera-para-modo-continuo.md) es distinto de 0, Digi3D.AI no envía las líneas provocadas por los movimientos del cursor durante esa espera, que empieza al pulsar el botón o pedal de Dato. Cada línea incluye el estado del botón o pedal de Dato, que es 0 con el botón o pedal suelto.

Cuando Digi3D.AI mueve el cursor por sí mismo (por ejemplo, durante un desplazamiento animado o al cambiar de modelo, de cámara o de orientación), envía una línea con el estado del botón o pedal de Dato igual a 0 si el botón o pedal está suelto, y no envía ninguna línea si está pulsado.
