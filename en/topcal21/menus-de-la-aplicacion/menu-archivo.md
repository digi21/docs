# File menu
<!-- id: menu-archivo -->
<!-- origen: a646a382cd4cffbe5327bb98c52d5f5be7e3f969 -->

This menu contains all the commands for file operations and printing. The commands it contains are:

* ![Icon](../../images/icono-nuevo.gif) **[New](../estructura-de-archivos/crear-un-fichero-nuevo.md)**: Creates a new document: a project or a point, observation or sketch file. This tool can also be accessed with the key combination *Ctrl* + *N*.
* ![Icon](../../images/icono-abrir.gif) **Open**: Opens an existing point or observation file and adds it to the *Other files* folder. This tool can also be accessed with the key combination *Ctrl* + *O*.
* ![Icon](../../images/icono-guardar.gif) **Save**: Saves the current document. If the document has not been saved before, the program opens Windows Explorer so that you can specify a name and a destination folder. This option is active only if the document has been modified. This tool can also be accessed with the key combination *Ctrl* + *S*.
* **Save as**: Saves the current document with a name or destination folder different from the current one. The program opens Windows Explorer so that you can specify the name and the destination folder.
* ![Icon](../../images/icono-cerrar.gif) **Close**: Closes the current document. This option is active only if an element of the *Other files* folder is active. To remove a file from a project, run the *Delete File* command, described below.
* ![Icon](../../images/icono-abrir-proyecto.gif) **Open project**: Opens an existing TopCal project.
* ![Icon](../../images/icono-guardar-proyecto.gif) **Save project**: Saves the current project. If the project has not been saved before, the program opens Windows Explorer so that you can specify a name and a destination folder. This option is active only if the project has been modified.
* **Save All**: Saves all modified files and the project, if it has also been modified. This tool can also be accessed with the *F2* key.
* **Close Project**: Closes the current project. This tool can also be accessed with the key combination *Ctrl* + *F4*.
* ![Icon](../../images/icono-insertar-archivos.gif) **Insert File**: Inserts a point or observation file into the current project.
* ![Icon](../../images/icono-cerrar.gif) **Delete File**: Removes a point, observation or sketch file from the current project. It is available only if a project is active.
* **Import**: Imports data from other file types. There are several types, depending on the type of file the data will be imported into, that is, a point file or an observation file. The files that TopCal 21 imports, depending on the type of the current file, are:
  * *Point files*:
    * TopCal point files, MS-DOS version.
    * DIGI BIN files.
    * DIGI ASCII files.
    * AutoCAD DXF files.
    * ASCII files: Text files with different data arranged in configurable columns. These files should contain one line per record, and the fields can be separated by spaces, commas or tabs. If the point name contains spaces, commas or tabs, enclose it in double quotation marks so that the program does not interpret those characters as field separators.
    * Leica GSI files.
    * Files from SDR.
    * Nikon station files.
    * ZAS files from La Técnica.
    * MicroStation DGN files.
  * *Observation files*:
    * TopCal observation files, MS-DOS version.
    * ASCII files: Text files with different data arranged in configurable columns. These files should contain one line per record, and the fields can be separated by spaces, commas or tabs.
    * Leica GSI files.
    * GeoRed files.
    * Files from SDR.
    * Kern station files.
    * Geodimeter GeoDat files.
    * Nikon station files.
    * Topcon station files.
    * Pentax station files.
    * Files from Psion.
    * Files from Psion for Sokkisa.
    * Files from Psion for GeoDat.
    * Files from Psion for Tacor.
    * ZAS files from La Técnica.
    * TCP ET files.
* **Export**: Exports the data of the current file. There are several destination formats, depending on the type of the current file, that is, a point file or an observation file. The files that TopCal 21 exports, depending on the type of the current file, are:
  * *Point files*: TopCal 21 can export point files to surveying equipment formats or to drawing files (BIN, DXF, DGN). In the latter case, you can [configure how the points are translated](../otros-comandos/exportar-puntos-a-un-archivo-de-dibujo.md) by clicking the **Advanced** button that appears in the dialog box. The supported formats are:
    * TopCal point files, MS-DOS version.
    * DIGI BIN files.
    * DIGI ASCII files.
    * AutoCAD DXF files.
    * DXF files for AutoCAD 2000.
    * ASCII files: Text files with different data arranged in configurable columns. One line is generated per record, and the fields of each record are separated by spaces.
    * HTML files: Formatted text files with different data arranged in configurable columns. The background color of this file and the text font can be configured from the [Preferences](../opciones-de-visualizacion/preferencias.md) dialog box in the [Edit](menu-editar.md) menu.
    * GeoDat files for Geodimeter stations.
    * GSI files for Leica stations. You can specify whether to export the data with 16 positions. If not, the data is exported with 8 positions.
    * ZAS files from La Técnica.
    * MicroStation DGN files.
  * *Observation files*:
    * TopCal observation files, MS-DOS version.
    * ASCII files: Text files with different data arranged in configurable columns. One line is generated per record, and the fields of each record are separated by spaces.
    * HTML files: Formatted text files with different data arranged in configurable columns. The background color of this file and the text font can be configured from the [Preferences](../opciones-de-visualizacion/preferencias.md) dialog box in the [Edit](menu-editar.md) menu.
    * GeoDat files for Geodimeter stations.
  * *Sketch files*: When you export a sketch file, you must specify the scale denominator used to calculate the size of texts and symbols in ground coordinates. The size of texts and the information shown for each point can be configured in the [Sketch preferences](../opciones-de-visualizacion/preferencias-de-croquis.md) option. You can also specify whether symbols are translated as symbols or as simple points.
    * DIGI BIN files.
    * DIGI ASCII files.
    * AutoCAD DXF files: You can specify whether to translate in 2 dimensions, that is, without using the elevation of the elements.
    * DXF files for AutoCAD 2000: You can likewise specify whether to translate in 2 dimensions.
    * MicroStation DGN files: In this case, the program asks for the name of the file that acts as the seed and, if you have one, a table that translates the TopCal codes to the MicroStation coding system (level, style, color, weight and graphic group).
* ![Icon](../../images/icono-agregar-archivo.gif) **Add file**: Combines existing files with the current one. Only files of the same type as the current file can be added: only point files can be added to a point file, and only observation files to an observation file. The program opens Windows Explorer to select the files to add. In this dialog box you can select a single file or several files, using the Shift and Ctrl keys.
* ![Icon](../../images/icono-imprimir.gif) **Print**: Prints the current document. This tool can also be accessed with the key combination *Ctrl* + *P*.
* **Print preview**: Shows on screen how the current document would be printed.
* **Print setup**: Configures the printer output device.
* **Recent files**: Shows a list of a maximum of five files with the most recently used documents. It is a quick way to open documents that have already been generated.
* **Recent projects**: Shows a list of a maximum of five projects with the most recently used ones. It is a quick way to open projects that have already been generated.
* ![Icon](../../images/icono-salir.gif) **Exit**: Closes the application. If any open document has unsaved changes, the program asks whether you want to save them before closing. This tool can also be accessed with the key combination *Alt* + *F4*.
