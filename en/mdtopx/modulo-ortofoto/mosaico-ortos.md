# Image Mosaic
<!-- id: mosaico-ortos -->
<!-- origen: 7eb066b6ec7daa78291706f88d330db7f93b3c84 -->

[Orthophoto module](/mdtopx/modulo-ortofoto/)

This tool generates an orthophoto mosaic. Specify mosaic boundaries, source orthophotos and seam lines for joining them. Generate seam lines with [Seam Lines](/mdtopx/modulo-ortofoto/lineas-de-union.md).

The following fields are required:

* **Image files**: folder containing source orthophotos. The program selects files using texts in the seam line vector file.
* **Mosaic border file**: vector file containing mosaic sheet boundaries. These must be closed entities with an interior text acting as a centroid. Each mosaic sheet is named after that text.
* **Seam line file**: vector file defining the area used from each source orthophoto. Boundaries must be closed entities with an interior text acting as a centroid. This text must contain the orthophoto file name supplying data to the mosaic.
* **Output**: set of mosaic image files. Specify their format and storage folder. File names come from the mosaic sheet file.
* **Radiometry adjustment**: adjusts pixels near seam lines to create a transition between orthophotos. Specify the pixel width around the seam for this transition.

See also:

* [Orthophoto computation](calculo-de-ortofoto.md)
* [Seam line calculation](lineas-de-union.md)
