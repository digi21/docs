# ESRI Shapefile files
<!-- id: shp -->
<!-- origen: 549bd59f2c39f3245de552c690bb79e478bdc2be -->

Importer and exporter for **ESRI Shapefile files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.shp <Precision> <Codificacion>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Precision, from 0 to 12. A value outside this range makes the command display an error and leave the parameters unchanged. | Yes |
| 2 | Encoding (language driver identifier, *LDID*, written in the `.dbf` header, in decimal; 255 = UTF-8) | Yes |

An omitted parameter takes the value 0, rather than the saved value.

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab in the New project dialog and in dialogs that open, import or export files in this format. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Precision decimals | Integer from 0 to 12. Default: 0. An out-of-range value is replaced with the nearest limit, including values read from the saved configuration. | When saving each geometry, during export or editing, rounds its coordinates to this number of decimal places. With 0, coordinates are not rounded. A coordinate whose magnitude prevents representing that number of decimal places is saved without rounding. |
| Encoding | Code page from the list, with its number in parentheses: MS-DOS, _Windows_ and Macintosh pages for each language, Asian pages and UTF-8. Default: UTF-8. | Text encoding for the `.dbf` being created, also written to a `.cpg` file. When reading, only used if the `.dbf` does not specify its encoding and no `.cpg` exists. |
| Load region of interest (BETA) | Yes or No. Default: No. | With **Yes**, opening the file loads only the region of interest. Select the region by right-clicking the file in the drawing files pane. |

All three properties appear both when creating a file and when opening an existing one. Digi3D.AI saves their values in the user configuration.

### Opening the file

Each `.shp` file is a layer. When opening or importing a file, Digi3D.AI loads all layers in its folder that have a `.shx` file. If [Ask for layers to load](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/preguntar-por-capas-a-cargar.md) is enabled in the Configuration dialog, Digi3D.AI displays [Table selection](../../cuadros-de-dialogo/seleccion-de-tablas.md) before loading layers so you can choose which ones to load.

### Coordinate reference system

If the folder has no layers yet (for example, when creating a new file), Digi3D.AI displays **Select the reference coordinate system to be assigned to the file**. If it has layers, the first layer's system is used. See [Location of the coordinate reference system](../../../sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/archivos-de-dibujo/ubicacion-src-archivos-dibujo.md).

### Configuration options

The Configuration dialog has more options for this format in [Shapefile file importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-archivos-shapefile/README.md).

## Damaged files

If a geometry's `.shx` index points outside the `.shp`, the `.shp` is truncated or a geometry's `.dbf` record is damaged, that geometry is not loaded. An error with the layer name and geometry number is added to the loading error list. Other geometries in the layer are loaded.

The backup also includes layers without a `.dbf` file.

If the layer is open read-only, storing, deleting or recovering a geometry displays “The _layer_ layer is open read-only: geometries cannot be stored, deleted or recovered in it.” and leaves the file unchanged.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.shp` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
