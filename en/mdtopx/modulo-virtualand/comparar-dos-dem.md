# Compare two DEMs
<!-- id: comparar-dos-dem -->
<!-- origen: 0d11609969d299c933fe6d83bcf0ea92b9ea8658 -->

[VirtuaLand General](../fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-general.md)

This tool compares two digital models of the same area and can produce a results report with the differences found.

![Compare two DEMs dialog](../../images/image-111.png)

The dialog contains the following fields:

* **File for projection**: path to the digital model file to project onto the current model. The button to the right opens Windows Explorer.
* **Output document**: configures the calculation with the following parameters:
* **Tolerance**: linear value in meters above which an elevation difference is considered unacceptable, representing an error between the models.
* **Output over this document**: modifies the current file to store the differences found. This saves memory because no new differences document is generated.
* **Record points**: chooses where to record points:
  * _Everywhere_: records all projected points, with their elevation set to the difference found.
  * _Just in differences_: records only points whose differences exceed the tolerance.
  * _Just in positive differences_: records only points whose positive differences exceed the tolerance.
  * _Just in negative differences_: records only points whose negative differences exceed the tolerance.
* **Report file**: generates a text file with projected points, differences and a statistical summary. Use the button to the right to select its location.
