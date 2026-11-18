# Triangulation and grid
<!-- id: linea-de-comando-triangulacion-y-rejilla -->
<!-- origen: 2586dc7fa2875237c81f8c23566fafeb6b7bb320 -->

[Triangulation](/mdtopx/como/como-triangulacion.md) and [Grid](/mdtopx/como/como-rejilla.md)

This command runs the triangulation tool and then the grid tool on the calculated triangulation in a single call. MDTopX does not save the intermediate triangulation to any file: it saves only the grid. To run the command, enter:

```bash
MDTopX [archivo de entrada] /TRIREJ [archivo de salida]
```

The input file is a drawing file with topographic or mapping information, as in the [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md) tool. With any other file type, the command has no effect.

The output file is required and is the name under which MDTopX saves the grid. MDTopX saves the grid in the format indicated by the extension, as in the [Grid](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md) tool: DXF (AutoCad), DGN (MicroStation), Shape (ARC-GIS) or BIN (DIGI).

License: the tool requires the MDTopX license; without it, MDTopX exits without running the command.

To configure the command, add the following two sections to MDTopX.ini. The keys of each section are the same as those of the individual tools:

* **\[Triangulacion]**: configures the triangulation. The keys are described in [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md).
* **\[Rejilla]**: configures the grid. The keys are described in [Grid](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md).

If a key is missing, MDTopX uses the value stored in the user's configuration (the last value used in the dialog of the MDTopX interface) or, if none is stored, the default value.

```ini
[Triangulacion]
CodTri = TRIANGUL
HayRupturas = 1
Codigo1 = 020123
Ruptura1 = 020124

[Rejilla]
IncrementoX = 1.5
IncrementoY = 1.5
SoloPuntos = 1
Codigo = N1
```

MDTopX treats section and key names as case-insensitive.

See also:

* [Introduction to the command line](./)
* [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Grid](/mdtopx/desde-linea-de-comando/linea-de-comando-rejilla.md)
