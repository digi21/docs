# Internal orientation of the left camera
<!-- id: orientacion-interna-camara-izquierda -->
<!-- origen: a935fa22cd82d68f5ab50c0a3f12d73fcd14523c -->

Perform the left image's internal orientation before the right image's. The right image's internal orientation will be performed automatically, because Digi3D.AI uses the left camera's orientation to locate fiducial marks in the right camera.

1. Make sure no photogrammetric models or drawing windows are open. Close any that are open.
2. Open **File** and select **New/Open photogrammetric model or drawing file...**
3. Check that **New project** appears.
4. Select **Photogrammetric sensors**.
5. Set **Work directory** to **%ExamplesDigi3D%\Bronchales**.
6. Set **Sensor type** to **Conical (Stereoscopic)**. **Sensor properties** changes to request the files required to load a frame camera stereo model.
7. Leave **Aerial triangulation file** empty, because you have no aerial triangulation file. This field is optional; fill it in only if you have such a file.
8. Set **Left image** to %ExamplesDigi3D%\Bronchales\107.tif.
9. Set **Right image** to %ExamplesDigi3D%\Bronchales\108.tif.
10. Set **Camera file for the left image** to %ExamplesDigi3D%\Bronchales\RMK15.cam.
11. Set **Camera file for the right image** to %ExamplesDigi3D%\Bronchales\RMK15.cam.
12. Click **OK**. The photogrammetric window opens with model _107-108_. If you deleted the files as explained in [Orienting frame camera photogrammetric models](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/), none of the orientation options in **Photogrammetric window** should be checked.
13. Select **Photogrammetric window/Inner orientation (left)**. This runs [INNER\_ORI\_L](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/o/ori-interna-i.md). The **Internal orientation** dockable pane appears.
14. _Click_ the photogrammetric window to capture the mouse and locate fiducial mark **1**, requested by **Digitize the fiducial mark 1.** at the bottom of **Internal orientation**. Place the cursor at the center of the mark and **press any** mouse button. Remember \(/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/cambiando-la-velocidad-ventana-foto.md)\) that you can change the window's speed for greater precision, and you can change the pointer type to measure the mark more accurately \([Changing the pointer type in the photogrammetric window](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/cambiando-indice-ventana-foto.md)). You have measured your first fiducial mark.
15. Locate and digitize the second fiducial mark requested by **Internal orientation**. Continue through all eight marks in the image.
16. From the fourth measured mark onward, **Internal orientation** displays the adjustment's **Standard deviation** below the list, in the units of the calibration certificate's fiducial coordinates (millimeters in this example). The _Bronchales_ project's scan pixel size is 20 microns, so acceptable values range from 0 to 0.010 mm.
17. Click a measurement to display its measured position in the photogrammetric window. To measure the point again at another position, click **Re-measure**.
18. Click **Worse?** to make **Internal orientation** select the point with the largest error automatically.
19. Once the orientation is complete, click **OK**. **Internal orientation** closes, and **Inner orientation (left)** is checked in **Photogrammetric window**. If the measured marks are collinear, Digi3D.AI displays a message and the pane remains open: remeasure or omit marks as necessary.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20interna%20de%20la%20camara%20izquierda.mp4" caption="" type="video/mp4"></video>
