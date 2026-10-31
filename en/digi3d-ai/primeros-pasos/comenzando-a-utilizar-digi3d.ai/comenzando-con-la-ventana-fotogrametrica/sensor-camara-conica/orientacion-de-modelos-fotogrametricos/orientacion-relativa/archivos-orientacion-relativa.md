# Relative orientation files
<!-- id: archivos-orientacion-relativa -->
<!-- origen: 210f5c61a50c0e14fefab2fdad34e05a5926323a -->

Accepting relative orientation creates _\(left photo\) - \(right photo\).rel.xml_ in the photogrammetric model's project directory.

Stores the orientation result and user measurements. Deleting it makes the photogrammetric toolbar's corresponding button appear unpressed after reloading, indicating relative orientation could not be loaded.

Complete [Measuring relative orientation manually](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-relativa/midiendo-orientacion-relativa-manualmente.md), then check generated files:

1. Open **File Explorer** with **Windows + E**.
2. Locate the **Bronchales** project.
3. Check that **107-108.rel.xml** exists.
4. Delete **107-108.rel.xml**.
5. Return to Digi3D.AI and close the photogrammetric window if the model is loaded.
6. Reload model 107-108. Check that toolbar **R** is unpressed because **107-108.rel.xml** could not be found.
7. Close the photogrammetric window.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20relativa.mp4" caption="" type="video/mp4"></video>
