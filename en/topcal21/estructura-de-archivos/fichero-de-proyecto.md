# Project file
<!-- id: fichero-de-proyecto -->
<!-- origen: 476c843133fd1a54366f00ccb820fb8568bd241b -->

This type of file relates the different files that make up a job. Create one project for each job, where the different calculations performed are stored. In these projects you can have [point](ficheros-de-puntos.md), [observation](ficheros-de-visuales.md) or [sketch](fichero-de-croquis.md) files.

Generate one file for each calculation to keep the points of each result separate. For example:

* *Traverse.pts*: File with the stations of the traverse
* *Adjustment.pts*: File with the coordinates of the traverse adjusted by least squares.
* *COGO.pts*: File with the coordinates of the points radiated from the stations of the traverse.
* *Observations.obs*: Observations made in the traverse.

When a new project file is created, a folder with the name of the file is also created, so that when new files (points, observations, sketches) are created and inserted into this project, they are generated in this folder.

TopCal 21 project files have the extension **PRT** by default.
