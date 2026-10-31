# Internal orientation of the right camera
<!-- id: orientacion-interna-camara-derecha -->
<!-- origen: 785fb30d101fdcd117b207fb284ce4bdc37eae1c -->

If you already have one camera's internal orientation, you can perform the other camera's internal orientation fully automatically.

Complete [Internal orientation of the left camera](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/orientacion-interna-camara-izquierda.md) before following these steps for the right camera:

1. Select **Photogrammetric window/Inner orientation (right)**. This runs [INNER\_ORI\_R](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-d.md), which performs the right camera's internal orientation.
2. Check that the command uses the left camera's internal orientation to measure the right camera's automatically. The Digi3D.AI status bar displays **Correlating fiducial mark: N**, identifying the mark being sought, and a progress bar that advances with each mark. When **Internal orientation** appears, the marks found are already measured and only need checking. If correlation fails to find a mark, it stops and the pane requests manual measurement of that mark and the following ones. If all marks are found, Digi3D.AI runs the pane's **Worse?** action and displays the measurement with the largest error.
3. If the mark measurements are correct, click **OK** to finish the right camera's internal orientation. Otherwise, remeasure any incorrect points.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20derecha.mp4" caption="" type="video/mp4"></video>
