# Remove classification
<!-- id: lot-of-points-quitar-clasificacion -->
<!-- origen: 0e2d077577ccfa987304f808da884be9274c4bdb -->

**Remove classification**, in **Basic algorithms** on **Point classification**, assigns class 1 to processed points. It needs no parameters. The button requires a cloud with an edit log and original-file indices.

The command chooses open clouds meeting both conditions, including hidden and remote ones. It writes the reason for skipping each cloud to **Output**. The calculation preserves other attributes and excludes deleted points.

A call changing classes adds a history event. Points already in class 1 do not count as reclassified. Output states “Remove classification: *n* points go to class 1 in *k* clouds.” Click **Undo** on the title bar to undo the committed event.

| Feature | Value |
|---|---|
| Core side | 1000 cloud units. |
| Overlap width | 0 cloud units. |
| Concurrent tiles | Yes. |
| Required additional attributes | None. |

The identifier is `lop.example.remove_classification`. Code is in `Sdk/example/remove_classification.c`; cloud selection is in `Sdk/example/editable_clouds.c`.
