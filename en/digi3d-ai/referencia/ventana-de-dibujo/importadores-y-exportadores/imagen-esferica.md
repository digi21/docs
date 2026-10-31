# Leica Pegasus spherical image orientation files
<!-- id: imagen-esferica -->
<!-- origen: 10b81f6e4ca0930125feb6b53e1931376d602a6d -->

Importer for **Leica Pegasus spherical image orientation files**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs.

### Coordinate reference system

The reference system is read from a `.prj` file with the same name as the orientation file. If the `.prj` does not exist, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file** and creates the `.prj` with the selected system. If the orientation file is opened read-only or imported, Digi3D.AI does not create the `.prj` and only uses the selected system during the session.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.csv`, `.e57`, `.ptx`, `.spherical` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | No |
| A drawing window can be opened with this format | No |
