# CREATE\_TOPOLOGIES\_REFERENCE\_FILES
<!-- id: crear-topologias-archivos-referencia -->
<!-- origen: fc3070106b5d2f68b1a0d22278faaaff88a9378b -->

If enabled, [BINTOP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bintop.md) creates topologies in all loaded drawing files (the active file and reference files), rather than only in the active file.

## Parameters

| Parameter number | Description | Values | Optional |
| :--- | :--- | :--- | :--- |
| 1 | Whether to create topologies in reference files as well |If no parameter is specified, the Boolean variable toggles from *Enabled* to *Disabled* or from *Disabled* to *Enabled*.<br>**0**: Disable the Boolean variable.<br>**1**: Enable the Boolean variable.<br>**?**: Display the value of the Boolean variable in a balloon showing whether it is enabled or disabled.| Yes |

## Notes

Disabled by default.

## Command characteristics

| Command type | [Boolean variable](../../../ordenes/variables/variables-booleanas.md) |
| :--- | :--- |
| Repeats automatically | No |
| Menu option | Topology/Create topologies also in reference files |
| Toolbar | _This command has no associated toolbar button_ |
| Extension | DigiNG.OrdenesStandard.dll |
| Implementation | Native |
| Related variables | No related variables |
| Internal name | {F709F638-E063-4976-8585-4252DF93AF38} |
