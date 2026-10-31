# Loading your first stereo pair
<!-- id: cargando-primer-modelo-estereoscopico -->
<!-- origen: f1b909d9b0cc756c70af545814e419d7957cd3b0 -->

One of Digi3D.AI's main features is loading and displaying photogrammetric models from different sensors.  
Follow these steps to load a stereo pair and interact with the photogrammetric window:

1. Open **File** and select **New/Open photogrammetric model or drawing file...**
2. Check that the **New project** dialog appears.
3. Select the **Photogrammetric sensors** tab.
4. Set **Work directory** to %ExamplesDigi3D%\Pumarín.
5. Set **Sensor type** to **Conical (Stereoscopic)**. The **Sensor properties** section changes to request the files required to load a frame camera stereo model.
6. Set **Aerial triangulation file** to %ExamplesDigi3D%\Pumarín\Pumarín.eo. This is an aerial triangulation file in [PatB format](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/camara-conica/extensiones/patb.md).
7. Set **Left image** to %ExamplesDigi3D%\Pumarín\126.tif.
8. Set **Right image** to %ExamplesDigi3D%\Pumarín\127.tif.
9. Set **Camera file for the left image** to %ExamplesDigi3D%\Pumarín\120mm.cam.
10. Set **Camera file for the right image** to %ExamplesDigi3D%\Pumarín\120mm.cam.
11. Click **OK**.

A window titled 126-127.d3d opens with the specified images. The right image appears black because the photogrammetric window is not yet positioned at valid coordinates.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Cargando%20el%20primer%20modelo%20fotogrametrico.mp4" caption="" type="video/mp4"></video>
