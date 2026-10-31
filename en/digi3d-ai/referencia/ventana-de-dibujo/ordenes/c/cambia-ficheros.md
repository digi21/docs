# CHANGE\_FILES
<!-- id: cambia-ficheros -->
<!-- origen: 49526252d26b17a298df0c3aca81ca7fb8db65c5 -->

Swap the active drawing file and the reference file.

## Parameters

Does not accept parameters.

## Notes

The command switches the active file between the first and second loaded drawing files. Files loaded after the second do not participate: if one of them is active, the command activates the second file. With only one loaded file, the command does nothing.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LOAD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md)<br>[DRAWING\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fichero-dibujo.md) |
| Internal name | {FB54F073-3D0C-47c6-B1B3-4677D882E572} |
