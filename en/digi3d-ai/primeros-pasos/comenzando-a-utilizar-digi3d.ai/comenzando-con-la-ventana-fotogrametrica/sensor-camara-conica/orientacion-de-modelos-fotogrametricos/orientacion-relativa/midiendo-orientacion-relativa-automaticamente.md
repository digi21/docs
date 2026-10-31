# Measuring relative orientation automatically
<!-- id: midiendo-orientacion-relativa-automaticamente -->
<!-- origen: b58569786f227acd9ba2c0f0de6dd79a059e6f26 -->

Digi3D.AI can measure relative orientation automatically using [correlation](/digi3d-ai/referencia/cuadros-de-dialogo/orientacion-relativa-automatica-por-correlacion.md) algorithms. If correlation finds the required corresponding points, you do not need to measure points manually for relative orientation.

The program measures corresponding points automatically. Because this is fully automatic, some points may be measured incorrectly. The solution is to measure many more points \(when following [Measuring relative orientation manually](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-manualmente.md)), assume a small percentage are incorrect, and calculate relative orientation with that in mind. Digi3D.AI's relative orientation calculation uses _robust estimators_ to detect and exclude incorrectly measured points, producing a perfect relative orientation.

Complete [Relative orientation files](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/archivos-orientacion-relativa.md) before following these steps to measure relative orientation automatically:

1. Select **Photogrammetric window/Relative orientation** to run [RELATIVE\_ORI](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori_relativa.md).
2. Check that the message bar displays a progress bar indicating that image overlap is being calculated.
3. If everything went well, both images should show the same position.
4. Check that **Relative orientation** appears.
5. Check that the bottom of **Relative orientation** asks you to digitize point 1 in the left image.
6. Click **Correlate all**. [Automatic relative orientation by correlation](/digi3d-ai/referencia/cuadros-de-dialogo/orientacion-relativa-automatica-por-correlacion.md) appears.
7. Click **Start**. Check that the status bar shows correlation progress.
8. After correlation finishes, check that the measured point list contains all the measurements.
9. Digi3D.AI correlates one area for each point in the schema selected in the dialog; the _Von Gruber_ schema has six. If every area has at least one valid point, the list starts with the best point from each area, in area order. The remaining points appear in correlation order: first those from the first area, then those from the second, and so on. If an area has no points left, Digi3D.AI displays a message listing the areas without points, and the list remains in correlation order.
10. Check that the model has no parallax.
11. Click **OK**.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20orientacion%20relativa%20automaticamente.mp4" caption="" type="video/mp4"></video>
