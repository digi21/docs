# HEIGHT
<!-- id: cota -->
<!-- origen: 68cccdb9524cfe0d4e8aa13a8ebf97e1dd5781cb -->

Digitize a spot elevation.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Code used to digitize the spot elevation point. | A code from the active code table, such as 020401 | Yes. If omitted, the point is digitized with the set of codes active when the command is run |
| 2 | Code used to digitize the spot elevation text. | A code from the active code table, such as 020401 | Yes. If omitted, the text receives the same code as the spot elevation point |
| 3 | Text X offset relative to the point, in reference system units | Real number | Yes. Only used if parameter 4 is also supplied |
| 4 | Text Y offset relative to the point, in reference system units | Real number | Yes. Only used if parameter 3 is also supplied |

## Notes

If parameters 3 and 4 are omitted, the text is offset from the point by half the value of [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) in X and the same amount in Y.  
The digitized text has the height specified by [TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md).  
The digitized text has the rotation specified by [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).  
The digitized text has the justification specified by [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md).  
The digitized text has the number of decimal places specified by [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Altimetric height |
| Toolbar | Elevations |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — active angle<br>[TH](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — text height<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — text justification<br>[REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [COD\_HEIGHTS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod-cotas.md)<br>[TAG\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-z.md) |
| Internal name | {2AA9DD50-D147-4779-BA91-231E88DD3F4D} |
