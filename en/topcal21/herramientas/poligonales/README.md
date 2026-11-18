# Traverses
<!-- id: poligonales -->
<!-- origen: cc5f4b5ac5108702b1c214b0c5593f09b3b9dacc -->

This tool is used to compute and compensate topographic traverses. These traverses can also be alternate, meaning that the instrument has not been set up at every point of the traverse, but only at alternate points.

To carry out this computation you need horizontal readings at all stations, vertical readings and distances in all traverse lines, and reflector heights and instrument heights. Each traverse line has two height differences and two distances, in the direct direction and in the reciprocal direction. The program needs at least one height difference and one distance per traverse line. If both height differences are available, it averages the two; if both distances are available, it averages the two.

Traverses can have one axis or several, can be *closed-loop* (closed on themselves) or *open*, and can be *closed between two stations* of known coordinates and orientations, or *not closed between known stations*.

**Closed-between-stations** traverses are those in which the coordinates of the departure and arrival points are known. If the point is the same, the traverse is **closed-loop**; otherwise it is **open**. In this case, the program can compute the coordinates of the intermediate points the traverse passes through and from which observations are made to the previous and the next point. The program computes the XYZ coordinates of each intermediate station and gives the user the closure errors.

If the traverse is **not closed between known stations**, that is, only the coordinates of the departure station are known, the program can compute the coordinates of the intermediate stations but cannot give closure errors.

**Important**: Before computing the traverse, the orientations at the departure and arrival stations must have been computed.

The tool is organized in five steps that guide the user through the computation:

* [Step 1: Enter input data files](paso-1-introducir-ficheros-de-entrada.md)
* [Step 2: Point selection](paso-2-seleccion-de-puntos.md)
* [Step 3: Comparison of distances and height differences](paso-3-comprobacion-de-distancias-y-desniveles.md)
* [Step](paso-4-resultados-y-cierres.md) 4: Results and closures
* [Step](paso-5-configurar-salidas-de-datos.md) 5: Output data setup

Use the **Next** and **Back** buttons to move between steps and modify the data or the selections.
