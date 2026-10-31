# Esri FileGdb files
<!-- id: filegdb -->
<!-- origen: c1f9991b9ce644c035087f92fff91ade6b43157f -->

Importer and exporter for **Esri FileGdb files**.

## Parameters

This extension accepts no command line parameters.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs: the category appears empty when creating or opening a file.

### Creating or opening the file

If the geodatabase does not exist, Digi3D.AI creates it. When creating, opening, importing or exporting the file, it then displays **Dataset selection**, with the message “The following datasets have been located. Select the one you want to open”:

* The list shows the geodatabase's _Feature Datasets_. If layers exist outside any dataset, the list also includes **(geodatabase root)**.
* **OK** becomes available when you select an item.
* **New...** opens **Create Dataset**, with the **Name** and **Spatial Reference Code** fields. **Search...** opens the horizontal reference system search and fills in the selected system's code. Digi3D.AI displays an error if the name is empty, the code is 0 or a dataset with that name already exists. In the current version, the dataset is always created with EPSG 25830 (ETRS89 / UTM zone 30N), regardless of the code entered.
* **Cancel** leaves the file unopened and displays “Operation cancelled by the user”.

Only layers in the selected dataset are loaded.

### Coordinate reference system

If you select a dataset, its reference system is used. If you select **(geodatabase root)**, each layer supplies its own system.

### Configuration options

The Configuration dialog has more options for this format in [FileGdb importer/exporter](../../cuadros-de-dialogo/configuracion/importador-exportador-de-filegdb/README.md).

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.gdb` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
