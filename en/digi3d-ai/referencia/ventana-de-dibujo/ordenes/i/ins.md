# INS
<!-- id: ins -->
<!-- origen: 702ce0bed74fc83adcaedac48ead8313aa8945ae -->

Insert a drawing file into the working file.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Name of the file to insert. If omitted, the program displays a file selection dialog box | Yes |

## Notes

* If the file to insert was created with _BLOCK_, the program defines a translation vector from \(0, 0, 0\) to the coordinates of the point you specify. This translation places all block points at their new positions in the working file.
* To insert any DigiNG drawing file, specify the point at coordinates \(0, 0, 0\) in the working file as the insertion point. In this case, both files must use the same coordinate system for insertion to be possible.

Drawing files \(BIN\) include any DigiNG file and files created with [BLOCK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md).

BIN and BIND files are inserted without displaying the import parameters dialog box: a BIN file is read with centimeter precision and global origin \(0, 0, 0\), and a BIND file is read without its database or reference files.

The file is inserted with a scale factor equal to the active scale \([ACT\_SCALE](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/esc-act.md)\).

## Command characteristics

| Command type | [Interactive command](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repeats automatically | Yes |
| Menu option | Draw/Blocks/Insert a north-oriented block... |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | [REPEAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repeat the last command executed |
| Related commands | [BLOCK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque.md)<br>[BLOCK\_2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bloque-2p.md)<br>[INS\_3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-3d.md)<br>[INS\_AA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-aa.md)<br>[INS\_COMPLEX](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/ins-complejo.md)<br>[INSR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/insr.md) |
| Internal name | {053ADE6F-2BEF-4594-9E5B-C5C4448818DC} |
