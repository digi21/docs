# SAVE\_CODE\_TABLE
<!-- id: guardar-tabla-codigos -->
<!-- origen: 45da328f6752c854e2904e4cdf1a0c11c1dccf56 -->

Save the active code table to a file.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | File in which to save the code table. Enclose the path in quotation marks if it contains spaces. | Yes |

## Notes

Without parameters, the command displays a dialog box for choosing a file and saves the code table in it. The default extension is `.tab.xml`. With a file parameter, it saves the table in that file without displaying the dialog box. If the active code table is encrypted, the command finishes without displaying the dialog box or saving anything.

When recording a macro, the command records the file chosen in the dialog box as its parameter. If you cancel the dialog box, nothing is recorded.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | File/Tools/Save current code table... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {C84B6EB9-4E49-47BE-B8B5-190D30AB2679} |
