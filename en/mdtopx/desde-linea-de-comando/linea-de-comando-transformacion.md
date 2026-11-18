# Coordinate transformation
<!-- id: linea-de-comando-transformacion -->
<!-- origen: 0176548204b4a8922fd80363b336b897b7216d13 -->

[Coordinate transformation](/mdtopx/otras-herramientas/transformacion-de-coordenadas.md)

This tool transforms the coordinates of all the points in a file. To run it from the command line, enter:

```bash
MDTopX [input file] /TRANSFORM [output file]
```

Enter the input file before `/TRANSFORM`. The output file is optional.

## Files

The input file can be a drawing file, a point cloud or a triangulated digital model (TIN, triangulated irregular network). With a grid digital model or with a project, MDTopX does not run the transformation.

* **Without an output file**: MDTopX overwrites the input file with the transformed coordinates, in the same format.
* **With an output file and a drawing file or a point cloud**: MDTopX exports the result to the output file and does not modify the input file. The extension of the output file determines the format: DXF (AutoCad), DGN (MicroStation), PTS (Leica HDS), LAS, LAZ, ASC (ASCII), KML, IFC (version 4.1, if MDTopX includes that exporter), SHP (Shape), or BIN (DIGI) for any other extension.
* **With an output file and a triangulated digital model**: MDTopX saves the transformed model in the output file, in the MDTopX digital model format. If the extension corresponds to a mesh format that MDTopX can export, such as STL, it saves the file in that format. MDTopX does not modify the input file.

This tool requires the MDTopX module license. To save the result of a LiDAR point cloud (light detection and ranging) or a terrestrial scanner point cloud, MDTopX also requires the Laser module license. If MDTopX cannot save the file because a license is missing, it does not transform the file.

## Configuration

MDTopX reads the **\[Helmert]** section of the MDTopX.ini file. If a key is not in the section, MDTopX uses the value saved in the user configuration, which is the last value accepted in the dialog box of the [Coordinate transformation](/mdtopx/otras-herramientas/transformacion-de-coordenadas.md) tool. If that value was never saved, MDTopX uses the default value shown for each key.

Data entry mode:

* **TipoDatos**: method MDTopX uses to obtain the parameters. Default value: 1.
  * **0**: transformation parameters written in the keys of this section.
  * **1**: tensor (transformation matrix) written in the **Tensor** keys.
  * **2**: parameters saved in a file.
  * **3**: transformation grid between reference systems in NTV2 format.
  * **4**: EGM2008 geoid model, which converts ellipsoidal elevations to orthometric elevations.
  * **5**: MDTopX shows the message "Not implemented transformation" in a message box and does not transform the file. The process stays stopped until someone closes the message box.
  * **6**: the command line does not run the piecewise transformation of the dialog box. MDTopX handles this value as 1.
* **Tipo**: transformation type with **TipoDatos** 0 and 1. Allowed values: 0 (2D Helmert, two dimensions), 1 (3D Helmert, three dimensions) and 4 (2D affine). Default value: 0.

Transformation parameters (**TipoDatos** = 0). Rotations are written in centesimal degrees (gon; 400 gon make a full turn). The keys that each transformation type uses are:

| Tipo | Keys it uses |
|---|---|
| 0 (2D Helmert) | **DesplazamientoX**, **DesplazamientoY**, **GiroY** (rotation angle) and **EscalaY** (scale factor) |
| 4 (2D affine) | **DesplazamientoX**, **DesplazamientoY**, **GiroX**, **GiroY**, **EscalaX** and **EscalaY** |
| 1 (3D Helmert) | **DesplazamientoX**, **DesplazamientoY**, **DesplazamientoZ**, **GiroX**, **GiroY**, **GiroZ**, **EscalaX**, **EscalaY** and **EscalaZ** |

* **DesplazamientoX**, **DesplazamientoY**, **DesplazamientoZ**: offset that MDTopX adds to each coordinate, in the units of the file. Default value: 0.
* **GiroX**, **GiroY**, **GiroZ**: rotation angles in centesimal degrees. Default value: 0.
* **EscalaX**, **EscalaY**, **EscalaZ**: scale factors. Default value: 1.

Tensor (**TipoDatos** = 1):

* **Tensor00**, **Tensor01**, **Tensor02**, **Tensor10**, **Tensor11**, **Tensor12**, **Tensor20**, **Tensor21**, **Tensor22**: elements of the transformation matrix; the first digit is the row and the second is the column. Default value: the identity matrix (1 in **Tensor00**, **Tensor11** and **Tensor22**, and 0 in the rest), which does not modify the coordinates. In 2D Helmert and affine transformations, MDTopX uses only **Tensor00**, **Tensor02**, **Tensor20** and **Tensor22**. With the tensor, MDTopX does not apply offsets.

Parameters in a file (**TipoDatos** = 2):

* **ModoCalculo**: 0 (direct transformation) or 1 (inverse transformation). Default value: 0.
* MDTopX reads the parameters from the file named by the **FicheroParametros** value saved in the user configuration. The file is an INI file with a **\[Parametros_transformacion]** section, which contains the keys **Tipo**, **DesplazamientoX**, **DesplazamientoY**, **DesplazamientoZ**, **GiroX**, **GiroY**, **GiroZ**, **EscalaX**, **EscalaY** and **EscalaZ**, among others. MDTopX.ini does not support the **FicheroParametros** key.

NTV2 grid (**TipoDatos** = 3):

* **Fichero**: path of the NTV2 grid file. Default value: `SPED2ET.GSB`.
* **ModoCalculo**: 0 (forward direction of the grid) or 1 (inverse direction). Default value: 0.
* **Huso**: number of the UTM (Universal Transverse Mercator) zone of the coordinates. Default value: 30.
* **Hemisferio**: 0 (north) or 1 (south). Default value: 0.

Geoid model (**TipoDatos** = 4):

* **Huso** and **Hemisferio**: same as with the NTV2 grid.
* MDTopX reads the geoid model from the file named by the **FicheroParametros** value saved in the user configuration. MDTopX.ini does not support the **FicheroParametros** key.

With a drawing file and **TipoDatos** 0 or 1, MDTopX also multiplies the height of each text by **EscalaX** if that value is not 1 and, if **EscalaX** is 1, by **EscalaY** when that value is not 1.

```ini
[Helmert]
TipoDatos = 0
Tipo = 4
DesplazamientoX = 1000
DesplazamientoY = 2000
GiroX = 0.5
GiroY = 0.5
EscalaX = 1.00002
EscalaY = 1.00002
```

Key names are case-insensitive.

See also:

* [Introduction to the command line](./)
