# TRIANGULATE
<!-- id: triangular -->
<!-- origen: ba973a6c24f9a57f0e161412757e6c593c1544f1 -->

Calculate a digital terrain model \(DTM\) triangulation from geometries in the drawing window.

## Parameters

Does not accept parameters.

## Notes

Draw a boundary line before running.

1. Select it with the data or snap button.
2. Take visible, undeleted entities within the area of interest lying inside the boundary, trim those crossing it, and discard texts.
3. Calculate the triangulation and load it as a new DTM drawing file named "Triangulation created at hh:mm:ss".

Multiple selection is also supported: entities sent by a selection command, such as [SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md), are triangulated without a boundary.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | DTM/Digital Terrain Model based on existing geometries |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CREATE\_DEM](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/crea-dem.md)<br>[CURVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/curvar.md)<br>[TRIANGULATE\_LINES\_EXCEPT\_POINTS\_WITH\_CODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-lineas-excepto-puntos-con-codigo.md)<br>[TRIANGULATE\_TOPOLOGY\_POINTS\_EXCEPT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-puntos-topologia-excepto.md) |
| Internal name | {CADBCBD9-31D0-4072-B935-47609136331B} |
