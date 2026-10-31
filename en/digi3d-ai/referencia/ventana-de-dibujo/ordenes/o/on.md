# ON
<!-- id: on -->
<!-- origen: d6793cf83b186c6084c98448ff40b3a46f9447ee -->

Enable the display of one or more codes in the drawing window.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code or codes to show in the drawing window | Yes. |

### Examples

Show all codes on screen:

```text
ON=*
```

Show all codes starting with 02:

```text
ON=02*
```

Show only elements with code 020123:

```text
ON=020123
```

## Notes

The command only affects the drawing window. To enable codes in the photogrammetric window as well, run [OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md).

Separate codes with spaces. A parameter starting with `#` represents all codes in the code table assigned that tag.

Without parameters, the command displays a dialog box listing codes to show. Add codes with the _Add..._ button, or select a tag from the drop-down list to add the codes assigned that tag.

To enable only some geometry types for a code, run [ON\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md).

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFF](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/off.md)<br>[ON\_FILE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-archivo.md)<br>[ON\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md)<br>[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md)<br>[ONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons.md)<br>[ONONLY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/onsolo.md) |
| Internal name | {536E917F-6A24-4288-B613-6B4DF30FC0DB} |
