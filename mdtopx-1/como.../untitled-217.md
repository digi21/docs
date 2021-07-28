# Cubicación

[Herramientas MDT Productos civil](../fichas-de-herramientas/untitled-249/untitled-261.md)

La cubicación se calcula entre dos modelos digitales correspondientes a una misma zona en características o tiempos diferentes. Es decir, se podrá calcular la cubicación entre un terreno original y el mismo terreno después de hecha una excavación. Los modelos digitales deben estar previamente calculados y se debe de disponer de un fichero que tenga una línea cerrada delimitando la zona a calcular la cubicación.

Se tomará como modelo digital del terreno antiguo el documento activo, por lo que dicho documento tendrá que tener formato MDT. El modelo digital correspondiente a la situación posterior del terreno deberá estar almacenado como archivo.

Existe la posibilidad de proyectar perfiles sobre la cubicación. Para ello, se deberá activar su casilla y se podrá seleccionar un fichero almacenado previamente con las líneas que servirán para trazar los perfiles o indicar al programa que calcule automáticamente un conjunto de perfiles horizontales o verticales.

La llamada a esta herramienta se puede hacer de las siguientes formas:

* Pulsar el botón  Cubicación de la ficha de [Herramientas MDT](../fichas-de-herramientas/untitled-249/).
* Pulsar la combinación de teclas \[CTRL\] + \[B\].

Al ejecutar esta herramienta, se abrirá un [cuadro de diálogo ](../herramientas-mdt/untitled-88/)para indicar las opciones de triangulación. Si el botón Aceptar es pulsado, el programa calculara la cubicación, generando los siguientes archivos:

* Si el modo de cálculo elegido es el de Intersección de triángulos se generará un archivo con la cubicación y las áreas coloreadas según sean de desmonte o terraplén. Este documento tendrá formato de modelo digital y estará formado por triángulos con cota la diferencia entre ambos modelos digitales. Además, se mostrarán las superficies en desmonte y terraplén con diferentes colores:
  * La superficie en desmonte se mostrará de color verde
  * La superficie en terraplén se mostrará de color rojo
  * La superficie donde no se ha actuado se mostrará de color azul

Por otro lado, esta vista coloreada del documento calculado podrá ser salvada, posteriormente, como una [imagen ráster](../herramientas-de-edicion-de-la-triangulacion/untitled-260.md).

* Si el modo de cálculo elegido es el de Rejilla se generará un archivo de dibujo con los puntos de la rejilla donde se han proyectado los puntos. Estos puntos tendrán código TERRAPLEN si están en terraplén, DESMONTE si están en desmonte y NADA si la cota en los dos modelos digitales es la misma.
* Si se decide Trazar perfiles, se generarán otros dos documentos, con formato de fichero de dibujo, con los perfiles proyectados sobre ambos modelos digitales en planta y en alzado
* Si se decide tener un Fichero con informe, se generará un archivo en formato ASCII, con los resultados de la cubicación de todos los prismas generados, así como los resultados totales.

Esta herramienta tiene la posibilidad de ser ejecutada desde la [línea de comandos](../untitled-277/untitled-216.md).

Si lo desea, puede consultar cómo calcular una cubicación en el [Ejemplo 3: Cálculo de un movimiento de tierras](../untitled-242/untitled-239.md)

