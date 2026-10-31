# DTM surface view
<!-- id: vista-de-superficie-de-mdt -->
<!-- origen: 11916e0a2caefeb5665093c8d51f2b9c463c05c7 -->

[DTM tools: DTM view](../fichas-de-herramientas/ficha-de-herramientas-mdt/vista-de-mdt.md)

![Surface display options menu](../../images/menu-superficie.jpg)

Choose among several options for displaying the digital terrain model. The current document must be a digital model or have digital models as reference files for these options to be available:

* **Hide**: displays no digital model graphics.
* **By cells**: displays the cells or triangles making up the digital model. There are three options:
  * _Empty_: displays cells without color fill, as a wireframe. Change their color with DTM color in this list.
  * _One color_: displays color-filled cells, giving the impression of a continuous surface as elements occlude one another. Change their color with DTM color in this list.
  * _Hypsometric_: fills cells with color based on each constituent point's elevation. A [dialog](../otras-herramientas/seleccionar-gama-de-color.md) lets you choose the color range.
  * _RGB colors_: displays DTM triangles with colors based on the colors stored for their points. Points must have colors assigned before calculating the DTM, as is common with LiDAR point clouds.
  * _Intensity_: displays DTM triangles with colors based on their points' stored intensity values, as found in LiDAR point clouds.
  * _Classification_: displays DTM triangles with colors based on their points' stored classification types, as found in LiDAR point clouds.
* **By points**: displays the points making up the digital model. There are two options:
  * _One color_: displays colored points as a point cloud. Change their color with DTM color in this list.
  * _Hypsometric_: displays points with colors based on their individual elevations. A [dialog](../otras-herramientas/seleccionar-gama-de-color.md) lets you choose the color range.
  * _RGB colors_: displays DTM vertices with colors based on the colors stored for their points. Points must have colors assigned before calculating the DTM, as is common with LiDAR point clouds.
  * _Intensity_: displays DTM vertices with colors based on their points' stored intensity values, as found in LiDAR point clouds.
  * _Classification_: displays DTM vertices with colors based on their points' stored classification types, as found in LiDAR point clouds.
* **Volume**: if the digital model stores volume calculation values, two additional options color elements according to whether they represent cut or fill: negative or positive elevations. Fill is red, cut is green, and zero volume is blue:
  * _Colored cells_: fills cells with the corresponding volume calculation color.
  * _Colored points_: displays points with the corresponding volume calculation color.
* **View texture**: shows or hides digital model textures, both those [loaded](../modulo-virtualand/cargar-texturas/README.md) and those [integrated into the digital model](../modulo-virtualand/integrar-texturas.md), without unloading them. Textures are displayed with any cell option. Available only when textures are loaded.
* **DTM color**: selects the color for displaying the digital model with a single color or empty cells. You can also select it using [Background](color-de-fondo.md) on the [Home tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-inicio/).
