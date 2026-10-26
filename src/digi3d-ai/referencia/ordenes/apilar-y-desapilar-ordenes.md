# Apilar y desapilar órdenes
<!-- id: apilar-y-desapilar-ordenes -->

Digi3D.AI almacena las órdenes en una pila.

Cuando ejecutas una orden, Digi3D.AI la almacena en la parte superior de la pila de órdenes. Cuando la orden finaliza, Digi3D.AI quita la orden de la pila. Cuando la pila está vacía, el programa se considera en [modo preparado](formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md).

Las órdenes se retiran de la pila en orden inverso al de su ejecución. Si ejecutas una primera orden, después una segunda y, por último, una tercera, al desapilar se retira primero la tercera, después la segunda y, por último, la primera.

Si ejecutas otra orden antes de que finalice la orden en curso, la nueva orden se apila sobre la anterior. Cuando finaliza la nueva orden, puedes continuar con la orden interrumpida.

## Vídeo

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/apilar_desapilar_ordenes.mp4" type="video/mp4"></video>
