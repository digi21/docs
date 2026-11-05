# AREA
<!-- id: area -->
<!-- origen: 0088de55cde025030f0cd0e7ac5e46f5465d76d2 -->

Calculate the area of closed drawing entities and place text with this value at the specified position.

## Parameters

Does not accept parameters.

## Notes

* A positive area indicates that the closed entity's elements were created clockwise.
* A negative area indicates that they were created counterclockwise.

Select the closed entity whose area to label. Only lines and polygons are accepted. If a line is not closed, calculate its area by closing it between the last and first vertices. For a polygon, subtract hole areas regardless of their direction; the result's sign follows the exterior boundary.

If the drawing window's horizontal coordinate reference system is geographic, interpret longitude and latitude in the system's angular unit and calculate area in square meters by projecting vertices with a Lambert azimuthal equal-area projection centered on the first vertex. This projection preserves areas. See [Coordinates, distances, angles, and areas for commands running in the drawing window](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

Write the area in the configured [Area unit](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/orden-area/unidad-de-superficie.md): square meters (default), hectares, or square kilometers.

The status bar then shows the corresponding area suffix: `m2`, `ha`, or `km2`. Change the suffix to any text, but the value remains in the configured unit. Then specify where to place the area text.

Create text with [text height](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), [active angle](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), [text justification](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), and the drawing window's number of decimal places.

After inserting text, request another entity.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Define height/Area of selected polygon |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification |
| Related commands | [DRAW\_HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_altura.md)<br>[DRAW\_DISTANCE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia.md)<br>[DRAW\_DISTANCE\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_distancia_3d.md)<br>[DRAW\_PERIMETER](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro.md)<br>[DRAW\_PERIMETER\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dibuja_perimetro_3d.md) |
| Internal name | {DA84B66B-3E7F-47f6-A418-FFF44712AF48} |
