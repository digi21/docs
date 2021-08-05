# Envíanos un archivo C2V

Los archivos **C**lient**2V**endor contienen el estado de tu llave de protección y es lo que necesitamos para poder hacer modificaciones remotamente.

Cuando hagamos la modificación en tu llave, te enviaremos un archivo **V**endor**2C**lient con el que podrás actualizar tu llave de protección tal y como se explica en [Recibido archivo C2V](recibido-archivo-v2c.md).

Para generar un archivo C2V necesitamos que sigas los siguientes pasos **en la máquina donde esté ubicada la llave**, es decir, si la llave está en un servidor, tendrás que hacer \(o el administrador del sistema\) este procedimiento con una sesión de escritorio remoto en dicho servidor, si la llave la tienes en local, podrás hacerlo en tu propia máquina:

1. Descarga ejecuta el programa [ActualizarLlaveLDK.exe](http://digi21.blob.core.windows.net/download/ActualizarLlaveLDK.exe) Este programa sirve para analizar tu llave de protección y crear un archivo que nos va a permitir reprogramarla remotamente.
2. Aparecerá el programa _Sentinel HASP RUS_. Este programa tiene dos pestañas: _Collect Key Status Information_ y _Apply License Update_.
3. En la pestaña _Collect Key Status Information_ pulsa el botón _Collect Information._
4. Aparece el cuadro de diálogo _Save Key Status As_. Este cuadro de diálogo te va a permitir indicar la ubicación y nombre del archivo _.c2v_ que nos vas a enviar.
5. Indica la ubicación y nombre del archivo _.c2v_ a crear.
6. Envíanos el archivo que acabas de crear a la dirección de correo electrónico: [info@digi21.net](mailto:info@digi21.net) o a la dirección de correo desde la que te hemos solicitado el archivo C2V.



