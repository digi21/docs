# Slope vectors
<!-- id: vectores-de-pendiente -->
<!-- origen: 54104d481bd3f774c0ed5134252b35dbceebc5a2 -->

[DTM tools: Civil products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

This tool calculates vectors defining a digital terrain model's slope. They are recorded in a drawing file as arrows indicating slope direction and magnitude, with text showing the slope percentage.

![Slope vectors dialog](../../images/image-69.png)

The dialog contains these fields:

* **Vector set up**: configures lines representing slope direction and magnitude:
  * _Distance_: spacing of slope calculation points.
  * _Exaggeration_: multiplier applied to slope magnitude, determining output vector length.
* **Representation**: configures entities included in the output document:
  * _Line code_: vector code.
  * _Text code_: code for slope value texts.
  * _Text height_: text size in ground coordinates.
  * _Decimals_: number of decimal places in the slope value.
* **Limit file**: file containing closed vector entities defining where to calculate slope vectors.

Requires an active grid digital model document.
