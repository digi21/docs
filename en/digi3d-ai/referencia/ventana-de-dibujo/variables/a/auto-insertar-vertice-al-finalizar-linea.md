# AUTO\_INSERT\_VERTEX\_INTERSECTION\_ON\_LINE\_END
<!-- id: auto-insertar-vertice-al-finalizar-linea -->
<!-- origen: 0796a36e726b8f117a122cc29396bbc83f2e671a -->

Set whether vertices are automatically inserted into geometries crossing the geometry being digitized.

## Parameters

See [Boolean variable parameters](../../../ordenes/variables/variables-booleanas.md).

## Notes

If enabled, finishing a line analyzes its intersections with the other lines and polygons in the drawing file. Each intersection found adds a vertex both to the line just digitized and to the lines or polygons it crosses.

Analysis runs at the end of each undo transaction and includes all lines added in it, including those created by commands other than [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md).

Disabled by default.

## Command characteristics

| Variable type | [Boolean](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Geometric analysis/Insert a vertex at the point where two lines cross/Automatically insert vertex at intersections when finishing a line |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Internal name | {53054A2A-98D8-44D4-9404-7B86603F9759} |
