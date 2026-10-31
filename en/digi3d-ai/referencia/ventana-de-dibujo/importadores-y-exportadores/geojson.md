# GeoJSON files
<!-- id: geojson -->
<!-- origen: d6d8c368904697c2b8cf739296e48b619b8e28e3 -->

Importer and exporter for **GeoJSON files**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs that import or export files in this format.

### Coordinate reference system

Digi3D.AI does not request the reference system: files in this format always use three-dimensional WGS 84 geographic coordinates (EPSG 4979). When importing, a position without height takes Z = 0.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.geojson` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | No |
