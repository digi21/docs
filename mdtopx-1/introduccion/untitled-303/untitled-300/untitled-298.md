# Panel Propiedades Documento TIN

[Panel Propiedades](./)

En este panel aparece la información referente al modelo digital actual. En él se pueden observar las siguientes características:

* Puntos: Número de puntos que forman el modelo, es decir, los vértices de los triángulos
* Triángulos: Número de triángulos que forman el modelo digital. La relación entre ambos es aproximadamente del doble de triángulos que de puntos.
* Líneas de ruptura: Cantidad de líneas de ruptura. Cada línea de ruptura será a su vez lado de triángulo
* Borrados: Número de puntos borrados. Para eliminar completamente esta información, se debe utilizar el comando Comprimir de la cinta de [Herramientas Editar](../../../fichas-de-herramientas/untitled-248/)
* Límites: Las coordenadas máximas y mínimas en las que está encuadrado el modelo digital
* Lista de códigos de líneas de ruptura: Se muestra un listado con las líneas de ruptura que se han contemplado en el modelo digital. Este listado se muestra subdividido entre códigos existentes y no existentes, en función de si están incluidos en la [lista de códigos](../../../otras-herramientas/listacodigos/) del programa. Cada código se presenta con un nombre y su tipo. Estos códigos se pueden eliminar del modelo digital, lo cual significa que el programa quitaría la propiedad de línea de ruptura de los lados de triángulos que tuvieran el código elegido. Para ello se deberá seleccionar el código o códigos y pulsar el botón X de la barra de herramientas superior del panel. Si el código no estuviera almacenado en la lista de códigos de visualización del programa se podrá añadir a esta lista pulsando el botón + de la misma barra.

