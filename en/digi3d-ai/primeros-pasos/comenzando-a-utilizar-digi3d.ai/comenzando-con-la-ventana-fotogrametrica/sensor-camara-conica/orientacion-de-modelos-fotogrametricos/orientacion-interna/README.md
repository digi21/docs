# Internal orientation
<!-- id: orientacion-interna -->
<!-- origen: 20cf39bb5b630b945400b13c56fb613a51782952 -->

Internal orientation relates fiducial coordinates in the camera calibration certificate to pixel coordinates of those marks in the image.

Digi3D.AI calculates it automatically for digital cameras. **Bronchales** images are analog and need measured internal orientation: the negative's position in the scanner is unknown.

To check the loaded model, open **Photogrammetric window**. **Inner orientation (left)** and **Inner orientation (right)** are checked when the respective image has measured internal orientation.

Uses an affine transformation requiring at least three measured, noncollinear marks. See [INNER\_ORI\_L](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md) for the **Internal orientation** pane.
