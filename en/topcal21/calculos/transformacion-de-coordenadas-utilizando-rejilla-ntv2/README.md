# Transformation of coordinates using an NTV2 grid
<!-- id: transformacion-de-coordenadas-utilizando-rejilla-ntv2 -->
<!-- origen: 67cae23768cf2eeeded662652f055b640c99a489 -->

This tool transforms a set of points defined in one coordinate system to another coordinate system using a grid file in NTV2 format.

The NTV2 format (developed by the Geodetic Survey Division of Geomatics of Canada) is used by Spain's Instituto Geográfico Nacional (IGN) for the transformation of coordinates between different datums, such as the transformation of coordinates from ED50 to ETRS89 and vice versa. It is a grid in which the displacement in longitude and latitude between the two systems is defined at each point. With these data, the program interpolates the displacement for each point, applies it and obtains the coordinates in the destination system.

The tool is structured in four steps:

* [Step 1: Enter input data](paso-1-introducir-datos-de-entrada.md)
* [Step 2: Calculation mode setup](paso-2-configurar-modo-de-calculo.md)
* [Step 3: Point selection](paso-3-seleccion-de-puntos.md)
* [Step 4: Output data setup](paso-4-configurar-salida-de-datos.md)

Use the **Next** and **Back** buttons to move between steps and modify the data or the selections.
