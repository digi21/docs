# Elementos

[Ficha de herramientas Editar](./)

En este epígrafe están agrupados los comandos relativos a la edición de elementos del documento activo:

* **Información**: Herramienta para ofrecer información acerca del elemento seleccionado, ya sea perteneciente a un [dibujo ](../../otras-herramientas/editar-elementos/informacion-de-linea.md)o un [triángulo](../../otras-herramientas/editar-elementos/informacion-de-triangulo.md). Con el botón de la izquierda se selecciona el elemento deseado y se acepta y con el botón de la derecha se deselecciona o se intenta buscar otro elemento en la misma localización. También se puede deseleccionar pulsando la tecla \[ESC\].
* **Medir**: Herramienta medir la distancia entre puntos indicados en pantalla. La información parcial se va mostrando en la [barra de estado ](../../introduccion/barra-de-estado.md)del programa, mostrando los incrementos de coordenadas. Los puntos se irán seleccionando con el botón izquierdo del ratón y se finalizará pulsando el botón derecho del ratón. Al finalizar se mostrará la distancia total medida en el [panel de Resultados](../../introduccion/paneles-de-la-aplicacion/panel-resultados.md). Tiene varias opciones:
  * _Medir_: Permite medir una línea poligonal de varios puntos, mostrando la distancia tanto en 2D como en 3D
  * _2 puntos en 3D_: Permite medir únicamente dos puntos en 3D. Ambos puntos se indicarán con el botón izquierdo del ratón.
  * _2 puntos en XY_: Permite medir únicamente dos puntos en 2D. Ambos puntos se indicarán con el botón izquierdo del ratón.
  * _2 puntos en Z_: Permite medir únicamente dos puntos como diferencia de cota. Ambos puntos se indicarán con el botón izquierdo del ratón.
* **Borrar**: Con esta opción se pueden borrar elementos de un dibujo o triángulos. En el caso de que el documento activo sea un modelo digital, se podrán borrar varios triángulos a la vez pulsando el botón izquierdo del ratón y arrastrando éste sin soltar describiendo una recta; todos los triángulos atravesados por dicha recta serán borrados. Una vez que se han seleccionado los elementos a borrar se puede proceder pulsando nuevamente el botón izquierdo del ratón o rechazar la selección pulsando el botón derecho o la tecla \[ESC\]. Esta herramienta puede ser seleccionada pulsando la tecla \[SUPR\]. Tiene dos opciones:
  * _Entidades_: Para borrar elementos de dibujo o triángulos.
  * _Atributos_: Para borrar atributos de elementos de dibujo. Los atributos se pueden consultar desde el [cuadro de información de línea](../../otras-herramientas/editar-elementos/informacion-de-linea.md). 
* **Seleccionar**: Este comando muestra un menú donde se puede elegir la forma de seleccionar elementos gráficamente. Cada vez que se realice una nueva selección, se descartará la selección actualmente activa, excepto si se mantiene pulsada la tecla mayúscula durante la selección. Las opciones posibles son las siguientes:
  * _Mediante ventana rectangular_: Permite la selección de elementos describiendo una ventana rectangular definida por una de sus diagonales
  * _Mediante ventana circular_: Permite la selección de elementos describiendo un círculo definido por su centro y el radio
  * _Mediante ventana irregular_: Permite la selección de elementos describiendo una entidad cerrada definida por sus vértices. Los vértices se indicarán con el botón izquierdo del ratón y se finalizará con el botón derecho
  * \_\_[_Según coordenadas_](../../otras-herramientas/editar-elementos/seleccionar-segun-coordenadas.md): Permite la selección en función de las coordenadas de las entidades.
  * \_\_[_Según propiedades_](../../otras-herramientas/editar-elementos/seleccionar-segun-propiedades.md): Permite la selección en función de las propiedades de las entidades.
  * _Desde archivo_: Permite la selección de elementos que están dentro de entidades cerradas que se encuentren almacenadas en un fichero con geometría vectorial. Al ejecutar el comando, el programa abrirá el explorador de Windows para que se elija el documento desde donde leer las geometrías.
  * _Todas las entidades_: Permite la selección de todas las entidades del documento.
  * _Invertir selección_: Una vez que se ha realizado una selección de elementos, el programa permite invertir ésta, seleccionando los elementos no seleccionados anteriormente y viceversa
* \*\*\*\*[**Cambia código**](../../otras-herramientas/editar-elementos/cambia-codigo.md): Esta herramienta permite cambiar masivamente un código de dibujo por otro. Sólo estará activa si el documento actual es un modelo digital o un dibujo.
* \*\*\*\*[**Seleccionar código**](../../otras-herramientas/editar-elementos/seleccionar-codigo.md): Con esta herramienta se puede generar un nuevo documento de dibujo con las entidades de los códigos seleccionados.
* **Unir**: Se dispone de tres opciones:
  * _Juntar todas_: Esta herramienta permite unir todas las entidades de dibujo que están conectadas en alguno de sus extremos, generando una entidad continua única. Sólo estará activa si el documento actual es un dibujo. Para que el programa pueda unir dos entidades se tienen que cumplir las siguientes condiciones:
    * Que las dos entidades tengan el mismo código.
    * Que las entidades tengan en común al menos uno de sus extremos.
    * Que no haya ninguna otra entidad que también tenga en común el extremo de unión.
  * _Seleccionar para unir_: Esta herramienta permite unir entidades de dibujo que están conectadas en alguno de sus extremos, generando una entidad continua única. Sólo estará activa si el documento actual es un dibujo. Para que el programa pueda unir dos entidades se tienen que cumplir las mismas condiciones que en la unión automática de todo el fichero.
  * \_\_[_Juntar entidades cercanas_](../../otras-herramientas/editar-elementos/juntar-entidades-cercanas.md): Mediante esta herramienta se pueden juntar entidades en función de la cercanía de sus extremos.
* **Superficies**: Se tienen cinco herramientas para la gestión de entidades poligonales cerradas o superficies:
  * _Juntar todas_: Permite unir todas las superficies con solape.
  * _Seleccionar para unir_: Permite al usuario seleccionar qué superficies se desean unir. La selección se hará con el botón izquierdo del ratón.
  * _Restar_: Permite al usuario eliminar de una superficie la zona ocupada por otra, seleccionando ambas en la pantalla. Primero se deberá seleccionar la superficie donde se desea resta y, posteriormente, la superficie que actuará de solape.
  * _Área común_: Permite calcular la zona de solape entre dos superficies.
  * _Buscar islas_: Permite codificar las superficies entre islas y no islas. Las islas son superficies enteramente contenidas en otras superficies; se codificarán con el código _LIMINT_. El resto se codificarán con el código _LIMEXT_.
* \*\*\*\*[**Generaliza**](../../otras-herramientas/editar-elementos/generalizar-entidades.md): Esta herramienta permite generalizar tanto lineal como superficialmente las entidades gráficas de un documento de dibujo, es decir, eliminar puntos innecesarios para su definición geométrica a una determinada escala. Por tanto, sólo estará activa si el documento actual es un dibujo.
* \*\*\*\*[**Suavizado**](../../otras-herramientas/editar-elementos/suavizado-de-entidades.md): Esta herramienta permite suavizar la geometría de las entidades lineales, mejorando zonas excesivamente quebradas.
* **Editar línea**: Esta herramienta permite editar gráficamente una entidad lineal. Se deberá seleccionar la línea mediante el botón izquierdo del ratón. Una vez iluminada la entidad requerida, se podrá pulsar con el botón izquierdo del ratón sobre el punto que se desea editar. El punto se iluminará igualmente y el usuario podrá moverlo gráficamente pulsando con el botón izquierdo del ratón y, sin soltarlo, mover el ratón. Estando seleccionado el punto, el usuario podrá eliminarlo pulsando la tecla \[SUPR\]. Asimismo, podrá insertar puntos nuevos sobre la posición del ratón actual, pulsando la tecla \[INS\]. Se saldrá de la edición, pulsando el botón derecho o la tecla \[ESC\].
* **Mover entidad**: Esta herramienta permite mover gráficamente una entidad. Se deberá seleccionar la entidad mediante el botón izquierdo del ratón. Una vez iluminada la entidad requerida, el usuario podrá moverla gráficamente pulsando con el botón izquierdo del ratón y, sin soltarlo, mover el ratón. Se saldrá de la edición, pulsando el botón derecho o la tecla \[ESC\].
* \*\*\*\*[**Paralela**](../../otras-herramientas/editar-elementos/paralela.md): Mediante esta herramienta es posible generar entidades paralelas de una línea
* **Extender**: Mediante esta herramienta se puede extender el primer o último tramo de una línea poligonal hasta intersecar con una segunda línea. La manera de actuar sería seleccionando primeramente la entidad que hará de límite y, a continuación, la entidad que se desea extender.
* **Ajustar una línea**: Mediante este herramienta se puede calcular la recta que mejor se ajusta a un conjunto de puntos.
* \*\*\*\*[**Borrar huecos**](../../otras-herramientas/editar-elementos/borrar-huecos.md): Mediante esta herramienta se pueden eliminar convexidades o concavidades de una entidad lineal.
* **Tramificar**: Mediante esta herramienta es posible generar subdivisiones en las intersecciones entre entidades lineales.

En esta ficha de herramientas existen comandos adicionales que no se muestran pero que puede ser agregados a la [barra de herramientas de acceso rápido ](../../cinta-de-herramientas/barra-de-herramientas-de-acceso-rapido.md)o ser llamados mediante [teclas rápidas asociadas ](../../introduccion/teclas-rapidas.md)y que son:

* **Deshacer**: Este comando sirve para deshacer la última modificación realizada sobre el documento actual. La tecla asociada es \[CTRL\]+\[Z\].
* **Rehacer**: Este comando sirve para rehacer la última operación deshecha sobre el documento actual. La tecla asociada es \[CTRL\]+\[Y\].

