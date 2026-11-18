# Intersections
<!-- id: intersecciones-directas -->
<!-- origen: 4cfc74a2553f51cc31ae80b3436978698faba458 -->

This tool gives coordinates to points by means of direct intersections. To give coordinates to a point, at least two observations are needed from points with known coordinates, and at those points it must be possible to compute the orientation with observations to other points with known coordinates.

If there are several points to compute, the tool chooses as the first point to compute the one that has the most observations from points with known coordinates, and then successively gives coordinates to all the new points.

To perform this computation, the application only requires horizontal angle readings in the observations, because the computation is carried out in planimetry only. If you want to compute the heights of the points, use the [Altimetry computation](../compensacion-de-altimetria/README.md) tool.

The tool is structured in six steps that guide the user through the computation:

* [Step 1: Enter input data files](paso-1-introducir-ficheros-de-datos-de-entrada.md)
* [Step 2: Point selection](paso-2-seleccion-de-puntos.md)
* [Step 3: Observation selection](paso-3-seleccion-de-visuales.md)
* [Step 4: Computed results](paso-4-resultados-calculados.md)
* [Step 5: Generated residuals](paso-5-residuos-generados.md)
* [Step 6: Output data setup](paso-6-configurar-salida-de-datos.md)

Use the **Next** and **Back** buttons to move between steps and to change the data or the selections.
