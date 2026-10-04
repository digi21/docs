# Adjuntando archivos a un tique de soporte técnico
<!-- id: adjuntando-archivos-grandes-soporte-tecnico -->

Los archivos se adjuntan dentro del propio tique, al crearlo o al responder. No hay límite de tamaño por archivo ni por mensaje: puedes adjuntar imágenes de un vuelo o archivos _.las_ completos.

## Cómo se suben los archivos

El navegador envía cada archivo directamente al almacenamiento de Digi21 en Azure, en bloques de 8 MB. Los archivos no pasan por el servidor web. Si el envío de un bloque falla, el navegador lo repite hasta completar 3 intentos.

Durante la subida:

* Cada archivo muestra una barra de progreso.
* **No cierres la página ni el navegador** hasta que termine la subida. Si la cierras, la subida se interrumpe y no se reanuda: tendrás que volver a adjuntar los archivos.
* La subida tiene que terminar en 48 horas. Pasado ese plazo, el permiso de escritura caduca.

## Adjuntar archivos al crear un tique

1. En el formulario **Crear ticket de soporte**, arrastra los archivos a la zona **Archivos adjuntos** o haz clic en ella para seleccionarlos. Puedes añadir varios archivos.
2. Pulsa el botón **Crear ticket**.

La web crea primero el tique, muestra el mensaje _Ticket #número creado. Subiendo adjuntos…_ y después sube los archivos. Cuando termina, abre la página del tique.

Si la subida falla, el tique queda creado sin los archivos. La web muestra el mensaje _El ticket #número se ha creado, pero los adjuntos no se han subido_ y un enlace al tique. Abre el tique con ese enlace y adjunta los archivos en una respuesta.

## Adjuntar archivos al responder

1. Abre el tique.
2. En la sección **Responder**, arrastra los archivos a la zona de adjuntos o haz clic en ella para seleccionarlos.
3. Escribe un mensaje, si quieres. Un mensaje puede llevar solo archivos.
4. Pulsa el botón **Enviar respuesta**.

La web muestra _Subiendo adjuntos…_ mientras sube los archivos y _Enviando…_ mientras guarda el mensaje. Al terminar, recarga la página con el mensaje nuevo.

Si la subida falla, el mensaje no se envía. La web muestra el error y vuelve a activar el botón **Enviar respuesta**. Púlsalo otra vez para repetir el envío.

## Descargar los archivos de un tique

Cada archivo adjunto aparece en el tique, debajo del mensaje que lo lleva, con su nombre y su tamaño. Haz clic en el nombre para descargarlo.

Para descargar varios archivos a la vez:

* El botón **Descargar los _N_ adjuntos en un ZIP** descarga todos los archivos del tique. Si los archivos están en varios mensajes, el ZIP tiene una carpeta por mensaje, con el número del mensaje, la fecha y el autor.
* El botón **Descargar los _N_ en un ZIP**, debajo de un mensaje, descarga solo los archivos de ese mensaje.

El servidor genera el ZIP mientras lo descarga. Por eso:

* El navegador no muestra el porcentaje descargado ni el tamaño total.
* Si la descarga se corta, no se puede reanudar: hay que empezar de nuevo. Con archivos muy grandes, descarga los archivos uno a uno; esas descargas sí se pueden reanudar.

Los archivos van dentro del ZIP sin comprimir. El Explorador de Windows abre el ZIP aunque supere 4 GB.

## Enviar archivos sin tique

Para enviar archivos a Digi21 que no tienen que ver con un tique, usa la página [Enviar archivos a Digi21](https://www.digi21.net/Soporte/EnviarArchivos). Esa página no necesita una cuenta: confirma tu correo electrónico con un código. Si los archivos son de un tique, adjúntalos en el tique.
