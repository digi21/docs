# Measuring a project's first absolute orientation
<!-- id: midiendo-primera-orientacion-absoluta-proyecto -->
<!-- origen: 2f8d725f58b138bf0bd90b08747317e1240c167f -->

Measuring absolute orientation involves identifying points with known coordinates in the model. These are called control points.

You need a file containing the control point coordinates and a sketch showing where to measure each point.

The positions \(in photo _107_\) of the points you will measure are shown below:

The following table shows the points in more detail \(in measurement order\). You can _click_ the photos to view them at full size:

| Order | Point number | Pixel coordinates in image 107 | Screenshot |
| :--- | :--- | :--- | :--- |
| 1 | 7 | 9527.7, 7713.6 |  |
| 2 | 6 | 8894.9, 5296.1 |  |
| 3 | 3 | 6297.8, 3308.4 | Point 3 in photo 107 |
| 4 | 4 | 5798.8, 66571.8 | Point 4 in photo 107 |
| 5 | 5 | 10703.4, 2432.8 | Point 5 in photo 107 |

Complete [Measuring relative orientation automatically](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-automaticamente.md) before following these steps to measure absolute orientation:

1. Click **Absolute orientation** on the photogrammetric window toolbar. Two docked panes appear: **Absolute orientation** and **Thumbnails**. Use **Absolute orientation** to measure the orientation. **Thumbnails** shows where a point was measured in another image, if it has already been measured there.
2. [Enter a terrain point of the point file](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md) may also appear. If it does, click **Cancel** to close it.
3. Check that the top of **Absolute orientation** displays the control point file path and the [Coordinate reference system](/digi3d-ai/sistemas-referencia-coordenadas/) of the points listed in that file.
4. Click **...** immediately to the right of the control point file path. [Control point file](/digi3d-ai/referencia/cuadros-de-dialogo/archivo-de-puntos-de-apoyo.md) appears.
5. Click **...** to specify the control point file path. **Open** appears.
6. Locate and select _%ExamplesDigi3D%\Bronchales\Bronchales.xyz_ and click **Open**.
7. Click **...** to specify the control points' coordinate reference system. The **Coordinate reference system** dialog appears.
8. Select **Projected + Vertical** on the left.
9. Find _WGS 84 / UTM Zone 30N_ in **Projected coordinate reference system**.
10. Select _Alicante height_ in **Vertical coordinate reference system**.
11. Click **OK**.
12. Check that **Control point file** displays _WGS 84 / UTM Zone 30N + Alicante height_ in **Coordinate reference system**.
13. Click **OK**.
14. Check that **Absolute orientation** displays both the control point file path and its coordinate reference system.
15. Click **Add**. [Enter a terrain point of the point file](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md) appears. Select point **7** and click **OK**.
16. Check that the bottom of **Absolute orientation** asks you to digitize point **7**.
17. Locate point **7**. Press any input device button to confirm its measurement.
18. Check that **Enter a terrain point of the point file** appears.
19. Select point **6** and click **OK**.
20. Locate point **6**. Press any input device button to confirm its measurement.
21. Notice that **Enter a terrain point of the point file no longer appears**. With the two measurements, Digi3D.AI has determined which points are inside the model and automatically located the next one. Check that the bottom of **Absolute orientation** asks you to digitize point **3**.
22. Locate point **3**. The program has calculated its approximate position automatically, but with only two points measured it cannot position the photogrammetric window precisely. Try changing Z to locate point **3**. Once located, press any input device button to confirm its measurement.
23. Position the pointer stereoscopically over point **4**, where the photogrammetric window moves when the program requests its measurement, and press any input device button.
24. Position the pointer stereoscopically over point **5** when the program requests its measurement and press any input device button.
25. When the program stops requesting points, check each point's residuals. Click **Worse?** to find the point with the largest residuals automatically. Digi3D.AI selects it in the measured control point list and moves the photogrammetric window to it.
26. To remeasure a point, click **Re-measure**. The program enters remeasurement mode, and you must digitize the point at the desired location. The program calculates absolute orientations whenever you move, so it can show the orientation result before you confirm the point. This can help you decide where to measure if you are unsure; for example, when a control point description says to measure the center of a stone, but there are several stones. Press **Esc** at any time to cancel remeasurement.
27. Click **OK** to accept absolute orientation.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Orientacion%20absoluta%20del%20primer%20modelo.mp4" caption="" type="video/mp4"></video>
