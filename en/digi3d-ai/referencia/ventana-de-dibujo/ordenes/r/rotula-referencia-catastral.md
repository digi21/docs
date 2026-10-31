# TAG\_CADASTRAL\_REFERENCE
<!-- id: rotula-referencia-catastral -->
<!-- origen: 6050b41bfdab027001f3c0d48ffbdb78d15c47d8 -->

Query the Spanish Cadastre web service for the cadastral reference at the insertion coordinates and insert text with that reference.

## Parameters

Does not accept parameters.

## Notes

Specify a point. The drawing window's coordinate reference system must have an EPSG code; a local system causes an error.

If the service returns a cadastral reference, insert text there with that reference, height [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), justification [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md), rotation [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), and the active code. If the service returns an error, display its message.

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [TAG\_DESCRIPTION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-descripcion.md) |
| Internal name | {C1CD9A73-605E-4715-A393-3B4E29D8AC0D} |
