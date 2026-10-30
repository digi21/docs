# REMOVE\_3D\_POLYGON\_WALLS
<!-- id: eliminar-muros-poligonos-3d -->
<!-- origen: e35caae5e9466c85df0ae239fe635185e715dd62 -->

Analyze polygons created with three-dimensional (3D) topologies and remove walls whose Z difference is greater than or equal to the specified minimum.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Code of the polygons to process | No |
| 2 | Minimum wall Z difference, in reference system units | No |

## Notes

The command processes nondeleted polygons with the specified code. A wall is a pair of consecutive vertices with identical X,Y coordinates and a Z difference greater than or equal to parameter 2.

When the boundary rises along one wall and then descends along another, the command subtracts the accumulated rise from the vertices between the walls. Next, for consecutive vertices with identical X,Y coordinates, it assigns the lower Z to both and removes the repeated vertex.

The command replaces each modified polygon with the result. If parameters are missing, it displays a warning and finishes.

Each entity is handled independently: if Digi3D.AI rejects a modified polygon, its original entity is retained, and the other entities are modified.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesTopologia.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | No related commands |
| Internal name | {CB5AB130-A170-4A95-863C-D2E2C02A001B} |
