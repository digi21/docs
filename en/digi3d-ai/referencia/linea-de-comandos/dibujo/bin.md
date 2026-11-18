# bin
<!-- id: bin-2 -->
<!-- origen: 389c52e5c35ebef133435d2242ed3c1ddd6f8c61 -->

The bin subcommand specifies that the drawing file to open is single-precision binary (extension .bin).

## Required positional options

| Name | Description |
| --- | --- |
| path | Path to the .bin file to open |

With the Spanish interface, this positional option is called `ruta`.

## Options

Specifying an option overrides its default value.

| Option with the English interface | Option with the Spanish interface | Description | Default value |
| --- | --- | --- | --- |
| --precision | --decim | Number of decimal places used to store coordinates in the drawing file | 2 |
| --origin | --origen | Global origin: three numbers (X, Y and Z) separated by spaces | 0.0 0.0 0.0 |

## Example

Open the single-precision binary drawing file c:\trabajo\archivo.bin with coordinates stored to three decimal places and origin (0, 4000000, 0), using the codes table c:\trabajo\tabla.tab.xml, with the English interface:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bin c:\trabajo\archivo.bin --precision 3 --origin 0 4000000 0
```
