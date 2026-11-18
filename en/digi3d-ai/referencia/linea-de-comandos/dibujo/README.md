# Drawing
<!-- id: dibujo -->
<!-- origen: c5084d7a4ea23cc7109598b1c54de5ceb0875679 -->

Opens a drawing window.

The `dibujo` command requires exactly one subcommand, which indicates the format of the drawing file, and accepts the options in the following table.

## Options

Specifying an option overrides its default value. When it opens the drawing window, Digi3D.AI saves the values of these options in the user configuration, including the default value of the options you do not specify, and replaces the values that were saved.

| Option | Description | Default value |
| --- | --- | --- |
| --tabla | Codes table | |
| --escala | Pattern display scale | 1000.0 |
| --incr | Recording increment | 1.0 |
| --equidis | Contour interval | 1.0 |
| --genera | Generalization tolerance | 0.04 |
| --corrZ | Z correction | 0.0 |
| --sigma | Sigma | 0.001 |
| --orden | Command to run when opening the drawing window (any Digi3D command or macro instruction file) | |

## Subcommands

Each subcommand is described on its own page. Digi3D.AI obtains the names of the subcommand options from the resources for the interface language: the subcommand pages give the name with the English interface and with the Spanish interface. The dgn subcommand is the exception: its option names are fixed and do not change with the language.

| Subcommand | Description |
| --- | --- |
| [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md) | Opens a double-precision binary drawing file (extension .bind) |
| [bin](/digi3d-ai/referencia/linea-de-comandos/dibujo/bin.md) | Opens a single-precision binary drawing file (extension .bin) |
| [shp](/digi3d-ai/referencia/linea-de-comandos/dibujo/shp.md) | Opens the _shapefiles_ of the specified directory |
| [dgn](/digi3d-ai/referencia/linea-de-comandos/dibujo/dgn.md) | Defines the options for MicroStation DGNv8 files; currently accepts no file path and does not open the drawing window |
