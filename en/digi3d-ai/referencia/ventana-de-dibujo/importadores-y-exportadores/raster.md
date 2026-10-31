# Raster images
<!-- id: raster -->
<!-- origen: c9375bfea456ccab620db45f3f489c247c48a824 -->

Importer for **Raster images**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md), using the image extension.

For example:

```
IMPORTATION_PARAMETERS=.tif <Comprimir> <NivelPiramidal>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Compress (1 = Yes; any other value = No) | No |
| 2 | Pyramid level, as a list position: 0 = 1, 1 = 2, 2 = 4 … 13 = 8192 | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the dialog that imports images. This format can only be imported. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Compress | Yes or No. Default: Yes. | With **Yes**, the image is loaded onto the graphics card as a compressed texture. Does not apply to image formats read at a scale determined by zoom. |
| Pyramidal level | 1, 2, 4, 8 … 8192. Default: 1. | Image pyramid level to load. If the image lacks that level, the nearest available one is loaded. |

Digi3D.AI saves property values in the user configuration.

### Coordinate reference system

The reference system is read from image georeferencing. If image georeferencing includes no reference system, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and saves the selected system in a `.prj` file with the same name as the image.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | — |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | No |
| A drawing window can be opened with this format | Yes |
