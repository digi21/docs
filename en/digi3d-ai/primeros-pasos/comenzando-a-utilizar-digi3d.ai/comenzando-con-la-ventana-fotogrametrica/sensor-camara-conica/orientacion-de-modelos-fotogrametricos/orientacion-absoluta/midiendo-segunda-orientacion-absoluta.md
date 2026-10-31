# Measuring the second absolute orientation
<!-- id: midiendo-segunda-orientacion-absoluta -->
<!-- origen: 042939f97dcf7d90abd253e38cd8ed4a697aeaf5 -->

The second absolute orientation is simpler than the first, because the program already knows some points' positions in one image.

After you specify the point to measure, the program checks whether it has already been measured in a photo. If so, it locks that photo so the images do not move when you move your input device \(mouse, topo-mouse or handwheels\) in _X,Y_. You can move only the image in which the point has not been measured, by changing _Z_, preventing measurement of the selected point at a different position in the same photo.

Complete [Absolute orientation files](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-absoluta/archivos-orientacion-absoluta.md) before following these steps to check the generated files:

The positions \(in photo 107\) of the points you will measure in this model are shown below \(in red\):

The following table shows the points in more detail \(in measurement order\). You can click the photos to view them at full size.

| Order | Point number | Pixel coordinates in image 108 | Screenshot |
| :--- | :--- | :--- | :--- |
| 1 | 7 | 5080.5, 7565.0 | Point 7 in photo 107 |
| 2 | 6 | 4605.1, 5155.6 | Point 6 in photo 107 |
| 3 | 5 | 6357.8, 2301.4 | Point 5 in photo 107 |
| 4 | 8 | 9986.2, 2338.0 | Point 8 in photo 108 |
| 5 | 9 | 10269.1, 5557.6 | Point 9 in photo 108 |
| 6 | 10 | 9707.6, 10124.8 | Point 10 in photo 108 |

1. Close the photogrammetric window showing model _107-108_.
2. Open **File** and select **New/Open photogrammetric model or drawing file...**
3. Check that **New project** appears.
4. Select **Photogrammetric sensors**.
5. Set **Work directory** to **%ExamplesDigi3D%\Bronchales**.
6. Set **Sensor type** to **Conical (Stereoscopic)**. **Sensor properties** changes to request the files needed to load a frame camera stereo model.
7. Leave **Aerial triangulation file** empty, because you have no aerial triangulation file. This field is optional; fill it in only if you have one.
8. Set **Left image** to %ExamplesDigi3D%\Bronchales\108.tif.
9. Set **Right image** to %ExamplesDigi3D%\Bronchales\109.tif.
10. Set **Camera file for the left image** to %ExamplesDigi3D%\Bronchales\RMK15.cam.
11. Set **Camera file for the right image** to %ExamplesDigi3D%\Bronchales\RMK15.cam.
12. Click **OK**. The photogrammetric window opens with model _108-109_.
13. Check that **I** on the photogrammetric window **toolbar** is pressed and the other buttons are not. You currently have only the left camera's internal orientation. You have not yet performed the right camera's internal orientation or relative orientation.
14. Generate the [right camera's internal orientation](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/orientacion-interna-camara-derecha.md).
15. Generate the model's [relative orientation](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-automaticamente.md).
16. Click **Absolute orientation** to start measuring it.
17. Select point **7** in [Enter a terrain point of the point file](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md). Point _7_ was already measured in photo _108_ \(the right photo in model 107-108 and the left photo in model 108-109\). Selecting point 7 moves the left camera to its measured coordinates in photo 108 and **locks** that camera. You cannot move the images in _X,Y_ with your input device. Input device movement in _Z_ moves only the image where the point has not yet been measured. This ensures point _7_ is measured at exactly the same location in photo _108_ as in model 107-108. The program also locates the point in the other image automatically by correlation. If correlation locates point 7 correctly, you only need to confirm that it was measured correctly.
18. Digitize point **7** by pressing any input device button.
19. Select point **6** in _Enter a terrain point of the point file_. The program locks the image in which it was already measured, as with the previous point.
20. Measure point **6** by pressing any input device button.
21. Measure points 5, 8, 9 and 10 as instructed by the program.
22. Click **OK** to confirm absolute orientation.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20absoluta%20del%20segundo%20modelo.mp4" caption="" type="video/mp4"></video>
