# ASSIGN\_AZIMUTH\_ATTRIBUTE
<!-- id: asignar-azimut-atributo -->
<!-- origen: a3c307337da9ab7dbdb217743546694460915386 -->

Prompt you to digitize two points and assign the azimuth to the database field specified by the parameters.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code | No |
| 2 | Field name | No |

## Notes

The command assigns the field value in the code's active attribute list, like [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md). It does not modify existing entities.

As you move the cursor after entering the first point, the command displays the azimuth of the cursor position relative to the first point in the message bar. The stored value is the azimuth of the second point relative to the first (measured clockwise from north, from 0 degrees inclusive to 360 degrees exclusive), in degrees, using the drawing window's number of decimal places. To store the trigonometric angle (measured counterclockwise from the X axis), use [ASSIGN\_ANGLE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md).

If the drawing window's horizontal coordinate reference system is geographic, the command interprets the points' longitude and latitude in the system's angular unit and calculates the azimuth using the geodesic on the ellipsoid, measured at the first point. For more information, see [Coordinates, distances, angles, and areas for commands run in the drawing window](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

If either parameter is missing, the command sounds an error tone and ends.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesBaseDatos.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[ASSIGN\_FIELD\_VALUE\_BBDD\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md)<br>[ASSIGN\_ANGLE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASSIGN\_DISTANCE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md)<br>[COPY\_BBDD\_ENTITY\_ATTRIBUTE\_TO\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Internal name | {0FDBA0D4-71F6-4520-8E77-4FE4077536EC} |
