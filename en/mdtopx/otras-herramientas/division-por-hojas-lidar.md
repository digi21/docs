# Split LiDAR into sheets
<!-- id: division-por-hojas-lidar -->
<!-- origen: b377d9ebc647dddb27d15205b7cede3d962fab1b -->

[Project pane](/mdtopx/introduccion/paneles-de-la-aplicacion/panel-proyecto.md)

This dialog splits LiDAR files before inserting them into the project.

Fields:

* **Division format**: five options:
  * By sheet dimensions: maximum sheet height and width, in meters.
  * By number of rows and columns: row and column counts for subdividing the file.
  * Point count: maximum points per subdivision.
  * Measurement block: divides by measurement source point.
  * Do not divide: inserts the original file without subdivision.
* **Data output**: resulting sheet names, required unless Do not divide is selected.
* **Suffix**: characters appended to the original name, with hash signs marking generated file index positions.
* **Format**: vector file format for resulting sheets.
* **Destination**: folder storing resulting sheets.
