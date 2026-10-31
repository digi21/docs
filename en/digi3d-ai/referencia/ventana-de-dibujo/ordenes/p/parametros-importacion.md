# IMPORTATION\_PARAMETERS
<!-- id: parametros-importacion -->
<!-- origen: d80d14006bd483a6fbe7fd20b51fcc1361a219eb -->

Specify the parameters sent to the corresponding importer or exporter so that the configuration dialog box does not appear when importing or exporting a file of that type.

## Parameters

| Parameter number | Description | Optional |
| :--- | :--- | :--- |
| 1 | Format extension, including the leading period \(for example, `.asc`\), or the path to a file with that extension \(for example, `e:\trabajos\a.asc`\). | No |
| 2 | Values passed to the importer/exporter, in the order it expects. | No |

The first parameter determines **which** importer or exporter to configure \(from the extension\); the remaining parameters contain the specific values accepted by that format, described on each format's page under [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md).

## Notes

By default, when you open or import a file \(for example, with [LOAD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md)\), the configuration dialog box appears for you to specify format parameters. To skip it, or to import/export from the command line, first define these values with IMPORTATION\_PARAMETERS.

Syntax:

`IMPORTATION_PARAMETERS=<extensión o ruta> <valores del importador>`

For example, to make the Digi ASCII exporter \(extension `.asc`\) write coordinates with 4 decimal places:

`IMPORTATION_PARAMETERS=.asc 4`

Specify values separated by spaces, without quotation marks even when there are several. For example, for BIN:

`IMPORTATION_PARAMETERS=.bin 3 1000 2000 0`

Run the desired import or export command \([IMPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md), [EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md), or [LOAD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md)\) after IMPORTATION\_PARAMETERS:

`EXPORT=C:\prueba.dxf`

`LOAD_F=C:\fichero.dgn`

## See also

- [Importers and exporters](/digi3d-ai/referencia/ventana-de-dibujo/importadores-y-exportadores/README.md) — available formats and the parameters each accepts.

## Command characteristics

| Command type | [Immediate command](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | _This command has no associated menu option_ |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Related commands | [LOAD\_F](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/carga-f.md)<br>[EXPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md)<br>[IMPORT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/i/importar.md) |
| Internal name | {E7720090-FD63-48aa-9136-A9623665E777} |
