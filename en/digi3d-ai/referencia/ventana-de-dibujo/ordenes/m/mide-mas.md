# MEASURE+
<!-- id: mide-mas -->
<!-- origen: 528deca0cf78bc8662d42c5cc64b3a7b6a586ed7 -->

Calculate the plan perimeter, 3D perimeter, and area of the polyline formed by a set of vertices.

## Parameters

Does not accept parameters.

## Notes

The command continuously requests points and displays accumulated values up to the cursor position in the status bar. When you end it \(for example, with Esc\), it displays a balloon with the two-dimensional (2D) perimeter, three-dimensional (3D) perimeter, and area if nonzero.

If the drawing window's horizontal coordinate reference system is geographic, the command interprets longitude and latitude in the system's angular unit. It calculates perimeters using the geodesic on the ellipsoid, in meters, and area in square meters by projecting vertices with a Lambert azimuthal equal-area projection centered on the first vertex. For more information, see [Coordinates, distances, angles, and areas for commands run in the drawing window](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

If you run MEASURE+ while another command is waiting for a distance, that command receives the plan perimeter (2D).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/Measure a distance with various points |
| Toolbar | Coordinates |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [MEASURE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide.md)<br>[MEASURE\_LINE\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea.md)<br>[MEASURE\_LINE\_XYZ\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perimetro-linea-xyz.md)<br>[MEASURE\_PERP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-perp.md)<br>[MEASURE\_SEGMENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento.md)<br>[MEASURE\_SEGMENT\_XYZ](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mide-segmento-xyz.md) |
| Internal name | {2267ABF1-5694-4150-993A-50301E417611} |
