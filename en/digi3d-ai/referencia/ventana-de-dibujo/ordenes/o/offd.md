# OFFD
<!-- id: offd -->
<!-- origen: c01cec8032893b3cf79d0c381c8b35c3abc3deed -->

Disable the display of the specified code \(or codes\) in the drawing and photogrammetric windows.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes to hide in the drawing window | Yes. By default, all codes are visible when you open a drawing file |

### Examples

`OFFD=*`

Hide all codes on screen.

`OFFD=02*`

Hide all codes starting with 02.

`OFFD=020123`

Hide only elements with code 020123.

## Notes

Separate codes with spaces. A parameter starting with `#` represents all codes in the code table assigned that tag.

Without parameters, the command displays a dialog box listing codes to hide. Add codes with the _Add..._ button, or select a tag from the drop-down list to add the codes assigned that tag.

To disable only some geometry types for a code, run [OFFD\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/No code |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)<br>[OFFD\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md)<br>[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md)<br>[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md) |
| Internal name | {8F8C9C74-5355-4e4e-BF18-0BD69083C295} |
