# Sketch file
<!-- id: fichero-de-croquis -->
<!-- origen: b98a8c4edefd19cf53a23ded99a77d8e478706a4 -->

This type of file stores drawing entities defined by points in the point files linked to the sketch. With it you can record geographic entities by joining previously stored points. It is also possible to generate a sketch automatically from the codes recorded in the field observations.

The program uses the coordinates of the point files directly to draw the recorded entities, so that if these coordinates are modified in the editor provided for that purpose, the entities are updated automatically.

To do this, you must relate the sketch file to the point files it will use for the entities. This relation is set when the sketch file is created, in a dialog box that shows the following data:

* **Unlinked Point files**: The list of the point files in the current project that you can choose to display in the sketch. You can link as many point files as you want.
* **Linked Point files**: Shows the point files currently linked to the sketch.
* **Separators to read codes**: You can select the characters that act as separators between the different codes of a point.

TopCal 21 sketch files have the extension **CRQ** by default.
