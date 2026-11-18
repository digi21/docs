# Compensation of levelling networks using least squares
<!-- id: compensacion-de-redes-de-nivelacion-por-minimos-cuadrados -->
<!-- origen: 2f2cf45ff43723b627ecf3ea9bcd27f4700ed423 -->

This tool assigns heights to points by means of the least squares compensation of a set of geometric levelling observations made between them. It also allows the observations to be weighted according to the characteristics of the equipment used (kilometric error) and the properties of the observations themselves (distances between points).

Once the compensation is done, the program performs a statistical test (Baarda test) that identifies observations with possible gross errors so that the user can exclude them from the adjustment.

The computation does not require approximate vertical coordinates of the points involved. Nor is it necessary to know the distance between the points, but without it the observations cannot be weighted, and all of them are given the same unit weight.

The tool is structured in several steps, depending on the compensations to be performed, which guide the user through the computation:

* [Step 1: Input and output file selection](paso-1-seleccion-de-archivos-de-entrada-y-salida.md)
* [Step 2: Point selection](paso-2-seleccion-de-puntos.md)
* [Step 3: Observation selection](paso-3-seleccion-de-visuales.md)
* [Step 4: Weights and residuals of the height differences](paso-4-pesos-y-residuos-de-los-desniveles.md)
* [Step 5: Displacements and accuracies](paso-5-desplazamientos-y-precisiones.md)
* [Step 6: Results of the Baarda test](paso-6-resultados-del-test-de-baarda.md)
* [Step 7: Output data setup](paso-7-configurar-salida-de-datos.md)

Use the **Next** and **Back** buttons to move between steps and modify the data or the selections.
