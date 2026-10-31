# CLONE
<!-- id: clonar -->
<!-- origen: f69b7f190880207d70a2cde9e766940a952b0b32 -->

Clone properties \(codes, active angle, text height, and so on\) from the selected entity.

## Parameters

Does not accept parameters.

## Notes

The command performs these actions according to the selected entity type:

* Set the active codes to the selected entity's codes.
* Set the active attributes to the selected entity's attributes.
* For a linear entity, set the active Z to the interpolated Z at the selection point on the selected segment \(regardless of whether the active search mode is 2D or 3D\) and move the cursor to that point.
* For a point or text entity, set the active Z to its Z coordinate.
* For text, assign its height to [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), its justification to [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) \(0 if greater than 8\), and its rotation angle to [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Immediate/More/Clone entity codes and attributes |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — active Z coordinate value |
| Related commands | [CLONE\_ATTRIBUTES](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar_atributos.md)<br>[CLONE\_BBDD\_FIELDS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-campos-bbdd.md)<br>[CLONAR\_CÓDIGOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos.md)<br>[CLONAR\_CÓDIGOS+](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/clonar-codigos-mas.md) |
| Internal name | {43D5468D-F728-4289-87B6-8D9D467EC132} |
