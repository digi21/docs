# CHNG\_Z
<!-- id: camb-z -->
<!-- origen: 4ef6a8bc6d98151b78229df79e71e8bbf0769715 -->

Replace a drawing element's elevation with a new value.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 … N | Codes of entities to modify. Each code can be `#etiqueta` to specify all codes bearing that tag | Code | Yes |

## Notes

Without parameters, request the Z value in the status bar (initial value 0), then entity selection. Multiple selection is supported. After each selection, remain active and apply the same value to subsequent selected entities.

With parameters, assign [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) without prompting to all visible, undeleted entities within the area of interest bearing any specified code.

If an entity has different Z values, replace them all with a single value.

If quality control rejects a modified entity, retain its original unchanged. With multiple entities, each is handled independently: retain the original of each rejected entity and modify the others.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) without parameters; [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) with parameters |
| :--- | :--- |
| Repeats automatically | Yes, when run without parameters |
| Menu option | Edit/Assign coordinate Z to selected entities |
| Toolbar | Move |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — active Z coordinate value<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [CHNG\_ACTIVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-z-activa.md)<br>[MOVE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md)<br>[ZFIXED](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zfija.md) |
| Internal name | {58347183-0AF3-4671-9CEF-EEC236A8DCE3} |
