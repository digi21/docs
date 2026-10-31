# Adobe PDF files
<!-- id: pdf -->
<!-- origen: 98694ed543e9a5bb3863b0316f1ff7f811a3bfeb -->

Exporter for **Adobe PDF files**.

## Parameters

You can pass the following parameters to the importer/exporter from the command line with [IMPORTATION_PARAMETERS](../ordenes/p/parametros-importacion.md).

For example:

```
IMPORTATION_PARAMETERS=.pdf <Tamano> <Escala> <ExplotarSimbologia> <Titulo>
```

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Size | Yes |
| 2 | Scale | Yes |
| 3 | Use symbology (0/1) | Yes |
| 4 | Not used | Yes |
| 5 | Title | Yes |

Supply any fourth parameter before specifying the title as the fifth parameter. Omitted parameters retain their defaults.

## Import/export engine parameters

These properties appear in the **Import/export engine** category of the dialog that exports to this format. This format can only be exported. Initial values are those used the last time the format was used.

| Property | Values | What it does |
| :--- | :--- | :--- |
| Paper size | **Fit to model**, the A, RA and B series, and American and British paper sizes (Letter, Legal, Ledger, Tabloid…). Default: Fit to model. | Page size. With **Fit to model**, the page matches the drawing extent at the print scale. |
| Print scale | Real number. Default: **Scale** in the [Drawing file](../../cuadros-de-dialogo/nuevo-proyecto/archivo-de-dibujo.md) tab of the New project dialog. | Scale at which entities are drawn on paper. The value entered here is not saved: the next export again proposes the scale from the New project dialog. |
| Use symbology | Yes or No. Default: Yes. | With **Yes**, lines are drawn with their symbology. |
| Title | Text. | PDF document title. |

Only entities whose code has printing enabled in the code table are exported.

## Importer/exporter characteristics

| | |
| :--- | :--- |
| Extensions | `.pdf` |
| Import ([IMPORT](../ordenes/i/importar.md) command) | No |
| Export ([EXPORT](../ordenes/e/exportar.md) command) | Yes |
| A drawing window can be opened with this format | No |
