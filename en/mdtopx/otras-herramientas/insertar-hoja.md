# Insert sheet
<!-- id: insertar-hoja -->
<!-- origen: a0df70b3a7839846604c3f31898137ca0cc3bc15 -->

[Edit file](../fichas-de-herramientas/ficha-de-herramientas-editar/editar-archivo.md)

The program automatically adds a sheet with coordinates and grid crosses to the drawing, providing coordinate references when printing.

Available only with an active drawing document.

Insert the sheet using coordinates in the drawing's reference system, a print sheet size, or automatically from drawing extents.

The configuration dialog contains:

* **Sheet elements**: element dimensions in millimeters. Their screen size depends on drawing scale.
* **Text height**: height of coordinate texts around sheet margins.
* **Cross height**: size of crosses inside the sheet.
* **Cross spacing**: spacing between crosses. Coordinate texts are placed where grid lines meet sheet boundaries.
* **Text codes**: coordinate text code.
* **Line codes**: sheet boundary and cross code.
* **Sheet extent**: several insertion methods:
* **Scale**: drawing scale denominator for calculating text and cross sizes and cross spacing.
* **Specify boundaries in ground coordinates**: upper-right and lower-left corners in the drawing's reference system. Manually entered limits should be multiples of cross spacing for an orderly distribution. Otherwise the program asks whether to adjust or retain them. Adjustment rounds minimum coordinates downward and maximum coordinates upward to the nearest multiples.
* **Specify print size**: print sheet size and insertion lower-left corner coordinates. Inserting a print sheet measured in millimeters depends on drawing scale.
* **Calculate automatically from drawing limits**: calculates a sheet enclosing the entire drawing, with corner coordinates that are multiples of cross spacing, giving an integer number of crosses.
