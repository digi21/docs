# dgn
<!-- id: dgn-2 -->
<!-- origen: 722170f00dd039f511a7ac7bffbc5b1e5e45ed56 -->

The dgn subcommand specifies that the drawing file to open in the drawing window is a MicroStation DGNv8 file (with the .dgn extension).

## Required positional options

This subcommand defines no positional option. In particular, it does not define the positional option that receives the path of the .dgn file, which the [bind](/digi3d-ai/referencia/linea-de-comandos/dibujo/bind.md), [bin](/digi3d-ai/referencia/linea-de-comandos/dibujo/bin.md) and [shp](/digi3d-ai/referencia/linea-de-comandos/dibujo/shp.md) subcommands do define. Without that path, Digi3D.AI cannot determine the format of the drawing file and does not open the drawing window.

## Options

The names of the options and of their values are fixed literals, in Spanish: they do not change with the interface language. The values of the options that accept a list of values are not case sensitive.

If you specify one of the non-required options, the value you give replaces the default value of that option. Each option you do not specify takes the default value in this table, not the value saved in the user configuration.

| Option | Required | Description | Accepted values |
| --- | --- | --- | --- |
| --criterio_nivel | No | DGN element attributes that Digi3D.AI uses to look up the element's code in the code table. | Values: `nivel`, `nivel_celula`, `nivel_color_estilo_grosor`, `nivel_color_estilo_grosor_celula`, `nivel_color`, `nivel_estilo`, `nivel_grosor`, `grupo_grafico`, `geographics`, `ngix`, `numero_nivel`, `numero_nivel_celula`, `numero_nivel_color_estilo_grosor`, `numero_nivel_color_estilo_grosor_celula`, `numero_nivel_color`, `numero_nivel_estilo`, `numero_nivel_grosor`, `nivel_color_celula`, `nivel_color_y_celula`.<br>The values that start with `numero_nivel` identify the level by its number and not by its name.<br>The default value is `nivel`. |
| --plantilla | No | Path of the template .dgn file. If the drawing file does not exist, Digi3D.AI creates it as a copy of the template. | Path of a file.<br>By default, there is no template. |
| --extraer_celulas_de | No | Source of the shape of the cells. | `archivo_celulas_microstation` = MicroStation cell file given in `--archivo_celulas`.<br>`carpeta_de_simbolos_digi` = Digi symbols folder.<br>The default value is `carpeta_de_simbolos_digi`. |
| --archivo_celulas | No | Path of the cell file (.cel) that Digi3D.AI loads when `--extraer_celulas_de` is `archivo_celulas_microstation`. | Path of a file.<br>It is empty by default. |
| --transformar_el_nivel_de_las_entidades_de_las_celulas | No | If you specify this option, when exporting, Digi3D.AI assigns the level, color, style and thickness of the code to each element of the cell. | |
| --importar_paleta | No | If you specify this option, when opening an existing file, Digi3D.AI imports the file's color palette, if it has one. | |
| --extraer_colores_de | Yes | Source of the color and thickness of the entities when the file is read. | `archivo_dgn` = colors of the DGN file.<br>`tabla_de_codigos` = colors of the active code table. |
| --importar_celulas_como | Yes | Entity type into which Digi3D.AI converts each cell when the file is read. | `punto` = point.<br>`complejo_virtual` = point-type complex element. |
| --incremento_registro_splines | No | Distance between vertices when splines are converted to polylines as the file is read. | Real number.<br>A value less than 1 is taken as 1.<br>The default value is 1. |
| --formato_desconocidos | No | Format of the name of the code that Digi3D.AI creates for elements that have no translation in the code table. | Text with the substitutors `$(Nivel)`, `$(Color)`, `$(Estilo)`, `$(Grosor)` and `$(GrupoGrafico)`. Digi3D.AI also accepts `$(Level)`, `$(Style)`, `$(Thickness)` and `$(GraphicGroup)` with any interface language.<br>If it is empty, Digi3D.AI uses `$(Nivel)` with the Spanish interface and `$(Level)` with the English interface.<br>It is empty by default. |
| --archivo_recursos_simbologia | No | Paths of the MicroStation resource files that Digi3D.AI loads when it opens the file. | Paths separated by semicolons.<br>It is empty by default. |

The `--extraer_colores_de` and `--importar_celulas_como` options are required: if you do not specify one of them, the command line produces an error.

The `--transformar_el_nivel_de_las_entidades_de_las_celulas` and `--importar_paleta` options take no value. If you do not specify them, their value is false. The options in the table correspond to the properties of the **Import/Export engine** category described in [DGNv8 files](../../ventana-de-dibujo/importadores-y-exportadores/dgn.md).

## Example

Command with the code table c:\trabajo\tabla.tab.xml, the two required options (colors of the DGN file and cells as points) and without the file path, which this subcommand does not define:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml dgn --extraer_colores_de archivo_dgn --importar_celulas_como punto
```

Command that also assigns the codes according to the level and the color, and loads the cells of the file c:\trabajo\celulas.cel:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml dgn --criterio_nivel nivel_color --extraer_celulas_de archivo_celulas_microstation --archivo_celulas c:\trabajo\celulas.cel --extraer_colores_de archivo_dgn --importar_celulas_como punto
```