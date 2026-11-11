# Sending coordinates by serial port
<!-- id: envio-de-coordenadas-por-puerto-serie -->
<!-- origen: c6c120b26c7cb063771e05a76b16dcbb135127d6 -->

Configures transmission of photogrammetric window coordinates through the serial port.

Configure these options in the **[Configuration](../README.md)** dialog.

## When coordinates are sent

The active photogrammetric window sends a line with the cursor coordinates when the Data button or pedal is pressed or released and when the input device moves the cursor. If the value of [Milliseconds of standby for continuous mode](milisegundos-de-espera-para-modo-continuo.md) is not 0, Digi3D.AI does not send the lines triggered by cursor movements during that wait, which starts when the Data button or pedal is pressed. Each line includes the state of the Data button or pedal, which is 0 when the button or pedal is released.

When Digi3D.AI moves the cursor by itself (for example, during an animated scroll or when changing model, camera or orientation), it sends a line with the Data button or pedal state equal to 0 if the button or pedal is released, and sends no line if it is pressed.
