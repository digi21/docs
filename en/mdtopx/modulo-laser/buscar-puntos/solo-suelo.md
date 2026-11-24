# Ground only
<!-- id: solo-suelo -->
<!-- origen: fb2f5ecba4352b89381bea114ea386af4306848d -->

[LiDAR classification tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-clasificar-lidar.md)

Quickly finds ground points and assigns them type "2". Only points meeting that condition are classified.

![Ground only dialog](../../../images/image-170.png)

Required parameters:

* **Work only on the current selection**: processes only currently selected points.
* **Maximum distance among points**: maximum distance for points to be considered vertically aligned. Keep it small, close to LiDAR horizontal precision. Unlike other tools, it does not correspond to point density.
* **Height tolerance**: determines whether points belong to the same surface.
* **First search distance**: optional initial ground-search DTM density. Avoid very small values where large flat-roofed buildings exist.
* **Keep current ground points**: retains points already classified as ground.

## Very dense clouds (terrestrial or mobile scanner)

With a very dense cloud, in which more than half of its points are in areas with more than 500 points/m², and with no selection, the tool works like [Magic surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/#very-dense-clouds-terrestrial-scanner):

* It searches for the ground in a sample of the cloud, with one point per 10 cm cube. If the class of the point of a cube changes, the other points of the cube take the new class; if it does not change, they keep their own.
* After the search, the unclassified points and the low and medium vegetation points that are less than **Height tolerance** above the ground found, or up to 1 m below it, become ground, and the tool repeats this search with the new ground as long as more than 1 % of the points become ground.
* A point is not ground if it has, below it in its 10 cm column, at least 3 points more than 0.3 m below: the trunk of a tree is not ground. Those points become unclassified (0).

Where the scanner does not see the terrain, for example under dense canopies, there is no ground to classify.

See also:

* [Find elevated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-elevados.md)
* [Find isolated points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aislados.md)
* [Find airborne points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-aereos.md)
* [Find sunken points](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-hundidos.md)
* [Find points on flat surfaces](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-superficies-planas.md)
* [Find points on walls](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-en-paredes.md)
* [Magic Surface](/mdtopx/modulo-laser/buscar-puntos/superficie-magica/)
* [Find neighboring points](buscar-vecinos.md)
* [Find points by infrared](/mdtopx/modulo-laser/buscar-puntos/buscar-puntos-segun-infrarrojo.md)
* [Find gaps](/mdtopx/modulo-laser/buscar-puntos/buscar-huecos.md)
* [Find points by surface area](buscar-puntos-segun-area.md)
* [Find points on user planes](../formas-geometricas/buscar-puntos-sobre-planos.md)
