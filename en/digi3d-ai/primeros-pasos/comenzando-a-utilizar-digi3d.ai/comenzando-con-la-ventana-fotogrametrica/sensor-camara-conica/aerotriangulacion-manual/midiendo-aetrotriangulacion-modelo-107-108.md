# Measuring aerotriangulation for model 107-108
<!-- id: midiendo-aetrotriangulacion-modelo-107-108 -->
<!-- origen: a05213b74bd7d9323d4b68c0e09b411d7f5fba83 -->

In this example, you will aerial triangulate models _107-108_ and _108-109_. Since the project has a single strip, measure at least _5_ points per photo: _1070, 1071, 1072, 1073, 1074, 1080, 1081, 1082, 1083, 1084, 1090, 1091, 1092, 1093, 1094._

Measure these points in every model where they appear.

Complete [Measuring internal and relative orientations automatically](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/midiendo-automaticamente-internas-relativas.md) before continuing.

1. If you followed every step of this tutorial, your project directory may contain two subfolders: _Aerotriangulación_ and _Instantáneas_. If so, **delete them**.
2. **Delete** any absolute orientation files \(files with the _.abs.xml_ extension\).
3. Display the [Photogrammetric project pane](/digi3d-ai/referencia/paneles/proyecto-fotogrametrico.md) by selecting **Window/Other windows/Photogrammetric project**.
4. Click the second toolbar button in the _automatic model switching pane_. **Open** appears.
5. Select _Proyecto de Bronchales.d3dprj_ and click **Open**.
6. Expand _Strip: 1_ in the [Photogrammetric project pane](/digi3d-ai/referencia/paneles/proyecto-fotogrametrico.md).
7. Select _107-108_. A photogrammetric window opens with model _107-108_.
8. Click _T_ on the photogrammetric window toolbar. The [Aerotriangulation measurement pane](/digi3d-ai/referencia/paneles/medida-aerotriangulacion.md) appears.
9. Check that this is the same pane as for absolute orientation \(with a **Schema** drop-down list added\).
10. Select **One strip with percentages**.
11. Check that the program asks you to digitize point 1070 and has moved the photogrammetric window to the center of photo 107. Choose where to measure point 1070 and press any input device button.
12. Digitize point 1071 as requested. The photogrammetric window has moved to the top of photo 107.
13. Measure every point requested by the program.
14. Click **Cancel** to close [Enter a terrain point of the point file](/digi3d-ai/referencia/cuadros-de-dialogo/introduce-punto-terreno.md), which appears after all points have been measured, as in absolute orientation.
15. Click the ellipsis button in **Point file** in _Aerotriangulation measurement_. [Control point file](/digi3d-ai/referencia/cuadros-de-dialogo/archivo-de-puntos-de-apoyo.md) appears.
16. Click the ellipsis button to change the control point file. **Open** appears.
17. Locate **Puntos de apoyo de Bronchales para aerotriangular.xyz** and click **Open**. This reduced control point file contains only 4 control points.
18. If the associated coordinate reference system is not _WGS 84 / UTM Zone 30N + Alicante height_, select it.
19. Click **OK**.
20. Click **Add** in _Aerotriangulation measurement_ to measure points 7 and 6. _Enter a terrain point of the point file_ appears.
21. Select and measure point 7 \([remember its location](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-absoluta/midiendo-primera-orientacion-absoluta-proyecto.md)\).
22. Select point 6 in _Enter a terrain point of the point file_, which appears again, and measure it.
23. _Enter a terrain point of the point file_ appears again.

    There are no more control points in this model, and you have measured every point contributed by both photos, but you can add more if you want.

    Enter _1075_ and click **OK**.

24. Check that the program asks you to digitize _1075_. Absolute orientation requires a point that exists in the control point file; aerotriangulation measurement lets you add points while measuring.
25. Measure _1075_ at your chosen location.
26. Click **Cancel** when _Enter a terrain point of the point file_ appears again, because you will not measure any more points.
27. Click **OK** in _Aerotriangulation measurement_.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Midiendo%20la%20aerotriangulacion%20del%20modelo%20107-108.mp4" caption="" type="video/mp4"></video>
