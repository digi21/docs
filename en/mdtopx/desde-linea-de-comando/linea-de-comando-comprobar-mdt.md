# Check DTM
<!-- id: linea-de-comando-comprobar-mdt -->
<!-- origen: 7941a775102c09b475fa9b9c404a09451bea9bae -->

[Check DTM](/mdtopx/como/como-comprobar-mdt.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /COM
```

The input file must be the digital model whose elevations will be checked.

To configure checking, MDTopX.ini must also contain the mandatory **\[Comprobar]** line followed by:

* **CodError**: error marker code. Default: ERROR.
* **FicError**: generated error file name. Default: ERR.BIN.
* **Equidistancia**: vertical interval in meters of the contours used to generate the digital model. Default: 1.
* **Size**: error marker size in meters. Default: 1.

If the file omits a field, MDTopX uses the value stored in its preferences. On an installation with no stored preferences, that value is the default shown for each field.

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
