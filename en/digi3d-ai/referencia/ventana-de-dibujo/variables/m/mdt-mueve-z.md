# DTM\_MOVES\_Z
<!-- id: mdt-mueve-z -->
<!-- origen: 773e7d3325f43eaf1edeffe01f48991572e8ad0b -->

Enable or disable Z coordinate updates in Digi3D.AI when the cursor moves over digital terrain models (DTMs).

## Parameters


| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic mode |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |


## Notes

Disable DTM\_MOVES\_Z to edit image matching points.

The variable is disabled each time you open a drawing file.

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | DTM/Project Z when moving over a loaded DTM |
| Toolbar | DTM |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {ED25771C-ED54-4357-A7AD-05C976348ABD} |
