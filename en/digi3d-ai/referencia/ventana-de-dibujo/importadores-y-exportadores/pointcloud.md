# PointCloud files
<!-- id: pointcloud -->
<!-- origen: b4f9262510023ba21f7f94dbb30858a6d5940e62 -->

Importer for **PointCloud files**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in the dialog that imports files in this format.

### Importing the file

Digi3D.AI prepares point cloud level of detail files and displays progress in a dialog. Parameters for creating level of detail files are in [Creating PointCloud detail level files](../../cuadros-de-dialogo/configuracion/creacion-de-archivos-de-nivel-de-detalle-de-pointcloud/README.md) in the Configuration dialog.

### Coordinate reference system

In a `.las` file, the reference system is read from the header. If the file has none, or the format does not store it, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file**. The selected system is saved in a `.prj` file in the level of detail cache and is not requested again while that file exists.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.las`, `.pts`, `.e57`, `.ptx`, `.laz` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | No |
| A drawing window can be opened with this format | No |
