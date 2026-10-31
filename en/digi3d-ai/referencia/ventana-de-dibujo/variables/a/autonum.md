# AUTONUM
<!-- id: autonum -->
<!-- origen: d340c51027a240df11d966d8aad6b310121d1111 -->

Set the _automatic numbering increment_.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Automatic numbering increment | Integer, or **?** to display the current value in a balloon | Yes |

If you run the command without parameters, it displays a dialog box for entering the value.

## Notes

AUTONUM is 0 when Digi3D.AI starts, and 0 disables automatic numbering. Its value is not saved between sessions. A negative value makes the numbering decrease.

If AUTONUM is not 0 and you run [TEXT](../../ordenes/t/texto.md) without parameters, the command proposes the last inserted number plus AUTONUM as the text to insert, using the format specified by [AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md). When you digitize the text, the application extracts its number and records it as the last inserted number. The value of this variable does not change. If AUTONUM\_FORMAT is not a valid integer format, `%d` is used.

The [ADD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/agrega.md) command also uses this variable to propose a point name. In ADD, the last number is extracted from the accepted point name.

## Examples

Run the following commands to digitize the texts 1, 2, 3, 4, 5,...:

```text
AUTONUM=1
TEXT
```

Type 1 when _TEXT_ prompts you for a number to restart numbering from 1. The counter resets to 1.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/AUTONUM.mp4" caption="" type="video/mp4"></video>

## Command characteristics

| Variable type | [Numeric](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) |
| Internal name | {3C350BC2-A34D-4dea-ADB7-4DDBFA9E1475} |
