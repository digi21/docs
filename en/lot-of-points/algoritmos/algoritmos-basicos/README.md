# Basic algorithms
<!-- id: lot-of-points-algoritmos-basicos -->
<!-- origen: d30c846096c09f96164d11614cfdd9059274f54d -->

The dynamic-link library (DLL) `lop_examples.dll` adds five commands. **Basic algorithms** appears on three tabs, according to each command's task.

| Tab | Button | Operation |
|---|---|---|
| Visualization | [Information](informacion.md) | Queries all clouds by tiles and writes statistics to **Output**. |
| Visualization | Point data | Waits for point clicks and writes their coordinates and attributes to **Output**. |
| Selection tools | Select object | Selects connected points of the clicked point's class. |
| Point classification | [Remove classification](quitar-clasificacion.md) | Assigns class 1 to processed points. |
| Point classification | [Classify by height](clasificar-por-altura.md) | Assigns classes by height above each cell's lowest point. |

The [extension manager](../../gestor-de-extensiones.md) controls whether these commands are enabled. Buttons also depend on their requirements: **Information** needs an open cloud; **Point data** and **Select object** need a visible cloud; both classification commands need a cloud with an edit log and original indices.

## Point data

1. Click **Point data** in **Visualization**.
2. Click a point in a visible cloud.
3. Read its data in **Output**.
4. Press **Esc** to finish.

The command writes coordinates, cloud identifier, original-file point index, class, intensity, return and red, green and blue (RGB) components. The class name comes from **Classifications**. If the cloud does not retain the original index, the command writes “unknown” for that value.

## Select object

1. Adjust **Cell side** and **Maximum search radius** in **Settings**, under **Basic algorithms**.
2. Click **Select object**.
3. Click a point on the object.
4. Apply **Delete**, **Classify** or **Isolate** from **Actions** when selection finishes.

The command groups points of the same class in cubic cells and connects cells touching by faces, edges or vertices. Classes 0 and 1 are also supported. The query radius increases to the configured maximum; an object reaching the search boundary at the maximum radius is not selected. The command warns if the query does not contain all points or if the cell side prevents recognizing the object within the configured radius.

| Parameter | Unit | Default | Range, both endpoints included |
|---|---|---|---|
| Cell side | Cloud units | 0.2 | 0.01–5 |
| Maximum search radius | Cloud units | 10 | 1–200 |

The selection remains when the command finishes. **Esc**, when no command is active, clears that selection. Starting another selection tool also clears the previous point selection. **Restore** requires a selected region because point queries do not include deleted points.

The five commands' code is in `Sdk/example`. `Sdk/example/python/point_data.py` and `select_object.py` provide Python versions of the two interactive commands.
