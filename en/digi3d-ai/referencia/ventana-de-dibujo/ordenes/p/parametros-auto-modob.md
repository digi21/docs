# AUTO\_SMODE\_PARAMETERS
<!-- id: parametros-auto-modob -->
<!-- origen: f3aba8724af338c8ba1cd83c0dcfb26a58cf9b49 -->

Load the XML file containing automatic search mode settings.

## Parameters

| Parameter | Description |
| :--- | :--- |
| File | Optional. Path of the XML configuration file. Without a path, the command displays a file selection dialog box. If the file does not exist, the command plays an error sound and does not load the configuration. |

## Notes

These settings automatically change the search mode for a particular code, avoiding manual switching between modes.

The settings apply only when [AUTOSMODE](../a/automodob.md) is enabled.

Create a configuration file manually specifying, for each code, the search modes to use when snapping to another specific code.

Create the file in Notepad and choose a file name with the .XML extension.

Each `subcode` element accepts these attributes:

* `name`: code of the entities to snap to.
* `smode`: search mode or modes, separated by spaces or commas.
* `divide`, `insert`, and `finalize`: optional. If present, with any value, snapping enables [SNAP\_CUTS](../../variables/t/tentativo-corta.md), [SNAP\_INSERT](../../variables/t/tentativo-inserta.md), and [SNAP\_END](../../variables/t/tentativo-fin.md), respectively.

### Example:

```xml
<automodob xmlns="http://schemas.digi21.net/DigiNG/AutoSearch/v1.0">
    <code name="020123">
        <subcode name="060140" smode="12"/>
        <subcode name="040124" smode="12"/>
        <subcode name="060126" smode="12"/>
        <subcode name="060142" smode="12"/>
        <subcode name="060522" smode="12"/>
        <subcode name="030225" smode="12"/>
        <subcode name="020123" smode="6"/>
        <subcode name="020124" smode="6"/>
        <subcode name="020126" smode="6"/>
        <subcode name="020127" smode="6"/>
        <subcode name="060151" smode="1"/>
        <subcode name="040523" smode="1"/>
        <subcode name="050146" smode="1"/>
        <subcode name="050151" smode="1"/>
    </code>
    <code name="020124">       
        <subcode name="060140" smode="12"/>
        <subcode name="040124" smode="12"/>
        <subcode name="060126" smode="12"/>
        <subcode name="060142" smode="12"/>
        <subcode name="060522" smode="12"/>
        <subcode name="030225" smode="12"/>
        <subcode name="020123" smode="6"/>
        <subcode name="020124" smode="6"/>
        <subcode name="020126" smode="6"/>
        <subcode name="020127" smode="6"/>
        <subcode name="060151" smode="1"/>
        <subcode name="040523" smode="1"/>
        <subcode name="050146" smode="1"/>
        <subcode name="050151" smode="1"/>
    </code>
</automodob>
```

In this example, with AUTOSMODE enabled while drawing lines with codes 020123 or 020124, the application automatically uses search mode 12 when snapping to entities with codes 060140, 040124, 060126, 060142, 060522, and 030225, and mode 6 for entities with codes 020123, 020124, 020126, and 020127.

### Running the command:

`AUTO_SMODE_PARAMETERS=C:\Work\automodob.xml`

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob.md)<br>[EXHAUSTIVE\_AUTOSMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/automodob-exhaustivo.md)<br>[CHNG\_SMODE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-modob.md) |
| Internal name | {5DC544A9-2700-40d2-9840-2E7923BCCAA4} |
