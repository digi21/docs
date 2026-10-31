# Scalable Vector Graphics files
<!-- id: svg -->
<!-- origen: 39472ba1c0eb336db65a4972ce35d1ef434023b9 -->

Importer and exporter for **Scalable Vector Graphics files**.

## Parameters

Pass these command-line parameters with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.svg <ancho>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Image width | Yes |

## Import/export engine parameters

These properties appear in **Import/export engine** in import and export dialogs. This format cannot open directly in a drawing window, so they do not appear in New project. Initial values come from the last use of the format.

| Property | Values | Effect |
| :--- | :--- | :--- |
| Drawing width | Integer, in pixels. Defaults to 400 | Output image width. Height preserves the drawing aspect ratio. Used only when exporting |

Digi3D.AI saves the property in user configuration.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.svg` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| Can open a drawing window with this format | No |
