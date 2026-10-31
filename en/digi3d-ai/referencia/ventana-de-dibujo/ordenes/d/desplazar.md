# DISPLACE
<!-- id: desplazar -->
<!-- origen: e0c40cdd60da1add6bc29104b614154e95a17743 -->

Displace drawing file entities by specified X, Y, and Z distances.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | X displacement in reference system units | No |
| 2 | Y displacement in reference system units | No |
| 3 | Z displacement in reference system units | No |

## Notes

Supply displacements directly in the command line. Without parameters or with fewer than three, display an error message and end.

Once running, each press of the recording or snap pedal selects and displaces an entity. Remain active until Esc. With multiple selection, displace entities in the current model and end.

### Example:

`displace=0 0 0.5`

Move one or more entities by a fixed 0.5 m in Z.

If quality control rejects a modified entity, retain its original unchanged. Handle multiple entities independently: retain each rejected copy's original and displace the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [MOVE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover.md) |
| Internal name | {DEB8EC05-421D-4e7f-B3A4-ED5BF9CC7334} |
