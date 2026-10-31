# Smoothing
<!-- id: suavizado -->
<!-- origen: de3b703718b7a4ee63dfa39253c25ff44793cffc -->

[VirtuaLand Edit](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-virtualand/virtualand-editar.md)

This tool smooths a DEM digital model using cubic splines, generating a surface that can be continuous in slope and curvature. Interpolation results are therefore better than with digital models consisting simply of joined independent surfaces, such as triangles or cells.

![Smoothing dialog](../../images/image-113.png)

Complete the following fields:

* **Generate Ferguson surface**: generates a less curved surface, because adjacent cells' curvatures are not considered mathematically continuous.
* **Smoothing level**: value from 1 to 10, where 10 gives maximum smoothing and 1 gives minimum smoothing.
* **Use B-Splines previously**: applies a B-spline algorithm to the data to remove small irregularities that may result from imprecise input points.
* **Use breaklines**: uses any incorporated breaklines to improve modeling. Instead of homogeneous square cells, the resulting model splits cells crossed by breaklines to retain their slopes.
