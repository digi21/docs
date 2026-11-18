# Compensation by least squares
<!-- id: compensacion-por-minimos-cuadrados -->
<!-- origen: cc5d7fc11bfe5ba57aaf1ab3cd06da1421b5e766 -->

This tool is used to give XYZ coordinates to points by means of the least-squares compensation of a set of observations made between them. These observations may be angular observations, distance observations or height differences. It also allows weighting these observations according to the characteristics of the equipment used and the properties of the observations themselves.

Once the compensation has been completed, the program performs a statistical test (Baarda test) that identifies observations with possible gross errors so that the user can exclude them from the adjustment.

In order to perform the horizontal computation, approximate coordinates of the points to be adjusted must have been computed beforehand. The computation is based on the selection of one or more fixed points, that is, points whose coordinates are known and immovable, and from them the coordinates of the rest of the points are computed.

The vertical computation does not require approximate height coordinates. If no distance readings were taken in the field, the program needs the horizontal coordinates to compute the distances between the points.

The tool is structured in several steps, depending on the compensations to be carried out, that guide the user through the computation. Which steps appear depends on the selected computation type, so not all of them are mandatory:

* [Step 1: Enter input data files](paso-1-introducir-ficheros-de-datos-de-entrada.md)
* [Step 2: Point selection](paso-2-seleccion-de-puntos.md)
* [Step 3: Network and output lists setup](paso-3-configuracion-de-la-red-y-listados-de-salida.md)
* [Step 4: Observation selection](paso-4-seleccion-de-visuales.md)
* [Step 5: Weights and residuals of the horizontal observations](paso-5-pesos-y-residuos-de-las-observaciones-planimetricas.md)
* [Step 5.1: Selection of fixed directions](paso-5-bis-seleccion-de-direcciones-fijas-en-red-libre.md)
* [Step 6: Displacements and horizontal accuracies](paso-6-desplazamientos-y-precisiones-planimetricas.md)
* [Step 7: Results of the horizontal Baarda test](paso-7-resultados-del-test-de-baarda-planimetrico.md)
* [Step 8: Weights and residuals of the vertical observations](paso-8-pesos-y-residuos-de-las-observaciones-altimetricas.md)
* [Step 9: Displacements and vertical accuracies](paso-9-desplazamientos-y-precisiones-altimetricas.md)
* [Step 10: Results of the vertical Baarda test](paso-10-resultados-del-test-de-baarda-altimetrico.md)
* [Step 11: Output data setup](paso-11-configurar-salida-de-datos.md)
* [Step 12: Sketch setup](paso-12-configurar-croquis-de-dibujo.md)

Use the **Next** and **Back** buttons to move between steps and modify the data or the selections.
