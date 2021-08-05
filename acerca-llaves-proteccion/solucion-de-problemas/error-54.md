# Error 54

Si nos has enviado un archivo .v2c y aparece el siguiente error al pulsar el botón _Apply File_ del paso 5 del enlace correspondiente a [Recibido archivo V2C](../procedimientos/untitled.md):

**Error 54**: Intentando instalar un archivo .v2c con un contador de actualización que está fuera de secuencia con el contador de actualización de la clave de protección sentinel. El valor del contador de actualización en el archivo .v2c es menor que el valor de la clave de protección del sentinel.

Este error aparece cuando has intentado actualizar la llave de protección en una fecha posterior a la recepción del archivo .v2c. Nuestro servidor supone que la llave se había programado en la fecha de recepción del archivo .v2c y por lo tanto su número de programaciones se había incrementado. Como no se hizo, existe una discordancia. La única manera de solucionar el problema es que nos vuelvas a enviar el archivo y formateemos la llave para ponerlo a 0 para volver a programar.

## Solución

Envía otra vez el archivo .c2v pero recién generado.

