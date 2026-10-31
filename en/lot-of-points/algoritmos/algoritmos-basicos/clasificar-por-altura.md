# Classify by height
<!-- id: lot-of-points-clasificar-por-altura -->
<!-- origen: ca35c93d5cff8626980de8c0ecf4bd794b0dc9cc -->

**Classify by height**, in **Basic algorithms** on **Point classification**, assigns classes by each point's height above the lowest point in its cell. The button requires a cloud with an edit log and original-file indices.

The command processes open clouds meeting both conditions, including hidden and remote ones. It writes the reason for skipping each cloud to **Output**.

The calculation divides the tile into square cells in plan view and finds each cell's minimum elevation. A point whose height above that minimum is less than or equal to **Maximum height above the lowest point of the cell** receives **Ground class**. A point above the threshold receives **Other class**.

With defaults, cells have a side length of 2 cloud units and the threshold is 0.5 units. Points up to and including that threshold receive class 2; higher points receive class 1. Lengths use the cloud coordinate units.

## Parameters

Open **Settings** and select **Basic algorithms**, **Classify by height** group.

| Parameter | Unit | Default | Range, both endpoints included |
|---|---|---|---|
| Cell side | Cloud units | 2 | 0.1–100 |
| Maximum height above the lowest point of the cell | Cloud units | 0.5 | 0–100 |
| Ground class | Class number | 2 | 0–255 |
| Other class | Class number | 1 | 0–255 |

## Processing and result

Cells start at the corner of each tile's core. The calculation also uses overlap points, but results are saved only for core points.

| Feature | Value |
|---|---|
| Core side | 50 cloud units. |
| Overlap width | 10 cloud units. |
| Concurrent tiles | Yes. |
| Required additional attributes | None. |

The command writes “Classify by height: *n* points change class in *k* clouds.” A call changing points adds a history event. Click **Undo** on the title bar to undo the committed event.

The identifier is `lop.example.height_classifier`. Code is in `Sdk/example/height_classifier.c`; cloud selection is in `Sdk/example/editable_clouds.c`.
