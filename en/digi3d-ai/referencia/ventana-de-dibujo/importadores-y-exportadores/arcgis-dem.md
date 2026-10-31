# ArcGIS DEM
<!-- id: arcgis-dem -->
<!-- origen: 10bd9989d51f2a4e402f8405db8e44075e279c2a -->

Importer for **ArcGIS DEM**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs.

### Coordinate reference system

The reference system is read from a `.prj` file with the same name as the digital elevation model (DEM) file. If the `.prj` does not exist, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system. If the DEM file is opened read-only or imported, Digi3D.AI does not create the `.prj` and only uses the selected system during the session.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.asc` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | No |
| A drawing window can be opened with this format | Yes |
