# DELETE\_LIN1
<!-- id: borra-lin1 -->
<!-- origen: 632a061c24f3637d22dd5660619d37c73bf0f9c0 -->

Delete the following from the working file:

* Elements defined as linear entities in DIGI.TAB that were recorded with a single point, like a point entity.
* Any element containing multiple points with identical coordinates. During stereoplotting, repeatedly pressing and releasing the foot pedal without changing position can produce elements with multiple points at identical coordinates.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Minimum length, in coordinate reference system units | Real number | Yes |

## Notes

You can set a deletion threshold: to delete line segments \(editing remnants\) shorter than a given length, run the command with that value.

Without a parameter, the command deletes lines whose vertices all coincide in X and Y. With a parameter, it deletes lines whose planimetric (2D) length is less than the specified value.

The command only considers entities in the active drawing file that are not deleted, are visible, are inside the area of interest, and whose first code is linear in the code table. Points with a linear code are always deleted.

### Example

`DELETE_LIN1=0.01`

The command deletes lines whose planimetric length is less than 0.01 coordinate reference system units.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {4026A83D-FB51-4269-A59D-C4E3298513B6} |
