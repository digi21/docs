# Select color range
<!-- id: seleccionar-gama-de-color -->
<!-- origen: 2e1e7b22b91519d499a26d514ef53874e9754d1a -->

[DTM surface view](../herramientas-de-visualizacion/vista-de-superficie-de-mdt.md)

Displaying the surface as colored triangles or vertices opens a dialog for choosing a color range. This dialog also appears when displaying a LiDAR point cloud by elevation.

The color range depends on element elevation. Complete these fields:

* **Min height and Max height**: digital model elevation limits, shown to help build the height interval table.
* **List of colour sequences**: color range name. Add, delete or duplicate tables under another name for use in different files.
* **Height interval table**: colors assigned to different heights. Add, delete or edit intervals to fit the document's elevation range. Surfaces above or below the table's limits are not colored.
* **Fit to range...**: fits an interval table to specified elevation limits through this [dialog](../herramientas-mdt/mapa-de-tintas-hipsometricas/ajustar-a-rango-de-altitudes.md).

![Fit range dialog](../../images/dialogo-ajustar-rango.jpg)

* [**Hypso curve...**](curva-hipsometrica.md): displays surface area distribution by elevation to help design the color range.

For more about color ranges, see [Hypsometric tints](../como/como-mapa-de-tintas-hipsometricas.md).
