# Well Known Text files
<!-- id: wkt -->
<!-- origen: e4155592e28101e7164851bcba9544e9c1137e4c -->

Importer and exporter for **Well Known Text files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.wkt <Ancho>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Image width | Yes |

The format accepts this parameter but does not use it.

## Import/export engine parameters

This format adds no properties to the **Import/export engine** category in dialogs: the category appears empty when creating or opening a file.

### Coordinate reference system

The format does not save the reference system. When it needs one, Digi3D.AI displays **Select the reference coordinate system to be assigned to the file**, and the selected system is not saved.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.wkt` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | Yes |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | Yes |
