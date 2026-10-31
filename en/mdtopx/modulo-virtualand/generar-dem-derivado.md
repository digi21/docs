# Generate derived DEM
<!-- id: generar-dem-derivado -->
<!-- origen: ca188efc8b751a7808561d3208aec3df4c51645f -->

[VirtuaLand General](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-general.md)

This tool generates a digital model derived from the current one by cropping it or reducing point density.

![Generate derived DEM dialog](../../images/image-112.png)

The dialog contains the following fields:

* **DEM source**: information about the current digital model, comprising row and column counts and their spacing.
* **Derived DEM limits**: boundaries of the derived digital model. To retain the current model's dimensions, leave the values unchanged. To crop the current model, use one of these methods:
* **By rows and columns**: specifies the row and column limits to include in the derived model.
* **By coordinates**: specifies boundaries using minimum and maximum X and Y coordinates.
* **Grid frequency**: reduces information density in the derived model by specifying how often to generate a row or column. Leave these values at 1 to retain the model's density.
