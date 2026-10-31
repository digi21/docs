# Example 8: Classify a LiDAR file
<!-- id: ejemplo-8-clasificacion-de-un-archivo-lidar -->
<!-- origen: c982772dab58f2db853b48d4c4e862a938fb18c5 -->

[Examples](/mdtopx/ejemplos/)

## Objective

Classify points captured with LiDAR.

## Input file

* instituto.las: LAS file containing measured points.

## Procedure

* Load instituto.las using [Open](../operaciones-con-archivos/abrir-archivo.md) from the [MDTopX button](../introduccion/boton-de-mdtopx.md), selecting LAS files.
* Run Higher on the LIDAR ribbon. Set maximum point spacing to 3 meters and minimum height to 3 meters. Select vegetation as the classification type. Do not classify by surfaces.
* The program classifies every detected high point as vegetation.
* Run Flat surfaces. Select vegetation from the list. Set the minimum area to 100 m² and maximum slope to 30º.
* The program reclassifies points detected as flat surfaces as buildings.

## Output files

* Classified LiDAR file.
