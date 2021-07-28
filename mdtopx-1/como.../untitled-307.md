# Plataformas

[Herramientas MDT Productos civil](../fichas-de-herramientas/untitled-249/untitled-261.md)

Esta herramienta esta indicada para proyectar sobre el modelo digital entidades cerradas que representan plataformas o superficies cerradas cuya inclinación y altitud está indicada por la cota de los vértices que definen su contorno. Este podría ser el caso de proyectar una superficie a una determinada altura, por ejemplo, un vertedero o excavación tópica de obras de arquitectura o una cantera.

La herramienta puede funcionar con dos tipos de datos:

* Proporcionar al programa la línea límite de la plataforma a la cota que se ha diseñado. Por ejemplo, dar al programa el límite de una explanación que deberá tener cota 675.56 m y que el programa calcule los taludes y la intersección con el terreno. Por tanto, se conoce el límite de la plataforma y el programa calculará la intersección con el terreno. En este caso, la línea límite de la plataforma deberá tener cota.
* Proporcionar al programa la línea intersección con el terreno y que calcule dónde estaría la plataforma a una determinada cota. Por ejemplo, se le da al programa la línea límite intersección con el terreno a partir de la cual se van a calcular los taludes para llegar a una plataforma que deberá estar a cota 650 m. Por tanto, se conoce la intersección con el terreno y el programa calculará el límite de la plataforma. No es necesario que tenga cota la línea intersección con el terreno, porque el programa la proyectará sobre el MDT.

Para utilizar la herramienta se precisa de tener activo un documento que contenga el MDT con el terreno natural realizado previamente con la herramienta correspondiente.

El programa precisará de un documento de dibujo guardado en disco y lo utilizará para generar un nuevo MDT con la superficie proyectada, teniendo la posibilidad de calcular la cubicación respecto del MDT con el terreno original.

La llamada a esta herramienta se puede hacer de las siguientes formas:

* Pulsar el botón Plataformas de la ficha de [Herramientas MDT](../fichas-de-herramientas/untitled-249/).
* Pulsar la combinación de teclas \[CTRL\] + \[L\].

Cuando se llame, se mostrará un [cuadro de diálogo](../herramientas-mdt/untitled-174.md), para indicar las opciones de la proyección. Si el botón Aceptar es pulsado, el programa calculará la proyección de las plataformas que contiene el archivo, generando los siguientes archivos:

* Un documento con formato de modelo digital del terreno donde se habrá proyectado las plataformas sobre el MDT con el terreno natural utilizando, para ello, los taludes indicados en el cuadro de diálogo. Este MDT podrá ser utilizado posteriormente para, por ejemplo, realizar un curvado.
* Si se activó la posibilidad de calcular la cubicación, se generará otro documento con la cubicación y las áreas coloreadas según sean de desmonte o terraplén. Este documento tendrá formato de modelo digital y estará formado por triángulos con cota la diferencia entre ambos modelos digitales. Además, se mostrarán las superficies en desmonte y terraplén con diferentes colores:
  * La superficie en desmonte se mostrará de color verde
  * La superficie en terraplén se mostrará de color rojo
  * La superficie donde no se ha actuado se mostrará de color azul

