# Classify railway ground
<!-- id: linea-de-comando-clasificar-suelo-de-ffcc -->
<!-- origen: 7a2785a5cad548aad06049e627cac13a8cd4c0c8 -->

[Classify railway ground](/mdtopx/modulo-mms/ffcc/clasificar-suelo-de-ffcc.md)

The **/SUELOFFCC** command classifies the points of a railway (FFCC) point cloud recorded with an MMS (Mobile Mapping System, vehicle-based recording) as ground or non-ground. It performs the same operation as the **Bare ground** button in the **Train path** panel of the MMS tab, but it does not show the dialog box: it reads the options from the **\[TrazaMMS]** section of the MDTopX.ini file and processes every point source (recording identifier) in the file.

To run this tool from the command line, enter:

```bash
MDTopX [archivo de entrada] /SUELOFFCC
```

Enter the input file before the command.

## Files

* **Input file**: a point cloud (for example, LAS or LAZ) or an MDTopX project that contains point clouds.
* **Output file**: this command has no output file, and MDTopX ignores any argument entered after **/SUELOFFCC**. MDTopX saves the classification in the input file itself. If the input file is a project, MDTopX saves each point cloud in the project after classifying it.

## Differences from /SUELOVIAL

**/SUELOFFCC** and [/SUELOVIAL](/mdtopx/desde-linea-de-comando/linea-de-comando-clasificar-suelo-de-trazado.md) read the same **\[TrazaMMS]** section, with the same keys, default values, licenses and files. See that page for the list of keys. The differences are:

* **/SUELOFFCC** replaces the value of the **EsFFCC** key with 1 before calculating. The **EsFFCC** key in MDTopX.ini has no effect on this command.
* MDTopX filters the cloud with a grid whose step is the value of **DistanciaMaxima**, so that the grid keeps enough points of the narrow strip of terrain under a viaduct. In **/SUELOVIAL**, the step of that grid is 1 meter.

Section and key names are case-insensitive.

See also:

* [Introduction to the command line](./)
* [Find rails](/mdtopx/desde-linea-de-comando/linea-de-comando-buscar-railes.md)
