# OND
<!-- id: ond -->
<!-- origen: 44d0db41967ab7c9e12018ee2caf051df86bbd01 -->

Enable the display of the specified code \(or codes\) in the drawing and photogrammetric windows.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes to show in the drawing window | Yes. By default, all codes are visible when you open a drawing file |

### Examples

`OND=*`

Show all codes on screen.

`OND=02*`

Show all codes starting with 02.

`OND=020123`

Show only elements with code 020123.

## Notes

Separate codes with spaces. A parameter starting with `#` represents all codes in the code table assigned that tag.

Without parameters, the command displays a dialog box listing codes to show. Add codes with the _Add..._ button, or select a tag from the drop-down list to add the codes assigned that tag.

To enable only some geometry types for a code, run [OND\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/All codes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md)<br>[ON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on.md)<br>[OND\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond-tipo.md)<br>[ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md) |
| Internal name | {7F1B6401-4A3F-46ca-B9F9-188B12809D1E} |
