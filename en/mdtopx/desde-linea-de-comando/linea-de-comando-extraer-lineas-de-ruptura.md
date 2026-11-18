# Extract breaklines
<!-- id: linea-de-comando-extraer-lineas-de-ruptura -->
<!-- origen: fbae1409893afc5740644b8786ea70a4f201c91d -->

[Extract breaklines](/mdtopx/modulo-virtualand/extraer-lineas-de-ruptura.md)

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /RUP [archivo de salida]
```

The input file is a DEM file (digital elevation model as a grid, DEM extension) that has been smoothed with the interface tool [Smoothing](/mdtopx/modulo-virtualand/suavizado.md). MDTopX calculates the valleys, ridges and points of interest of the terrain from the curvature of the model. With an unsmoothed DEM or a variable-cell DEM, MDTopX calculates nothing and does not create the output file. With a triangulation file (MDT extension), the command has no effect.

The output file contains the calculated breaklines and points of interest. MDTopX saves it in BIN (DIGI) format and does not select the format from the file name extension.

License: the tool requires the MDTopX license; without it, MDTopX exits without running the command. MDTopX also needs the VirtuaLand module to save the output file. Without that module, MDTopX calculates the breaklines but does not create the output file.

To configure the calculation, add the **\[LineasRuptura]** section to MDTopX.ini with the following keys. If a key is missing or empty, MDTopX uses the value stored in the user's configuration (the last value used in the dialog of the MDTopX interface) or, if none is stored, the default value shown:

* **Escala**: scale denominator of the result, an integer. MDTopX uses it to calculate the sampling step inside each DEM cell: the scale multiplied by 0.00004 meters, limited to between 1/100 and 1/10 of the cell size. Default: 1000.
* **TolLineal**: linear generalization tolerance in meters. Default: 0.04. MDTopX does not recalculate it when you change Escala in the file.
* **TolSuperficial**: area generalization tolerance in square meters. Default: 0.2. MDTopX does not recalculate it when you change Escala in the file.
* **CurvaturaMinima**: absolute curvature value below which an element is not considered a breakline. Default: 0.
* **DistanciaMinima**: minimum length in meters of a breakline. MDTopX deletes shorter lines. Default: 0.
* **CodigoVaguadas**: code in which MDTopX records valley lines. Default: A0.
* **CodigoDivisorias**: code in which MDTopX records ridge lines. Default: R0.
* **CodigoCumbres**: code in which MDTopX records summit points. Default: R0.
* **CodigoFondos**: code in which MDTopX records bottom points. Default: A0.
* **CodigoCollados**: code in which MDTopX records saddle points. Default: V0.
* **IncluirPuntos**: 0 (no elevation texts) or 1 (adds an elevation text next to each point of interest). Default: 1.
* **AlturaCota**: height in meters of the elevation text. With the value 0, MDTopX adds no texts even if IncluirPuntos is 1. Default: 1.
* **DxCota**: horizontal offset in meters of the text from the point. Default: 0.5.
* **DyCota**: vertical offset in meters of the text from the point. Default: 0.5.
* **IncrX**, **IncrY** and **CambiarAutoTol**: MDTopX reads these keys, but the breakline calculation does not use them. Defaults: 1, 1 and 1.

```ini
[LineasRuptura]
Escala = 1000
TolLineal = 0.04
TolSuperficial = 0.2
CurvaturaMinima = 0.001
DistanciaMinima = 5
CodigoVaguadas = A0
CodigoDivisorias = R0
CodigoCumbres = R0
CodigoFondos = A0
CodigoCollados = V0
IncluirPuntos = 1
AlturaCota = 1
DxCota = 0.5
DyCota = 0.5
```

MDTopX treats section and key names as case-insensitive.

See also:

* [Introduction to the command line](./)
* [Contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md)
