# OFF
<!-- id: off -->
<!-- origen: 2bc2e0f8d2abf925d3cbe91d0190ce383329e724 -->

Disable the display of one or more codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes to hide in the drawing window | Yes. |

### Examples

Hide all codes on screen:

```text
OFF=*
```

Hide all codes starting with 02:

```text
OFF=02*
```

Hide only elements with code 020123:

```text
OFF=020123
```

## Notes

The command only affects the drawing window. To disable codes in the photogrammetric window as well, run [OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md).

Separate codes with spaces. A parameter starting with `#` represents all codes in the code table assigned that tag.

Without parameters, the command displays a dialog box listing codes to hide. Add codes with the _Add..._ button, or select a tag from the drop-down list to add the codes assigned that tag.

To disable only some geometry types for a code, run [OFF\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFF\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-archivo.md)<br>[OFF\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off-tipo.md)<br>[OFF\_ALL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off_todo.md)<br>[OFFD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd.md)<br>[OFFS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offs.md)<br>[ON](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on.md) |
| Internal name | {A893D97A-96A2-4862-9210-AE45F12A976F} |
