# Reference file selection
<!-- id: seleccion-de-archivos-de-referencia -->
<!-- origen: cc1832f3256ab4de055741568a25c0de5a4b2e48 -->

Digi3D.AI displays this dialog when opening a drawing file with associated reference files, an associated photogrammetric project or an associated photogrammetric model if [Ask which reference files to load](configuracion/comunicacion-con-el-usuario/preguntar-que-archivos-de-referencia-cargar.md) is enabled.

## Fields

* **Reference file list**: reference files associated with the drawing file, with each filename and folder. Select the files to load. Initially all files are selected.
* **All** and **None**: select or clear all files.
* **Remove**: removes selected files from the list. Clicking **OK** removes the association between the reference files removed from the list and the drawing file, as with [LEAVE](../ventana-de-dibujo/ordenes/d/dejar.md).
* **Load the associated photogrammetric project**, **Load the model _name_ of the associated photogrammetric project** or **Load the associated photogrammetric model**: check box shown below the list if the drawing file has an associated photogrammetric project, a model of a photogrammetric project or a photogrammetric model file (`.d3d`). The text ends with the path of the project or the model file. Initially the check box is selected. Clear the project or model check box to open the drawing file without loading the project or the model.
* **OK**: loads selected files, removes the associations between the reference files removed from the list and the drawing file and, if the project or model check box is selected, loads the associated project or model.
* **Cancel**: opens the drawing file without loading reference files or the associated project or model, and without changing the associations between the reference files removed from the list and the drawing file.

If the drawing file has no reference files but has an associated project or model, the list is empty and **All**, **None** and **Remove** are disabled.

Unselected files remain associated with the drawing file and appear in the list again next time you open it. If you clear the project or model check box, or click **Cancel**, the project or model remains associated with the drawing file and the check box appears again next time you open it.

The list and the path of the associated project or model come from the drawing file's [reference file list file](../archivos/archivo-de-archivos-de-referencia.md).
