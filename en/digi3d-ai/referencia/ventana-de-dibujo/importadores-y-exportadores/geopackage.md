# GeoPackage files
<!-- id: geopackage -->
<!-- origen: 46095ed860a8772d4961beb7529f1586e9d3f866 -->

Importer and exporter for **GeoPackage files**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs: the category appears empty when creating or opening a file.

### Opening the file

If [Ask for layers to load](../../cuadros-de-dialogo/configuracion/geopackage/preguntar-por-capas-al-cargar.md) is enabled in the Configuration dialog (the default) and the file contains any layer with geometries, Digi3D.AI displays [Tables selection](../../cuadros-de-dialogo/seleccion-de-tablas.md). Cancelling loads no layers.

### Coordinate reference system

GeoPackage identifies each layer's reference system by its EPSG code. Digi3D.AI works with a single system per file:

* If the file has no reference system (for example, when creating a new file), Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and adds the selected system to the file. If the selected system has no EPSG code, it is not added.
* If the file has only one system, that system is used.
* If layers have different systems, Digi3D.AI displays **Multiple coordinate reference systems detected**, with a button for each system. The selected button determines the working system. If the file is not opened read-only, the dialog also has **Assign one coordinate reference system to all layers...**: it opens reference system selection and, after confirmation, assigns the selected system to all layers without reprojecting their coordinates. This modifies the file and cannot be undone. If the selected system has no EPSG code, Digi3D.AI displays “The selected system has no EPSG code. GeoPackage identifies coordinate reference systems by that code, so it cannot be assigned.” and displays the dialog again.
* Closing the dialog without making a selection displays “Opening cancelled: no coordinate reference system was selected.” and leaves the file unopened.

Layers with a non-EPSG system, or an EPSG code unknown to Digi3D.AI, are treated as **Unknown**.

### Configuration options

The Configuration dialog has more options for this format in [GeoPackage](../../cuadros-de-dialogo/configuracion/geopackage/README.md).

## Layers and codes

Layers without a primary key, such as views, are not loaded: Digi3D.AI displays a warning with their name and loads the rest of the file.

If several codes link to the same table, an entity receives the first code for which it meets all conditions; a field with no value (NULL) meets none.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.gpkg` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
