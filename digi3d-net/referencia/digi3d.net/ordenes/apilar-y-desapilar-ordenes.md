# Apilar y desapilar órdenes

Digi3D.NET almacena las órdenes en una pila.

Cuando ejecutamos una orden, Digi3D.NET almacena dicha orden en la parte superior de la pila de órdenes. Una vez finaliza esta orden, la quita de la pila de órdenes. Cuando la pila está vacía, el programa se considera en [modo preparado](formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md).

Podemos pensar en la pila de órdenes como una pila de platos: Si ponemos primero un plato blanco, encima de este uno amarillo y encima de este uno rojo, al desapilar, quitaremos primero el rojo, luego el amarillo y por último el blanco.

Si se está ejecutando una orden y antes de finalizarla ejecutamos otra, la segunda se apilará sobre la primera. Cuando finalicemos la segunda podremos continuar con la primera.

## Vídeo

{% embed url="https://digi21.blob.core.windows.net/videos-ayuda/apilar\_desapilar\_ordenes.mp4" %}





