# Triangulación

[Ficha de Herramientas MDT](../fichas-de-herramientas/untitled-249/)

La triangulación es una relación entre entidades geográficas registradas de forma digital. Esta relación está basada en el principio matemático de la triangulación de Delaunay o polígonos de Thiessen, que dice que los triángulos generados a partir de los puntos disponibles mediante este algoritmo serán lo más equiláteros posibles, generándose los mismos independientemente del punto origen del cálculo.

A partir de este algoritmo, se establece una relación de vecindad entre los puntos que deberá ser recíproca, generando los múltiples triángulos.

Para cimentar la autenticidad de esta triangulación con respecto al terreno original, el algoritmo considera la existencia de líneas de ruptura, líneas que en el terreno definen un cambio de pendiente. Dichas líneas, no podrán ser "atravesadas" por ningún triángulo, debiendo ser obligatoriamente, lado de algunos de los triángulos del modelo digital final.

Por tanto, para que el modelo digital generado, sea lo más ajustado posible al terreno original, es necesario, a parte de buena distribución de la información altimétrica del terreno, una buena definición de las líneas de ruptura definitorias del terreno. Estas líneas pueden ser divisorias, vaguadas, caminos, carreteras, taludes, etc.

La herramienta Triangulación se basa en este algoritmo para el cálculo. Para ejecutarla se puede hacer de las siguientes formas:

* Pulsar el botón Triangular de la ficha de herramientas [Herramientas MDT](../fichas-de-herramientas/untitled-249/).
* Pulsar la combinación de teclas \[CTRL\] + \[T\].

Al ejecutar esta herramienta, se abrirá un [cuadro de diálogo ](../herramientas-mdt/untitled-209.md)para indicar las opciones de triangulación. Si el botón Aceptar es pulsado, el programa calculará la triangulación, generando el modelo digital del terreno en un nuevo documento, visualizándolo en pantalla. Este documento se podrá almacenar en formato MDTop, DIGI, DXF o DGN. Si es almacenado en formato MDTop se guardarán los triángulos para poder calcular en una sesión posterior. Si, por el contrario, se salva en formato DIGI o DGN, se salvará sólo como un dibujo en el cuál sólo hay entidades cerradas de 4 puntos; en el caso de salvar en formato DXF, se salvarán los triángulos como entidades 3DFACE. Si no se salva en formato MDTop, se perderán las condiciones para poder ser utilizado posteriormente en cálculos con modelos digitales, ya que se tratarán sólo de dibujos.

Esta herramienta tiene la posibilidad de ser ejecutada desde la [línea de comandos](../untitled-277/untitled-325.md).

