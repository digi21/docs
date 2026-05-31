# Buscar puntos según infrarrojo

[Ficha de herramientas Clasificar LiDAR](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Esta herramienta tiene como objetivo clasificar puntos en función del índice NDVI que se puede calcular a partir del valor de infrarrojo almacenado. Para ello, cada punto deberá tener almacenado un falso color compuesto por el valor infrarrojo cercano, rojo y azul.

![Cuadro de diálogo Buscar puntos según infrarrojo](../../../.gitbook/assets/image-174.png)

El cuadro de diálogo precisa de los siguientes campos:

* **Tipología origen**: Se deberá seleccionar las tipologías que se considerarán en esta clasificación.
* **Actuar sólo en la selección actual**: Se podrá activar esta opción para calcular sólo en los puntos que actualmente se tengan seleccionados
* **Tipología destino**: Se deberá elegir la tipología de clasificación destino de los puntos que cumplan con las condiciones del cálculo.
* **Modo de cálculo**: Se podrán considerar dos maneras para clasificar, en función de si tienen un alto índice NDVI o bajo nivel. Además, con la barra inferior, se podrá indicar si se desea una alta o baja diferencia entre los índices calculados. Se debería indicar un valor alto de diferencia, si el falso color es nítido o bien definido. Se deberá indicar un bajo valor de diferencia en caso contrario.
  * _Alto nivel IR_: Se clasificarán aquellos puntos que tengan un alto valor de NDVI. Este es el caso, por ejemplo, que se haya seleccionado como tipología origen "Edificación", y se deseen clasificar como "Vegetación" aquellos puntos que tengan un valor alto de NDVI.
  * _Bajo nivel IR_: Se clasificarán aquellos puntos que tengan un bajo valor de NDVI. Este es el caso, por ejemplo, que se haya seleccionado como tipología origen "Vegetación", y se deseen clasificar como "Edificación" aquellos puntos que tengan un valor bajo de NDVI.

Vea también:

* [Buscar puntos elevados](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Buscar puntos aislados](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Buscar puntos aéreos](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Buscar puntos hundidos](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Buscar puntos por diferencia de intensidad](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-por-diferencia-de-intensidad.md)
* [Buscar puntos según línea de vuelo](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-linea-de-vuelo.md)
* [Buscar puntos según Geometría más RGB](buscar-puntos-segun-geometria-mas-rgb.md)
* [Buscar puntos según Geometría más intensidad](buscar-puntos-segun-geometria-mas-intensidad.md)
* [Buscar puntos en Superficies Planas](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Buscar puntos en Paredes](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Buscar puntos Solo Suelo](solo-suelo.md)
* [Superficie mágica](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Buscar puntos vecinos](buscar-vecinos.md)
* [Buscar huecos](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Buscar puntos según Área de superficie](buscar-puntos-segun-area.md)
* [Buscar puntos según planos de usuario](../formas-geometricas/buscar-puntos-sobre-planos.md)
