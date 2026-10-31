# ASSIGN\_DISTANCE\_ATTRIBUTE
<!-- id: asignar-distancia-atributo -->
<!-- origen: 87d07e60910393507ce8b0aeb43dad60963d7bb6 -->

Prompt you to digitize two points and assign the distance between them to the database field specified by the parameters.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code | No |
| 2 | Field name | No |

## Notes

The command assigns the field value in the code's active attribute list, like [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md). It does not modify existing entities.

As you move the cursor after entering the first point, the command displays the three-dimensional distance from the first point to the cursor position in the message bar. The stored value is the three-dimensional distance between the two points, using the drawing window's number of decimal places.

If the drawing window's horizontal coordinate reference system is geographic, the command interprets the points' longitude and latitude in the system's angular unit. The three-dimensional distance is the square root of the sum of the squared geodesic distance on the ellipsoid, in meters, and the squared difference between the two points' stored Z elevations, calculated without converting the unit of those elevations. For more information, see [Coordinates, distances, angles, and areas for commands run in the drawing window](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-dibujo/coordenadas-distancias-angulos-ventana-dibujo.md).

If either parameter is missing, the command sounds an error tone and ends.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ventana-de-dibujo/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesBaseDatos.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[ASSIGN\_FIELD\_VALUE\_BBDD\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo-bbdd-entidad.md)<br>[ASSIGN\_ANGLE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-angulo-atributo.md)<br>[ASSIGN\_AZIMUTH\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[COPY\_BBDD\_ENTITY\_ATTRIBUTE\_TO\_ENTITY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-atributo-bbdd-entidad-en-entidad.md) |
| Internal name | {7FBAEDDF-62A4-41BF-AE3D-543EB8E0784F} |
