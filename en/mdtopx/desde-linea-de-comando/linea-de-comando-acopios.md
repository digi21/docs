# Stockpile volume calculation
<!-- id: linea-de-comando-acopios -->
<!-- origen: c3f8aa68263fe87e00c3a4f0c78ec7a5a8bedd04 -->

The `/ACOPIOS` tool classifies the points of a point cloud captured inside an industrial building (for example, a SLAM scan, *Simultaneous Localization and Mapping*) and calculates the volume of the material stockpiles on the ground. It performs the same calculation as the one described in [Stockpile volumes](/mdtopx/programacion/python/mdtopx-acopios.md), in the Python programming section.

To run this tool from the command line, enter:

```bash
MDTopX [input file] /ACOPIOS [output file]
```

Enter the full path of both files. MDTopX looks for MDTopX.ini in the folder of the input file.

## Files

* **Input file**: point cloud with LAS classification, for example a LAS or LAZ file. MDTopX classifies the points and saves the classified cloud in this same file, so it overwrites the original. Work on a copy if you need to keep the unclassified cloud.
* **Output file**: drawing file with the result of the volume calculation. It is required: if you do not enter it, MDTopX does not read MDTopX.ini and calculates with the values saved in the user configuration. MDTopX saves this file in DIGI (BIN) format with any extension you enter; unlike the [Contouring](/mdtopx/desde-linea-de-comando/linea-de-comando-curvado.md) tool, the extension does not select DXF or DGN.

The classification that MDTopX writes to the input file uses these LAS classification codes: 2 (ground), 3 (stockpile), 4 (high point), 5 (wall), 6 (roof) and 7 (noise). Points that MDTopX does not classify remain in class 1 (unclassified).

MDTopX records the progress of the calculation in the MDTopX.LOG file, which it creates in the folder of the MDTopX.ini file, and writes to it the values of the **\[ClasificarAcopios]** section that it uses in the calculation.

## License

This tool does not require the MDTopX license: before running it, MDTopX does not check for a MDTopX license (hardware dongle or software license). /ACOPIOS, /FILTRADO and /ORIENTARNUBE do not check for the MDTopX license at startup.

## Result

The result depends on whether you specify a zone file in the **NombreDibujoZonas** key.

* **With a zone file**: MDTopX calculates the volume of the stockpile in each zone. The output file contains the boundary of each zone it calculates and, inside it, a text with the zone name and its volume, for example `A1 : 123.45 m³`. If the **SalidaResultados** key has a value, MDTopX also writes a text report with the volume of each zone.
* **Without a zone file**: MDTopX looks for stockpiles in the whole cloud, with no reference zone. The output file contains the boundary of each stockpile it finds and a text with its volume, for example `123.45 m³`. MDTopX does not write the **SalidaResultados** report.

The zone file is a drawing file with closed lines (the boundary of each zone) and a text inside each line (the zone name). MDTopX ignores the texts that are not inside any closed line.

## Configuration in MDTopX.ini

To configure the calculation, MDTopX.ini must have a line with the text **\[ClasificarAcopios]** followed by these keys. Section and key names are case-insensitive. If you omit a key or give it an empty value, MDTopX uses the value saved in the MDTopX user configuration and, if there is none, the default value. Each value accepts at most 255 characters.

* **NombreDibujoMuros**: path of the file with the wall point cloud of the building. It is optional. MDTopX uses the lowest points of this cloud to obtain the base of the walls and calculate the ground boundaries. Default: empty.
* **NombreDibujoZonas**: path of the zone file. It is optional. With this key, MDTopX calculates volumes by zone. Default: empty.
* **NombreMateriales**: path of a text file with the materials and their density. It is optional. Each line contains the material name and its density, separated by spaces, tabs or commas. MDTopX ignores the lines whose density is not a number greater than 0. If the name contains spaces, enclose it in double quotes. Default: empty.
* **NombreRelacionZonasMaterial**: path of a text file that relates each zone to a material. It is optional, and MDTopX uses it only if **NombreMateriales** specifies a file with at least one material. Each line contains three fields: the zone name, a description and the material name, with the same separators as the materials file. MDTopX compares the names without distinguishing uppercase from lowercase. If the material of a zone is not in the materials file, MDTopX records it in MDTopX.LOG and does not calculate the weight of that zone. Default: empty.
* **SalidaResultados**: name of the text report with the results by zone. If you enter it without a folder, MDTopX creates it in the folder of the input file. Default: `Resultados.txt`.
* **ClasificarAcopios**: 0 or 1. It only has an effect with **NombreDibujoZonas**. With 1, MDTopX also classifies the points of the cloud in each zone as stockpile, wall, high point, noise and ground, and calculates the volume with the points classified as stockpile. With 0, MDTopX does not perform that classification. With 1 the calculation takes longer. Default: 1.
* **PasoMalla**: grid step, in meters, with which MDTopX classifies the cloud. Several thresholds of the calculation are multiples of this value. Enter a value greater than 0 with a decimal point: MDTopX replaces a negative value with the default, and a value of 0 causes an error in the calculation. Default: 0.1.
* **DesfaseEntreDibujos**: distance in meters by which MDTopX offsets the boundaries that it obtains from the wall cloud: outward for exterior boundaries and inward for interior boundaries. It only has an effect with **NombreDibujoMuros**. MDTopX replaces a negative value with the default. Default: 0.5.
* **Formato**: MDTopX reads this key but does not use it. The format of the output file does not depend on it.

If you enter a path without a folder in **NombreDibujoMuros**, **NombreDibujoZonas**, **NombreMateriales** or **NombreRelacionZonasMaterial**, MDTopX looks for it in the working directory of the process. Enter the full path so that it does not depend on the directory from which you start MDTopX.

```ini
[ClasificarAcopios]
NombreDibujoMuros = C:\Nave\Muros.las
NombreDibujoZonas = C:\Nave\Zonas.bin
NombreMateriales = C:\Nave\Materiales.txt
NombreRelacionZonasMaterial = C:\Nave\Relaciones.txt
SalidaResultados = Resultados.txt
ClasificarAcopios = 1
PasoMalla = 0.1
DesfaseEntreDibujos = 0.5
```

## Results report

The **SalidaResultados** report is a text file with aligned columns, not a delimited file. It has one line per zone, with these columns:

* **Nombre**: zone name.
* **CantidadVol**: number of prisms with which MDTopX calculates the volume of the zone.
* **Superficie**: plan area of the stockpile.
* **Volumen**: volume of the stockpile above the ground.
* **AlturaMedia** and **AlturaMax**: average height and maximum height of the stockpile.

If there is a zone-to-material relation file, the report adds the **Peso**, **Descripción** and **Material** columns. The weight of a zone is its volume multiplied by the density of its material, and MDTopX calculates it only if the material is in the materials file. After the zones, the report contains a line with the totals and, with a relation file, a **Materiales utilizados** table with the number of zones, the area, the volume and the weight of each material.

See also:

* [Introduction to the command line](./)
* [Stockpile volumes (Python)](/mdtopx/programacion/python/mdtopx-acopios.md)
* [Orient a point cloud against another point cloud](/mdtopx/desde-linea-de-comando/linea-de-comando-orientar-nube-contra-nube.md)
