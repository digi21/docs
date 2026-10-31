# Load textures
<!-- id: cargar-texturas -->
<!-- origen: f45e19d9939c70867bacc9918d47563c4ae59049 -->

[VirtuaLand Load](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-cargar.md)

The program loads textures onto the digital model, overlaying its triangles or cells. Images can be orthophotos or raster images in TIFF, BMP, JPEG, PNG or ECW format. They must cover the same geographical area as the digital terrain model and be georeferenced in plan.

The tool displays a dialog for loading new textures or unloading current ones, with a list of current texture files. Click Load... to load new files. To unload current files, first select them in the list with the left mouse button, using \[Ctrl] and \[Shift] for multiple selection if needed, then click **Download**.

If a file changes after loading, click Reload to load it again.

When changes are accepted, the program reads the images from disk and displays a loading options [dialog](configurar-carga-de-imagen.md) for each newly loaded image.

Textures [integrated into the digital model](../integrar-texturas.md) do not appear in the list and cannot be unloaded here: they belong to the digital model. Use **Remove integrated textures** to remove them.

To display the digital model without textures while keeping them loaded, clear **View texture** in the DTM tools [Surface](../../herramientas-de-visualizacion/vista-de-superficie-de-mdt.md) button. To transfer the digital model and textures to other 3D programs, use [Export OBJ with textures](../exportar-obj.md).
