# Rellenar huecos 3D
<!-- id: rellenar-huecos-3d -->

[Ficha de herramientas Edición TIN](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md)

Herramientas para tapar los huecos de una superficie 3D (un modelo digital obtenido con la [Triangulación 3D](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md), un MDT de una fachada, un objeto escaneado…). A diferencia de [Rellenar huecos](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md) del TIN, que vuelve a triangular en planta los puntos de la zona que se indica, estas herramientas trabajan en 3D: valen también para paredes, techos, voladizos y superficies cerradas.

Cada hueco se rellena así:

1. Se triangula su borde con los triángulos que menos se doblan respecto a los de alrededor.
2. Se añaden puntos nuevos en el interior, con la misma separación que tienen los puntos del borde.
3. Los puntos nuevos se recolocan para que el parche siga la curvatura de la superficie de alrededor: el hueco de una esfera se tapa con un casquete, no con un plano.

Los puntos y triángulos del parche se **añaden** al modelo digital: los que ya había no cambian, con sus líneas de ruptura, texturas y atributos. La operación se puede deshacer.

Hay tres herramientas:

* [**Rellenar huecos 3D**](#rellenar-huecos-3d-1): todos los huecos del modelo digital hasta un tamaño.
* [**Rellenar un hueco 3D**](#rellenar-un-hueco-3d): el hueco en el que se pincha, sea del tamaño que sea, o la parte de su borde que queda dentro de un círculo que se arrastra.
* [**Superficie sin huecos**](#superficie-sin-huecos): desde un documento TIN 3D (tetraedros), la superficie con sus huecos rellenos, como un modelo digital nuevo.

## Rellenar huecos 3D

Botón **Rellenar huecos 3D** del panel **Otros** de la ficha [Edición TIN](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md). Solo está activo con un modelo digital que tenga triángulos.

El programa pide el **diámetro máximo de los huecos**, en unidades del proyecto: se rellenan los huecos cuyo diámetro (la mayor distancia entre dos puntos de su borde) no lo supera. Con 0 no hay límite. Se recuerda el último valor, que es el mismo que el de la casilla «Rellenar huecos de diámetro hasta» de la [Triangulación 3D](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md). Como referencia, unas cinco veces la separación de los puntos tapa los huecos pequeños sin cerrar aberturas reales (la boca de un tubo, la base de un objeto…).

No se rellenan:

* **El borde exterior de cada pieza** de la superficie, que es su borde más largo: el contorno de un terreno, o la abertura de un tubo. Para rellenarlo, use [Rellenar un hueco 3D](#rellenar-un-hueco-3d).
* **Los huecos más grandes que el diámetro máximo.** El diámetro de una rendija alargada es su longitud, aunque sea estrecha.
* **Los huecos cuyo parche ocuparía más de la mitad de su pieza**, para no tapar un trozo suelto con otra capa encima.
* **Los huecos que tocan aristas de tres o más triángulos**, que aparecen donde la superficie tiene capas dobles (por ejemplo, la triangulación 3D por distancia máxima de una nube con varias pasadas solapadas). La [superficie por frente](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md) no tiene capas dobles.
* **Un triángulo suelto.**

Al terminar, la ventana de resultados muestra cuántos huecos se han rellenado de cuántos bordes tiene la superficie, cuántos eran demasiado grandes, cuántos eran bordes exteriores y cuántos tocaban aristas de tres o más triángulos, y los puntos y triángulos nuevos.

## Rellenar un hueco 3D

Botón **Rellenar un hueco 3D** del panel **Otros** de la ficha [Edición TIN](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/generar-a-partir-del-tin.md) (el icono con un 3 y la insignia roja y amarilla). Rellena el hueco que se indica en pantalla, sin límite de tamaño. La herramienta sigue activa para tapar otros huecos hasta que se elige otra. Antes de usarla, gire el modelo hasta ver bien el hueco: todo se decide sobre lo que se ve en pantalla, con la vista girada como esté.

Hay dos formas de indicar el hueco:

* **Pinchar** con el botón izquierdo del ratón dentro del hueco: se rellena el hueco entero.
* **Pinchar y arrastrar un círculo** sin soltar el botón: al soltarlo, se rellena solo la parte del borde del hueco que queda dentro del círculo, cerrada con líneas rectas entre sus extremos. Sirve para tapar solo un trozo de un hueco grande o alargado, o para los entrantes del contorno. El círculo se dibuja en pantalla mientras se arrastra; el botón derecho cancela el círculo sin rellenar nada. Un arrastre de menos de cinco píxeles cuenta como un clic.

### Pinchar dentro de un hueco

El programa busca los bordes de la superficie que, vistos en pantalla, rodean el punto pinchado y no quedan detrás de la superficie que se ve en él, y rellena el más pequeño:

* Al pinchar en un hueco, por él se ve lo que hay detrás (o nada), así que se rellena ese hueco y no el contorno exterior que también lo rodea.
* Al pinchar sobre la superficie, fuera de cualquier hueco, no se rellena nada: la barra de estado indica que no hay ningún hueco cerrado en el punto pinchado y el modelo digital no cambia.
* Un hueco que queda detrás de otra parte de la superficie no se puede elegir: gire la vista para verlo.
* Un hueco largo y estrecho (por ejemplo, la sombra de una tubería sobre el suelo, que la tubería tapa casi entera) se parte por sus estrechamientos y se rellena solo el trozo que contiene el punto pinchado.
* El borde exterior de una pieza se rellena si se pincha dentro de él, como la boca de un tubo o de un objeto hueco, salvo que su parche fuera a cubrir casi toda la pieza (el contorno de un terreno, un trozo suelto).
* Un hueco entre una parte de la superficie y otra que se dobla sobre ella y se ve por detrás (por ejemplo, entre la pared de una tubería y un «diente» de triángulos que baja hacia el suelo) no es un borde normal de la superficie, pero también se rellena al pinchar dentro, si por el hueco se ve lo que hay detrás.

### Arrastrar un círculo

Solo cuentan los puntos del borde que quedan dentro del círculo y se ven: los de la parte del borde que pasa por detrás (de una tubería, del propio objeto) no cuentan aunque caigan dentro del círculo en pantalla.

* Si el círculo rodea un hueco entero, se rellena el hueco.
* Si toca solo una parte del borde, se rellena esa parte, cerrada con una línea recta entre los puntos del borde que quedan en el límite del círculo. En una rendija, el círculo toca los dos lados y se tapa el trozo de rendija que cubre.
* Los **entrantes del contorno** (zonas sin triángulos que entran en la superficie desde su borde exterior, que no son huecos cerrados) se tapan con un círculo sobre ellos: se cierran por su boca.
* Si la línea de cierre cruzara la superficie (por ejemplo, un diente de la superficie que entra en el hueco), se rellena la parte más larga del borde dentro del círculo que se puede cerrar sin cruzarla. Para tapar una abertura grande con muchos dientes, rellénela por partes con varios círculos.

Si el círculo no toca ningún borde, o su parte del borde no se puede cerrar sin cruzar la superficie, la barra de estado lo indica, suena un aviso y el modelo digital no cambia: pruebe con otro círculo.

Si el hueco no se puede rellenar (toca aristas de tres o más triángulos, es el contorno de su pieza, es un triángulo suelto…), la ventana de resultados indica el motivo, suena un aviso y el modelo digital queda como estaba.

### Con una vista con selección

Cuando delante o detrás del hueco hay otras partes del modelo (el suelo detrás de una tubería, la otra cara de un objeto), aíslelas con la [Vista con selección](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin/vista-tin.md):

1. Seleccione los triángulos de la zona que quiere tapar (por ejemplo, con la [selección irregular](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-elementos.md)) y pulse **Vista con selección**. Se ven solo esos triángulos.
2. Si hace falta, gire el modelo, seleccione otra vez dentro de lo que se ve y vuelva a pulsar **Vista con selección** para quedarse con menos.
3. Rellene los huecos con **Rellenar un hueco 3D**, pinchando o arrastrando círculos.
4. Pulse **Vista con selección** sin nada seleccionado para volver a ver todo el modelo.

Con la vista con selección, la herramienta trabaja solo con los triángulos que se ven: lo apagado ni tapa los huecos ni se rellena. El corte entre lo que se ve y lo apagado también es un borde que se puede rellenar: así se completa, por ejemplo, la parte de abajo de una tubería apoyada en el suelo, siguiendo la curvatura de la tubería. Los puntos nuevos de cada parche se añaden a la vista. Tenga en cuenta que las aristas del parche que tocan triángulos apagados quedan con un triángulo más (el de la parte apagada).

## Superficie sin huecos

Botón **Superficie sin huecos** del panel [Actualizar](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/actualizar-tin-3d.md) de la ficha Edición TIN 3D, con un documento TIN 3D (la [Triangulación 3D](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md) sin «Generar directamente TIN 2D»).

Calcula la [superficie por frente](../modulo-laser/obtener-modelo-digital/triangulacion-3d.md) de los puntos del modelo, con la distancia de [Mostrar triángulos](../fichas-de-herramientas/ficha-de-herramientas-edicion-tin-3d/actualizar-tin-3d.md) como tope de la longitud de los lados, rellena sus huecos hasta el diámetro que se pide (como [Rellenar huecos 3D](#rellenar-huecos-3d-1)) y abre el resultado como un modelo digital nuevo, con « (sin huecos)» en el título. El documento TIN 3D no cambia.

## Límites

* Un modelo digital admite unos 50.000 puntos nuevos desde que se crea o se abre. Si se llega al límite, los huecos que faltan no se rellenan (ninguno queda a medias) y la ventana de resultados lo indica. Para seguir, guarde el modelo digital y vuelva a abrirlo.
* Un modelo digital abierto desde un formato de malla de otro programa (OBJ, STL…) puede no admitir puntos nuevos. Guárdelo como MDT y vuelva a abrirlo.
