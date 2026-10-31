# Import data into a roads document
<!-- id: importar-datos-al-documento-de-viales -->
<!-- origen: 6d6314c7df809cd4501bc053a9ff0dccf969100e -->

[Roads module](/mdtopx/modulo-viales/)

The program imports data stored in other formats into the current roads document. Create an empty roads document or open an existing one, then select Import from the [MDTopX button](/mdtopx/introduccion/boton-de-mdtopx.md) menu.

Supported formats are:

* BIN files: DIGI mapping files.
* DXF files: AutoCad drawing exchange files.
* MicroStation files: MicroStation drawing files.
* ASCII point files: ASCII files listing X, Y, Z coordinates.
* ARC-GIS Shape files: Arc-GIS Shape format.
* TCP MDT axis files: TCP MDT road plan geometry. Multiple files can be selected at once.
* TCP MDT grade line files: TCP MDT road grade lines. Multiple files can be selected at once, after which a [dialog](importar-rasantes.md) associates imported vertical alignments with existing horizontal alignments.

For drawing or ASCII files, meaning every format except the last two, specify the type of data the file contains and where to insert it.

For example, if it contains plan alignment data, choose the first option. The program then lets you add the imported elevation data as vertical alignments \(import as a grade line).

Data stored in elevation view can instead be added as grade lines. Specify the datum elevation \(added in meters to the imported Y coordinate) and the horizontal alignment to which the vertical alignment should be assigned.
