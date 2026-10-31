# MAXPOINTS
<!-- id: maxpuntos -->
<!-- origen: fd8fae893b6b9290f470942ec02773a6abc735f9 -->

Set the maximum number of vertices in a line digitized with [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) or [POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md).

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Maximum number of vertices. 0 disables the constraint | Integer, or **?** to display the current value in a balloon | Yes |

Without parameters, the command displays **Enter a value**. The dialog box closes and accepts the value when you press **Enter** or **Escape**, or confirm the change in the field.

### Examples

`MAXPOINTS=2`

Lines finish when the second vertex is recorded.

`MAXPOINTS=?`

Display the current value in a balloon.

## Notes

When a line digitized with [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) or [POL](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/pol.md) reaches the maximum number of vertices, it finishes automatically. Finishing applies [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) (close), [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) (smooth), and [G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) (generalize), just as when finishing the line manually.

0 disables the constraint. The initial value when Digi3D.AI starts is 0 and is not saved between sessions. Changing the code does not change the value.

The toolbar button and menu option toggle the setting: if it is 0, they display the dialog box for entering a value; otherwise, they run `MAXPOINTS=0`.

[CHNG\_MAXPOINTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-maxpuntos.md) does not change this variable; it uses the value to split previously digitized entities.

## Command characteristics

| Command type | [Numeric variable](../variables-numericas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Draw/Polyline restrictions/Set the maximum number of points on a line |
| Toolbar | Polyline restrictions |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md)<br>[G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md)<br>[S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) |
| Internal name | {89DE5C40-863D-4654-85F1-211FB9DC3AF3} |
