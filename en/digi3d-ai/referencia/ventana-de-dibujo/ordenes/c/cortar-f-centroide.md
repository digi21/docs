# CUT\_F\_CENTROID
<!-- id: cortar-f-centroide -->
<!-- origen: 74ae2d9596fb8010f4e8fccea8d83341f25f790a -->

Generate a new file with the elements inside the boundary of a drawing entity with a specific centroid.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Output\_directory | Directory | No |
| 2 | Extension | File extension | No |
| 3 | Exporter\_parameters | Parameters for the corresponding importer/exporter | No |
| 4 | Centroid\_code | Code of the boundary lines and centroids | No |

If you specify fewer than four parameters, the command plays an error sound and displays a message. Without parameters, the command finishes without doing anything.

### Example

`CUT_F_CENTROID="C:\Trabajos\carpeta\" bin "2 0 0 0 0" SHEET`

In this example:

* C:\Trabajos\carpeta is the output directory where you want to generate the file.
* bin is the extension of the file to generate.
* "2 0 0 0 0 " are the export parameters: here, 2 means cm, 0 0 0 is the origin, and 0 means no locking.
* SHEET is the code used to draw the boundaries and write the centroids.

## Notes

This command clips files from the command line. The boundary can be an irregular polygon and does not need to be selected manually.

There can be multiple boundaries, provided their centroids have the same code but different text. For each boundary, the application generates a file named after the text of that boundary's centroid. If a sheet file already exists, it is replaced.

Boundaries are visible, undeleted 2D closed lines within the area of interest that have the specified code. Each boundary's centroid is the first text with that code inside the boundary. Boundaries without a centroid are ignored. Entities crossing the boundary are clipped, and only the interior part is saved to the file. Entities with the boundary code (the boundaries and centroids) are not saved to any file.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [CUT\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cortar-f.md) |
| Internal name | {5710B5C8-DF11-43c7-AFB6-EF9818C99AE7} |
