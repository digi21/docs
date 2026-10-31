# EXTRACT\_P
<!-- id: saca-p -->
<!-- origen: cba544deb463885a738cbe8d3701473da4910726 -->

Place a point beside each text in the drawing file bearing any specified code.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1...n | Codes of texts beside which to place points | Code name, or `#etiqueta` for all codes bearing that tag | Yes; without codes, display a dialog box for selecting them |

## Notes

Use this command to restore missing points beside texts.

Traverse visible, undeleted texts within the area of interest. For each bearing a specified code, create a point at its insertion point, offset by the primary active distance in X and secondary active distance in Y (see [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md)). The offset ignores text angle. The point takes the text insertion point's Z.

Create the point with the active codes.

Run from the command line with:

`extract_p=<código>`

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AD](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — active distance |
| Related commands | No related commands |
| Internal name | {8D88009E-77AB-451c-9AC4-D3CDAB98A14D} |
