# TRIANGULATE\_LINES\_EXCEPT\_POINTS\_WITH\_CODE
<!-- id: triangular-lineas-excepto-puntos-con-codigo -->
<!-- origen: a28b08db34aaa60c5363baee022b9b60f211b3e4 -->

Calculate a triangulation excluding nodes reached by lines with specified codes.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code of lines whose vertices form the DTM | No |
| 2...n | Code or codes of lines whose vertices to exclude (one or more) | No |

## Notes

Work with undeleted lines in the active drawing file. Exclude a vertex of a line bearing parameter 1's code if it coincides in XY with a vertex of a line bearing an excluded code and does not coincide with any vertex of another line bearing neither those codes nor parameter 1's code.

Triangulate the remaining vertices without breaklines and load the DTM as a new reference file named "Triangulation created at hh:mm:ss". If fewer than three vertices remain or triangulation fails, display an error balloon.

With fewer than two parameters, display "No parameters have been specified" and end.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesMDT.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [TRIANGULATE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md)<br>[TRIANGULATE\_TOPOLOGY\_POINTS\_EXCEPT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-puntos-topologia-excepto.md) |
| Internal name | {AAB62AA3-5A58-42C1-A8E1-B03CB44FBFD4} |
