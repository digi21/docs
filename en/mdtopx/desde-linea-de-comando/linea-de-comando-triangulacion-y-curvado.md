# Triangulation and contouring
<!-- id: linea-de-comando-triangulacion-y-curvado -->
<!-- origen: 5fac0c9eb7b40a8e0ab1a4e70e976f3d43ed50da -->

[Triangulation](/mdtopx/como/como-triangulacion.md) and [Contouring](/mdtopx/como/como-curvado.md)

This command runs the triangulation tool and then the contouring tool on the calculated triangulation in a single call. MDTopX does not save the intermediate triangulation to any file: it saves only the contours. To run the command, enter:

```bash
MDTopX [archivo de entrada] /TRICUR [archivo de salida]
```

The input file is a drawing file with topographic or mapping information, as in the [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md) tool. With any other file type, the command has no effect.

The output file is required and is the name under which MDTopX saves the contours. MDTopX saves the contours in the format indicated by the extension, as in the [Contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md) tool: DXF (AutoCad), DGN (MicroStation) or BIN (DIGI) for any other extension.

License: the tool requires the MDTopX license; without it, MDTopX exits without running the command.

To configure the command, add the following two sections to MDTopX.ini. The keys of each section are the same as those of the individual tools:

* **\[Triangulacion]**: configures the triangulation. The keys are described in [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md).
* **\[Curvado]**: configures the contouring. The keys are described in [Contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md).

If a key is missing, MDTopX uses the value stored in the user's configuration (the last value used in the dialog of the MDTopX interface) or, if none is stored, the default value.

```ini
[Triangulacion]
CodTri = TRIANGUL
HayRupturas = 1
Codigo1 = 020123
Ruptura1 = 020124

[Curvado]
Escala = 500
Suavizado = 2
Finas = 0.5
Maestras = 2
CodigoFinas = 020123
CodigoMaestras = 020124
```

MDTopX treats section and key names as case-insensitive.

See also:

* [Introduction to the command line](./)
* [Triangulation](/mdtopx/desde-linea-de-comando/linea-de-comando-triangulacion.md)
* [Contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
