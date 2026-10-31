# Information
<!-- id: lot-of-points-informacion -->
<!-- origen: b7f0bf71bd719cbee0ad709f3dcd534c167ef1ef -->

**Information**, in **Basic algorithms** on **Visualization**, queries open clouds and writes statistics to **Output**. The button is enabled when a cloud is open.

The command also processes hidden and remote clouds. Read-only mode needs neither an edit log nor original-file indices. The query does not modify points or add history events.

## Queried points

The command traverses level-of-detail points with edited classes, excluding deleted points. The count is not limited to points drawn on screen. When points are isolated, processing is limited to them.

Level-of-detail creation discards exact duplicate points, so the total can be lower than the original file's count.

## Output

The command writes a block per cloud when `process_tiles` returns `LOP_OK`. An empty cloud also has a block, with its name, path and a count of 0.

| Line | Contents |
|---|---|
| `Nube i de n: nombre` | Cloud position among those queried and its **Layers** name. |
| `Ruta:` | Original path or remote cloud URL. |
| `Puntos:` | Number of queried points. |
| `X:`, `Y:` | Minimum and maximum of each coordinate. |
| `Z:` | Minimum, maximum and mean elevations. |
| `Intensidad:` | Minimum, maximum and mean intensity. |
| `Puntos con RGB distinto de 0 0 0:` | Count and percentage of points with a nonzero red, green or blue (RGB) component. |
| `Retorno r:` | Count and percentage per return. Return 0 is marked “no data”. |
| `Superficie ocupada:` | Area of occupied cells and average density. |
| `Clase c - nombre:` | Count and percentage per class, using the current **Classifications** name. |

Return and class lines appear only for values with points. If a class has no name, the command writes `Clase c:`. Black points, with all three color components at 0, are excluded from the nonzero-color count.

The block also gives X/Y and Z units. When a horizontal or vertical reference system component is absent, local or has unreadable units, the command writes “no disponible” in Spanish or “not available” in English.

The command uses three decimal places for coordinates and elevations, one for mean intensity and two for areas, densities and percentages. Text and numeric separators are Spanish for language `es` and English for other languages. The old general summary of modified points is not added.

## Area and parameters

The command divides each core into square cells and sums the area of those containing points. Cells start at the core corner and do not extend into neighboring cores. Edge cells can have a shorter side than configured. Average density is the point count divided by occupied area.

| Parameter | Unit | Default | Range, both endpoints included |
|---|---|---|---|
| Area cell side | Cloud units | 1 | 0.1–100 |

Open **Settings** and select **Basic algorithms** to adjust the **Information** group's parameter. Output expresses areas in squared cloud units and densities in points per squared unit.

| Feature | Value |
|---|---|
| Core side | 1000 cloud units. |
| Overlap width | 0 cloud units. |
| Concurrent tiles | No. |
| Required additional attributes | None. |
| Mode | Read-only. |

The identifier is `lop.example.information`. `Sdk/example/information.c` prepares state in `run`, accumulates data in each tile's function and writes blocks when `process_tiles` returns `LOP_OK`.
