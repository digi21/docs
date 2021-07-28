# Editar un trazado

[Ficha de herramientas Trazado](../../fichas-de-herramientas/untitled-255.md)

El programa permite editar gráficamente un trazado existente seleccionando la herramienta Editar de la [Ficha de herramientas Trazado](../../fichas-de-herramientas/untitled-255.md).

Para ello se deberá seleccionar con el botón izquierdo del ratón el trazado que se desea editar. Una vez seleccionado el trazado a editar se deberá seleccionar, también con el botón izquierdo del ratón, el punto que se desea mover. Si no se seleccionará el punto deseado, porque otro se encuentra en la misma zona, puede pulsar el botón derecho del ratón para que el programa siga buscando otro punto en la misma zona.

Una vez seleccionado el punto, se podrá mover arrastrando con el ratón teniendo el botón izquierdo pulsado.

El comportamiento de la aplicación para calcular el nuevo trazado variará en función del tipo de punto seleccionado y sus propiedades:

* Si se edita un punto tangente de una curva que no sea una clotoide, se variará el radio del elemento curvo al que pertenece sin modificar la dirección de las tangentes.
* Si se edita un punto tangente de una curva que sí sea una clotoide, se variará el parámetro de la clotoide sin variar ni el radio del elemento curvo central ni la dirección de las tangentes.
* Si se modifica el vértice que contiene un elemento curvo, se modificará la dirección de las tangentes, sin modificar el valor del radio.

