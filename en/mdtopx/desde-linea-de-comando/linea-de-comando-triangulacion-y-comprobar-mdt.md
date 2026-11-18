# Triangulation and DTM check
<!-- id: linea-de-comando-triangulacion-y-comprobar-mdt -->
<!-- origen: a29c421e5e16348d946192bc33278199f0d8827e -->

[Triangulation](/mdtopx/como/como-triangulacion.md) and [Check DTM](/mdtopx/como/como-comprobar-mdt.md)

This command runs the triangulation tool and then the elevation check tool on the calculated triangulation in a single call. MDTopX does not save the triangulation to any file: it saves only the check error file. To run the command, enter:

```bash
MDTopX [archivo de entrada] /TRICOM
```

The input file is a drawing file with topographic or mapping information, as in the [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md) tool. With any other file type, the command has no effect.

This command does not use an output file. MDTopX accepts a second file name on the command line but ignores it. The error file is named as indicated by the **FicError** key of the **\[Comprobar]** section. MDTopX saves it in BIN (DIGI) format, regardless of the extension.

License: the tool requires the MDTopX license; without it, MDTopX exits without running the command.

To configure the command, add the following two sections to MDTopX.ini. The keys of each section are the same as those of the individual tools:

* **\[Triangulacion]**: configures the triangulation. The keys are described in [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md).
* **\[Comprobar]**: configures the check. The keys are described in [Check DTM](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md).

If a key is missing, MDTopX uses the value stored in the user's configuration (the last value used in the dialog of the MDTopX interface) or, if none is stored, the default value.

```ini
[Triangulacion]
CodTri = TRIANGUL
HayRupturas = 1
Codigo1 = 020123
Ruptura1 = 020124

[Comprobar]
CodError = ERR
FicError = ERR.bin
Equidistancia = 0.5
Size = 2.5
```

MDTopX treats section and key names as case-insensitive.

See also:

* [Introduction to the command line](./)
* [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Check DTM](/mdtopx/desde-linea-de-comando/linea-de-comando-comprobar-mdt.md)
