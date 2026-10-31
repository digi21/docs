# Integrate textures
<!-- id: integrar-texturas -->
<!-- origen: f38486fbdd3192eef98d777a71ed8cf5fb896036 -->

[VirtuaLand Load](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-cargar.md)

Stores textures loaded with [Load textures](cargar-texturas/README.md) inside the digital terrain model file. They appear when it opens without reloading them or needing the orthophoto files. **Integrate textures** and **Remove integrated textures** are in the VirtuaLand tab's **Load** group, beside [Textures](cargar-texturas/README.md).

## Integrate textures

Integrates loaded textures not already stored in the digital model. Available only when at least one loaded texture is not integrated.

* Only the portion of each orthophoto covering the digital model is stored, at its loaded resolution, in PNG format, losslessly and retaining transparency if present.
* The digital model is modified: textures are stored in its file when you use **Save** or **Save as**.
* The results window reports how many textures were integrated.

Once integrated, the texture belongs to the digital model. [Load textures](cargar-texturas/README.md) no longer lists it or allows it to be unloaded, even if the orthophoto file is deleted or moved. Use **Remove integrated textures** to remove it.

## Opening the digital model

Integrated textures load automatically as part of reading the digital model. The results window numbers the model reading and each texture's reading and projection processes consecutively. At the end it reports the number of textures loaded, "Operation completed successfully" and the total opening time.

To display the digital model without textures while keeping them loaded, clear **View texture** in the DTM tools [Surface](../herramientas-de-visualizacion/vista-de-superficie-de-mdt.md) button.

## Remove integrated textures

Removes all integrated textures from the digital model after confirmation. They disappear, and saving stores the model without them. Textures loaded from files remain unchanged. Available only when the digital model has integrated textures.

## Compatibility

A digital model with integrated textures is saved in MDT format version 9, which **earlier MDTopX versions cannot open**. A digital model without integrated textures is still saved in version 8. To open a model in an earlier version, remove its integrated textures and save it.

Undo and Redo do not affect integrated textures; they only undo geometry changes.

When [exporting OBJ with textures](exportar-obj.md), integrated textures are exported using the image stored in the digital model.
