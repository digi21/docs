# Comma-separated values
<!-- id: csv -->
<!-- origen: 08168399457529052c9054d78b840e8780462b5c -->

Importer for **Comma-separated values**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.csv <Separador> 0 0 0 <NombreColumnaX> <NombreColumnaY> <NombreColumnaZ>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Field separator character | No |
| 2, 3 and 4 | Unused, but must be present | No |
| 5 | X column name | No |
| 6 | Y column name | No |
| 7 | Z column name | No |

## Import/export engine parameters

These properties appear in the **Import/export engine** category of dialogs that import or export files in this format. The format cannot be opened directly in a drawing window, so these properties do not appear in the New project dialog. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Field separator | Tab key, Comma (,), Double quotation marks (""), Single quotation marks ('') or OR operator (\|). Default: Tab key. | Character separating the fields on each line. |
| Column X, Column Y, Column Z | Text: column name on the first line of the file. Empty by default. | Columns from which coordinates are read, ignoring case. If a column does not exist, its coordinate is 0. |

Each line is imported as a point, with all its columns as data. Digi3D.AI saves property values in the user configuration.

### Coordinate reference system

The reference system is read from a `.prj` file with the same name as the imported file. If the `.prj` does not exist, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file**. Importing does not create the `.prj`: the selected system is only used during the session.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.csv`, `.txt` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | No |
| A drawing window can be opened with this format | No |
