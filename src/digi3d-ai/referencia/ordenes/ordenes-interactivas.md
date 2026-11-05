# Órdenes interactivas
<!-- id: ordenes-interactivas -->

Estas órdenes requieren que digitalices un punto con el dispositivo de entrada o que introduzcas valores en cuadros de diálogo o ventanas.

Una orden interactiva permanece en la [pila de órdenes](apilar-y-desapilar-ordenes.md) mientras espera tus datos, a diferencia de una [orden no interactiva](ordenes-no-interactivas.md), que se ejecuta y termina sin pedirte ningún dato, y de una [variable](variables/README.md), que cambia o consulta un valor de configuración. Algunas órdenes interactivas terminan al recibir los datos que solicitan; otras permanecen activas para solicitar más puntos o selecciones hasta que las [cancelas](formas-de-cancelar-una-orden.md).

La fila **Tipo de orden** de la tabla **Características de la orden** de cada página indica si la orden es interactiva. La fila **Repite automáticamente** indica si Digi3D.AI vuelve a ejecutar la orden cuando la orden termina, sin que tengas que escribirla otra vez.

Algunas órdenes son interactivas si se ejecutan sin parámetros y no interactivas si se ejecutan con parámetros. La fila **Tipo de orden** de esas órdenes indica si son interactivas cuando se ejecutan con parámetros o sin parámetros.