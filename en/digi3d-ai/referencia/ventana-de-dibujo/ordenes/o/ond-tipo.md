# OND\_TYPE
<!-- id: ond-tipo -->
<!-- origen: 0cc30ad3f926c78e158ff8bc9b52f30a3211e464 -->

Enable codes in the photogrammetric and drawing window.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 … N | One or more pairs of codes and [geometry types](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md), separated by spaces: `OND_TYPE=020101 L 030201 PT` | Yes |

## Notes

In this command, `P` includes points, point-based complex entities, oriented points, and multipoints; `B` indicates images; and `*` includes all geometry types.

The command shows entities with the code and types specified. Entities of other types retain their state. A code starting with `#` represents all codes in the code table assigned that tag.

The command acts on all loaded drawing files. It changes the drawing window and photogrammetric windows together.

Specify parameters as "code type" pairs. With only one parameter, the command does nothing.

Without parameters, the command displays the [Select codes](/digi3d-ai/referencia/cuadros-de-dialogo/selecciona-codigos.md) dialog box with **Lines**, **Points**, **Texts**, **Polygons**, and **Complex** checkboxes, and **All** and **None** buttons to select or clear all five checkboxes. Each time you run the command, the dialog box opens with an empty code list and all five checkboxes selected. The command shows the selected types for the codes in the list. With all five checkboxes selected, the command affects all geometry types, including images. With no checkboxes selected, the command changes nothing.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | View/Enable visualization of codes (by code an type)... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [OFFD\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/offd-tipo.md)<br>[ON\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/on-tipo.md)<br>[OND](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ond.md)<br>[ONS\_TYPE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/o/ons-tipo.md) |
| Internal name | {9D4AB57F-589B-4157-A772-B3EAED0C8253} |
