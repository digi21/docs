# ASSIGN\_ANGLE\_ATTRIBUTE
<!-- id: asignar-angulo-atributo -->
<!-- origen: fe6c8d7a698e380b21b0d87ee92d495609bbccd2 -->

Prompt you to digitize two points and assign the trigonometric angle of the second point relative to the first to the database field specified by the parameters.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code | No |
| 2 | Field name | No |

## Notes

The command assigns the field value in the code's active attribute list, like [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md). It does not modify existing entities.

As you move the cursor after entering the first point, the command displays the trigonometric angle of the cursor position relative to the first point in the message bar. The stored value is the trigonometric angle of the second point relative to the first (measured counterclockwise from the X axis), in degrees, using the drawing window's number of decimal places. To store the azimuth (measured clockwise from north), use [ASSIGN\_AZIMUTH\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md).

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
| Related commands | [ASSIGN\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asigna-atributo.md)<br>[ASSIGN\_AZIMUTH\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-azimut-atributo.md)<br>[ASSIGN\_DISTANCE\_ATTRIBUTE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/asignar-distancia-atributo.md) |
| Internal name | {440C7363-6575-416A-9001-F97ED6B06557} |
