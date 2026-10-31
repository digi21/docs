# PhotoScan
<!-- id: photoscan -->
<!-- origen: 1a39aff787f18661d11e2ad24a29122eadd3ae83 -->

The Conical sensor obtains camera calibrations and photogrammetric model orientations from **PhotoScan** files.

## Coordinate reference system

PhotoScan's camera XML specifies the coordinate reference system in the chunk's `<reference>` node. If absent, set to a local system (**Local Coordinates** in PhotoScan), or unrecognized by Digi3D.AI, reads the `.prj` with the XML's name (`orientaciones.prj` for `orientaciones.xml`). Without `.prj`, displays [Would you like to assign one?](../sistema-de-referencia-del-modelo.md).

If `<reference>` specifies an unrecognized system, the chunk is georeferenced: Digi3D.AI transforms its coordinates to the `.prj` system or the system selected in the dialog, as with a recognized system.

Without `<reference>` or with a local system, model coordinates result from applying the chunk's `<transform>` to PhotoScan's internal coordinates, without transformation between reference systems. The selected system only identifies those coordinates, so it must match the PhotoScan project's reference coordinates (control points or camera positions).

## Metashape components

Metashape 2 splits a chunk into components when orientation cannot connect all photos. Each component has its own `<transform>`, and each photo identifies its component. Digi3D.AI applies each photo's component transformation, placing photos from all components in the same coordinate reference system.

Photos from different components cannot form a model because Metashape did not orient them together:

- Selecting left and right photos from different components produces an error and does not load the model.
- When automatically creating each strip's models, Digi3D.AI skips models between consecutive photos belonging to different components.
