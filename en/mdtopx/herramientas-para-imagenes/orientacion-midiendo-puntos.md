# Orientation by measuring points
<!-- id: orientacion-midiendo-puntos -->
<!-- origen: 2a8ca786bf6ac2e27909fa7a9c42eb3d66ec0df2 -->

[Orientation](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-imagen/orientacion.md)

This tool orients a raster image by measuring points on it and on a vector document previously loaded as a reference.

The view splits vertically into two views: the image on the left and the reference vector file on the right. A new pane displays measured points and orientation parameters calculated in real time.

Specify points on the image and vector data by left-clicking each view to perform the calculation.

Points are added to the orientation pane, which displays orientation parameters and a toolbar at the top. Its tools and fields are:

* **Point list**: measured points, each with a sequential point number, photo coordinates, ground coordinates and residuals for each coordinate. Add each point by left-clicking its position in both windows \(image on the left and vector reference document on the right). Either window can be selected first. Once entered, points can be deleted or remeasured according to their real-time residuals using **Delete** and **Remeasure** on the pane toolbar. As points are entered, the program calculates the most suitable transformation and its residuals. Transformation type and parameters appear at the bottom of the pane. Use **Save points** and **Load points** on the toolbar to save or load points from disk.
* **Type**: transformation type to use in the calculation. **Auto** selects the most suitable transformation for the measured points. Available options are Translation, Two steps, Perspective and Helmert.
* **Results**: parameters calculated from entered points. The number of parameters depends on the selected transformation type.
* **Precisions**: precision of the calculated parameters.
* **Output**: saves results to a text file when point measurement is complete. Set "Save results" to "True" and enter a file name or select one with Windows Explorer using the button to the right.

The toolbar buttons at the top of the pane finish by accepting the orientation or exit without changing the image orientation.

See also:

* [Edit image orientation](editar-orientacion-de-imagen.md)
* [Edit image orientations from a file](/mdtopx/herramientas-para-imagenes/editar-orientacion-de-imagenes-desde-archivo.md)
