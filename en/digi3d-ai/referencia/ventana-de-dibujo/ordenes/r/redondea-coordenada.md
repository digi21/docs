# ROUND\_COORDINATE
<!-- id: redondea-coordenada -->
<!-- origen: 884ba1f472b4a1b673aaef329e65034be6240d1d -->

Replace selected line and polygon vertex X or Y coordinates with a given value when they differ from it by no more than a tolerance.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Value | No |
| 2 | Sigma (tolerance) | No |

## Notes

If parameters are missing, sound the error tone and end.

For each vertex of the selected geometry, including polygon hole vertices, if the absolute difference between X and the value is less than or equal to the tolerance, set X to that value. Handle Y the same way. Z is unchanged.

For example, `ROUND_COORDINATE=20 1e-5` changes X = 20.000004 to 20.

Single and multiple selection are supported; only lines and polygons in the current model are modified.

If quality control rejects a modified entity, retain its original unchanged. Handle multiple entities independently: retain each rejected entity's original and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | No related commands |
| Internal name | {EDC67F10-FE62-4A1A-939B-DC6D565B9446} |
