# DGN export parameters
<!-- id: parametros-para-exportar-a-dgn -->
<!-- origen: 86516b6f655636214ae2030111abac2a7afe8394 -->

When points are translated to the MicroStation DGN format, you must specify a seed file. TopCal 21 reads the translation characteristics from the seed file, such as the units and the dimension (2D or 3D). In addition, you can specify a file that maps the display codes used in the program to the MicroStation coding format (level, style, color, weight and graphic group):

* **Seed**: Enter the name of a seed DGN file. It is required. It should be an empty file, because the program copies it with the name of the generated DGN file and keeps its characteristics (units, dimension, etc.). The program installation provides a seed file in three dimensions with centimeters as the minimum unit.
* **Table**: Enter the name of an ASCII file that specifies how to translate the entities. It is optional. The program installation also provides an example translation table. Each line of the file must have the fields separated by commas, spaces or tabs, in the following order:
  * DIGI code.
  * Level.
  * Style.
  * Color.
  * Weight.
  * Text font.
  * Graphic group.
  * Cell name.
  * Element type: It can take the values 0 (line string), 1 (shape), 2 (pattern line), 3 (cell) or 4 (text).
  * Text height in meters.
  * Text width in meters.
  * Text justification.
  * Fill color.

You can click the **OK** button to proceed with the computation or click the **Exit** button to return to the previous dialog box.
