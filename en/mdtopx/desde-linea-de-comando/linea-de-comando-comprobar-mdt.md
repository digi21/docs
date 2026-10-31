# Check DTM
<!-- id: linea-de-comando-comprobar-mdt -->
<!-- origen: 34a916f88ff633f1f48e78ca323e5fb66ea2e480 -->

[Check DTM](/mdtopx/como/como-comprobar-mdt.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /COM
```

The input file must be the digital model whose elevations will be checked.

To configure checking, MDTop.INI must also contain the mandatory **\[Comprobar]** line followed by:

* **CodError**: error marker code.
* **FicError**: generated error file name.
* **Equidistancia**: vertical interval in meters of the contours used to generate the digital model.
* **Size**: error marker size in meters.

```ini
[Comprobar]
CodError = ERR
FicError = ERR.bin
Equidistancia = 0.5
Size = 2.5
```

Field names are case-insensitive.

See also:

* [Introduction to the command line](./)
