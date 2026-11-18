# Step 1: Enter input data files
<!-- id: topcal21-compensacion-por-minimos-cuadrados-paso-1-introducir-ficheros-de-datos-de-entrada -->
<!-- origen: b58f3b0c0f5fcc1ef747cc732cedb475c077036d -->

This is the first step in computing the least-squares compensation. The required data are the following:

![Compensation by least squares — Step 1](../../../images/mmcc-paso1.jpg)

* **Point files**: Select the project point files to be used in the compensation. The computation can only continue if all the selected point files refer to the same reference system.
* **Observation files**: Select the project observation files that contain the observations used in the computation.
* **ASCII output file**: Enter the name of the output file with the results of the computation. This file can be in **html** format or **ASCII** format. If the extension of this file is HTM or html, the format is html; otherwise the format is ASCII. This file can be viewed (with the viewer specified in the [Preferences](../../opciones-de-visualizacion/preferencias.md) dialog box of the [Edit](../../menus-de-la-aplicacion/menu-editar.md) menu) if you select the checkbox at the bottom named **Show after computation**. If you do not want to create this file, clear the checkbox to the left of the name. The file is created in the project directory.

Once these data have been entered, you can click the **Next** button to go to [Step 2: Point selection](paso-2-seleccion-de-puntos.md).
