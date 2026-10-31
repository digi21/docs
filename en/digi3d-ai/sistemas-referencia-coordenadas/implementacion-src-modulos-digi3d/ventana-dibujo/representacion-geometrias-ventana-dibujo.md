# Displaying geometries in the drawing window
<!-- id: representacion-geometrias-ventana-dibujo -->
<!-- origen: 78ce3273563e4f49cc532552e0292bdde15df6fb -->

The drawing window displays geometries in the selected coordinate reference system.

If the drawing window's coordinate reference system is _projected_, geometries are displayed in that system's projection. If it is _geographic_, Digi3D.AI displays geometries' _Longitude_ along the drawing window's _X_ axis and _Latitude_ along Y.

Geographic system coordinates are polar rather than orthogonal, so Digi3D.AI mixes angles and distances in this case. Representing longitude along X and latitude along Y is called _Plate Carrée_, _equirectangular projection_ or _equidistant cylindrical projection_. This projection introduces many distortions and is not used for navigation or cadastral maps, but is common in computer applications because of the correspondence between pixels and _Longitude, Latitude_ coordinates.
