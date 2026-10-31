# AUTONUM\_FORMAT
<!-- id: formato-autonum -->
<!-- origen: de944b4bef65a06a8ef1d2c5a5825bf4a189fc53 -->

Specify the format of the text string to draw when using [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md).

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Format string | Text with a `printf` integer conversion (for example, `%d` or `%05d`), or **?** to display the current value in a balloon | Yes |

If the format string contains spaces, enclose it in quotation marks. Without quotation marks, only the first word is used.

### Examples

`AUTONUM=1`, with `AUTONUM_FORMAT="%d"`

DigiNG would insert the following texts:

1

2

3

`AUTONUM=1`, with `AUTONUM_FORMAT="%5d"`

The "%5d" format sets a minimum width of 5 characters and pads the number with leading spaces. DigiNG would insert the following texts:

```text
    1

    2

    3
```

`AUTONUM=1`, with `AUTONUM_FORMAT="%05d"`

The "%05d" format sets a minimum width of 5 characters and pads the number with leading zeros to produce, for example, "00001" instead of "1". DigiNG would insert the following texts:

00001

00002

00003

AUTONUM=1, with AUTONUM\_FORMAT="PK %05d de P11"

PK 00001 de P11

PK 00002 de P11

PK 00003 de P11

## Notes

The default value is "%d" \(insert the number at this position\). Without parameters, the command prompts for the format in the status bar and displays the current value. If you enter an empty string, "%d" is assigned.

If the format string has more than one conversion, or a conversion that is not an integer conversion, [TEXT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/texto.md) and [ADD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md) use "%d".

## Command characteristics

| Command type | [Text variable](../../../ordenes/variables/variables-de-tipo-texto.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AUTONUM](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/autonum.md) |
| Internal name | {7E76B285-DABD-4265-88D7-4FCA2F35DA73} |
