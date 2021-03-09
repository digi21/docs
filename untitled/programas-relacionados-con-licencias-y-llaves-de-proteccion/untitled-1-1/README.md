# Activar ordenador Offline

Este programa realiza la misma función que el programa [Activar ordenador](ActivarOrdenador.html) pero en ordenadores que tienen restringido el acceso a Internet.

  
El proceso de activación siempre requiere acceso a Internet, pero con este programa se elimina el requisito de que el ordenador que se está activando tenga acceso a internet, y ese requisito se traslada a otro programa que puede ejecutarse en otro ordenador que sí que tiene acceso a Internet.

Supongamos que disponemos de dos ordenadores: _A_ y _B_. Queremos activar el ordenador _A_ en una determinada llave de protección conectada o accesible por la red a este ordenador, pero este ordenador tiene restricciones de acceso a internet. El ordenador _B_ es un ordenador \(posíblente gestionado por el administrador de la red\) que sí que tiene acceso a Internet.

  
El proceso de activación consite en tres fases:

1. En el ordenador **A** ejecutamos el programa **Activar Ordenador Offline** y generamos un **Archivo de solicitud de activación**.
2. En el ordenador **B** ejecutamos el programa **Crear Archivo de Activación**  que analiza el archivo generado en el paso anterior y se comunica con nuestros servidores y genera un **Archivo de Activación de Ordenador**.
3. En el ordenador **A** ejecutamos el programa **Activar Ordenador Offline** que activará el ordenador en la llave de protección con archivo creado en el paso anterior.

Vea también

