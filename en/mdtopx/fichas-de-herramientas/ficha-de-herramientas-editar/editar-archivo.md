# File
<!-- id: editar-archivo -->
<!-- origen: 74691e5e7cf9ea4dfe5b01b2fca8dd30c20ac922 -->

[Edit tab](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-editar/)

This group contains active document editing commands:

* **Add file**: adds existing files to the current document. Windows file selection lets you select one or more files using \[Shift] and \[Control]. Behavior depends on document type:
  * Digital models accept only digital model files. New information is retriangulated to preserve consistency. Overlapping models open a [dialog](../../operaciones-con-archivos/agregar-modelos-digitales-del-terreno.md) with handling options.
  * Drawings accept BIN, DXF, DGN, ASC, PTS or LAS drawings.
  * Images cannot accept added files, so this command is disabled. Use [Join images](/mdtopx/herramientas-para-imagenes/unir-imagenes.md) instead.
* [**Load reference**](../../operaciones-con-archivos/abrir-archivos-de-referencia.md): loads reference files of various formats over the current document. Disabled for image documents without georeferencing.
* **Compress**: permanently removes entities marked as deleted. In drawings these are drawing entities; in digital models they can be points or triangles. Images have no deletion markers, so this tool is disabled for them.
* [**Coordinates transformation**](../../otras-herramientas/transformacion-de-coordenadas.md): transforms drawing or digital model coordinates with 2D or 3D Helmert transformations, affine transformations or an NTV2 grid.
* **Copy to clipboard**: copies the current view to the Windows clipboard as an image for pasting into another application's document.
* [**Insert sheet**](../../otras-herramientas/insertar-hoja.md): inserts a map sheet frame and coordinate grid in a drawing document.
* **Split by sheets**: groups two map sheet tools:
  * _Split by sheets_: creates files by cutting the current document according to coordinates or vector entities stored in a file. Different dialogs appear for a [TIN digital terrain model](../../otras-herramientas/cortar-por-hojas.md) and a [vector drawing or grid](../../otras-herramientas/division-por-hojas.md).
  * [_Sheet layout_](../../otras-herramientas/grafico-de-hojas.md): creates files by cutting the current document along sheet boundaries stored in a drawing file.
* **Save current view**: creates a new image document from the active document's current view, useful for documentation or presentations.
* **Extract limits**: calculates boundaries occupied by a file or point set. Different dialogs appear for a [general vector drawing](../../otras-herramientas/extraer-limites.md) and a [point cloud](../../otras-herramientas/extraer-limites-lidar.md).
* **Delete in limits**: deletes triangles inside or outside boundaries. Different dialogs appear for a [TIN model or drawing](../../herramientas-de-edicion-de-la-triangulacion/borrar-fuera-o-dentro-de-limites.md) and a [grid digital model](../../modulo-virtualand/borra-en-limites.md).
* [**Database**](../../otras-herramientas/editar-elementos/base-de-datos.md): manages the current document's associated database and displays its structure and associated attributes.
