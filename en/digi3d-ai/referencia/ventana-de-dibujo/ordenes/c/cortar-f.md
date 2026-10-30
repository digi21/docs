# CUT\_F
<!-- id: cortar-f -->
<!-- origen: ba024ffbecef6e1fff1f3988f84e6b38108515d5 -->

Generate a new file with the elements inside the boundary of a drawing entity you select.

## Parameters

Does not accept parameters.

## Notes

If no entity has suitable geometry for defining the element selection boundary, define a new element with the desired shape before running this command. You can delete the boundary element after clipping is complete.

1. Specify the output file name and format in the dialog box. In the same dialog box, choose the inclusion condition and the **Invert selection** option.
2. Select the boundary line.

Choose one of the following inclusion conditions \(default: Cut\):

* Interior: copy only elements entirely inside the entity boundary.
* Cut: copy elements entirely or partially inside the boundary and clip them where they extend beyond it. The output file contains only the parts inside the boundary.
* Overlap: copy complete elements that are entirely or partially inside the boundary.

If you enable Invert selection, the new file contains entities outside the closed entity used as the window, using the selected copy mode. Keep in mind that:

* Only entities with at least one visible code are copied. Disabled codes \(OFF\) are removed from copied entities.
* Entities are copied from the working file and all loaded reference files.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Edit/Cut file... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CUT\_F\_CENTROID](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f-centroide.md) |
| Internal name | {AA1F6B68-B71D-476a-AF82-66284E4B79DE} |
