# bin
<!-- id: bin-2 -->
<!-- origen: c2b573de0a59b4e511f2becb206786ad1643d494 -->

The bin subcommand specifies that the drawing file to open is single-precision binary (extension .bin).

## Required positional options

| Name | Description |
| --- | --- |
| ruta | Path to the .bin file to open |

## Options&#x20;

Specifying an option overrides its default value.

| Option | Description | Default value |
| --- | --- | --- |
| --decim | Number of decimal places used to store coordinates in the drawing file | 2 |
| --origen | Global origin | 0.0 0.0 0.0 |

## Example

Open double-precision binary drawing file c:\trabajo\archivo.bin with millimeter precision and origin (0, 4000000, 0), using codes table c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bin c:\trabajo\archivo.bin --decim 3 --origen 0 4000000 0
```
