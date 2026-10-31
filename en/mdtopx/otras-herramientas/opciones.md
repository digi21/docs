# Options
<!-- id: opciones -->
<!-- origen: 9e448201ad726f1e6dc4b9c37b58c8586ac23d87 -->

[MDTopX button](/mdtopx/introduccion/boton-de-mdtopx.md)

This dialog has three tabs for changing general application settings and customizing its appearance.

The first tab contains general options:

* **Dongle setup**: where to search for the protection dongle, connected to a local USB port or a server. Select Find local dongle and/or Find network dongle accordingly. Disable network searching if no network dongle is used, avoiding time spent searching the network.
* **Undo commands**: undo steps per document, from zero \(undo disabled) to 25. More steps consume more memory; reduce this value for large files.
* **Coordinate precision**: file coordinate precision, centimeters by default. Change it here if the file uses different units. Changing units here affects every document open in the application.
* **Export to DGN files**: converting drawings or digital terrain models to MicroStation DGN requires a seed file defining export characteristics, including units and dimensions. An optional table maps program display codes to MicroStation coding: level, style, color, weight and graphic group.
* **Seed**: required DGN seed file. It should be empty because it is copied under the generated DGN file name, retaining its characteristics. Installation provides a three-dimensional seed with centimeters as its smallest unit.
* **Table**: optional ASCII entity conversion table. Installation includes a sample. Each line has comma-, space- or tab-separated fields in this order:
  * DIGI code.
  * Level.
  * Style.
  * Color.
  * Weight.
  * Text font.
  * Graphic group.
  * Cell name.
  * Element type: 0 \(line string), 1 \(shape), 2 \(pattern line), 3 \(cell) or 4 \(text).
  * Text height in meters.
  * Text width in meters.
  * Text justification.
  * Fill color.
* **Coordinate origin**: MDTop applies a global origin to imported coordinates.
* **Use temporary file to generate TIN**: lets MDTop use temporary files during file triangulation. Useful for very large files with high free-memory requirements, but slows processing and should normally remain disabled.
* **Play sound when computations finish**: plays a sound after each calculation.
* **Check new versions**: checks the Digi21.net server for new program versions at startup.
* **When you draw lines**: configures the temporary on-screen line when entering a new line, such as a breakline or a road horizontal or vertical alignment:
  * **Style**: _Solid_, _Dash_, _Dot_, _Dash-Dot_ or _Dash-Dot-Dot_.
  * **Width**: line thickness from 0 to 10.
  * **Color...**: opens the Windows color selection dialog.

Load or save settings for application dialogs, including hypsometric tints, shading and contours, with the corresponding buttons.

The second tab controls text display in drawing files. Text is displayed in high-quality 3D by default. If the graphics card struggles with many texts, reduce display quality or disable 3D text.

The third tab configures the Quick Access Toolbar and command keyboard shortcuts.
