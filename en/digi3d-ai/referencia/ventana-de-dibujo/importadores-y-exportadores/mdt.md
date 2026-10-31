# DTM (digital terrain model)
<!-- id: mdt-2 -->
<!-- origen: d3e51988a925316f8c832e773a370818ae81fb78 -->

Importer for **DTM (digital terrain model)**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs.

### Coordinate reference system

The reference system is read from a `.prj` file with the same name as the DTM file. If the `.prj` does not exist, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system. If the DTM file is opened read-only or imported, Digi3D.AI does not create the `.prj` and only uses the selected system during the session.

The horizontal file reference system must match the drawing window system. If it does not, Digi3D.AI displays “Incompatible reference coordinate systems” and does not load the file.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.mdt` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | No |
| A drawing window can be opened with this format | No |
