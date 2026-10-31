# Absolute orientation files
<!-- id: archivos-orientacion-absoluta -->
<!-- origen: bb35d1cea2eda8c662193134f1181d4714ed22e5 -->

Accepting absolute orientation creates a file named _\(left photo\) - \(right photo\).absl.xml_ in the photogrammetric model's project directory.

The absolute orientation file stores the orientation result and your measurements. If you delete it, the corresponding photogrammetric window toolbar button is not pressed the next time you load the model \(indicating that absolute orientation could not be loaded\).

Digi3D.AI also creates an **Aerotriangulación** folder with two ._f_ files in [PatB](/digi3d-ai/referencia/ventana-fotogrametrica/sensores/camara-conica/extensiones/patb.md) format containing the photo coordinates of the points you measured. One ._f_ file is created per image. Digi3D.AI uses these files to display measured points in the photogrammetric window and, during absolute orientation, determine whether a point has already been measured in a photo and, if so, where.

An **Instantáneas** folder is also created, containing a screenshot of each measured point. Two thumbnails are created per point, one from each image. Loading them and switching rapidly between them produces a _stop motion_ effect that lets you view them in 2.5 dimensions.

Complete [Measuring a project's first absolute orientation](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-absoluta/midiendo-primera-orientacion-absoluta-proyecto.md) before following these steps to check the generated files:

1. Open **File Explorer** \(you can press **Windows + E**\).
2. Locate the **Bronchales** project.
3. Check that **107-108.abs.xml** has been created.
4. Check that **Aerotriangulación** has been created and contains **107.f** and **108.f**.
5. Check that **Instantáneas** has been created and contains thumbnails of the measured points.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20absoluta.mp4" caption="" type="video/mp4"></video>
