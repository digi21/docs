# Reference file selection
<!-- id: seleccion-de-archivos-de-referencia -->
<!-- origen: a17c2b162ae86b6ef3a5687d25146c9d3f1cbd4c -->

Digi3D.AI displays this dialog when opening a drawing file with associated reference files if [Ask which reference files to load](configuracion/comunicacion-con-el-usuario/preguntar-que-archivos-de-referencia-cargar.md) is enabled.

## Fields

* **Reference file list**: reference files associated with the drawing file, with each filename and folder. Select the files to load. Initially all files are selected.
* **All** and **None**: select or clear all files.
* **Delete**: removes selected files from the list. Clicking **OK** removes their association with the drawing file, as with [LEAVE](../ventana-de-dibujo/ordenes/d/dejar.md).
* **OK**: loads selected files and removes deleted ones from the drawing file.
* **Cancel**: opens the drawing file without loading reference files or removing deleted ones.

Unselected files remain associated with the drawing file and appear in the list again next time you open it.

The list comes from the drawing file's [reference file list file](../archivos/archivo-de-archivos-de-referencia.md).
