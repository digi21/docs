# Example 6: Calculate a platform
<!-- id: ejemplo-6-calculo-de-una-plataforma -->
<!-- origen: e12bc93c15aa921bdca9ee572ba444226106a591 -->

[Examples](/mdtopx/ejemplos/)

## Objective

Generate the digital model of a platform projected onto the original digital terrain model.

## Input file

* Terreno original.mdt: MDT file containing the original terrain model.
* límite explanacion.bin: BIN file containing the platform boundary.

## Procedure

* Load terreno original.mdt using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting MDT files.
* Run [Platforms](../herramientas-mdt/plataformas.md) on the [DTM tools](/mdtopx/herramientas-mdt/) tab. Set límite explanacion.bin as the platform file.
* Specify that the file contains the platform boundary.
* Specify cut 1-2 and fill 1-2. For both, include a half-meter-wide berm every 4 meters.
* Enable volume calculation.

![Platforms dialog](../../images/image-180.png)

## Output files

* Plataforma de Terreno original.mdt: MDTop native file containing the digital terrain model with the projected platform. Not included to save space.

![Platform on original terrain](../../images/image-181.png)

* Cubicacion de Plataforma de Terreno original.mdt: MDTop native volume calculation comparing the original and projected DTMs. Not included to save space.

![Platform volume calculation](../../images/image-182.png)
