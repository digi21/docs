# Measuring internal and relative orientations automatically
<!-- id: midiendo-automaticamente-internas-relativas -->
<!-- origen: 48738fccf2dfce0ad30cce6342d0aad8de77032f -->

You can configure Digi3D.AI to perform these checks whenever you load a _photogrammetric project_ file:

1. Check that images are compatible with Digi3D.AI.
2. Check that images have associated internal orientation.
3. Check that models have relative orientation.

Checking image compatibility requires Digi3D.AI to open each image; the time needed depends on the number of images and their storage device. This check is disabled by default.

Checking for associated internal orientation may require Digi3D.AI to open each image to read camera information from its metadata. This check is disabled by default.

Digi3D.AI also does not check models for relative orientation by default, to keep the same setting as the other two checks.

Follow these steps to configure Digi3D.AI to perform all three checks and generate the project's internal and relative orientations automatically:

Complete [Creating a photogrammetric project for Bronchales](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/proyectos-de-proyecto-fotogrametrico/creando-proyecto-fotogrametrico-bronchales.md) before continuing.

1. Open File Explorer and delete the project's _internal_, _relative_ and _absolute_ orientations, **except** for one image's internal orientation.
2. In Digi3D.AI, select **Tools/Configuration...**. [Configuration](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/) appears.
3. Find and expand **Photogrammetric project**.
4. Set _Check images_, _Correlate internal orientations_ and _Correlate relative orientations_ to **Yes**.
5. Click **Accept**.
6. Click the second toolbar button in [Photogrammetric project](/digi3d-ai/referencia/paneles/proyecto-fotogrametrico.md), which loads a photogrammetric project file. **Open** appears. Select _Proyecto de Bronchales.d3dprj_ and click **Open**.
7. A dialog reports that images without associated internal orientation were found and asks whether to measure them automatically. This is possible **because at least one image with internal orientation was found**. That orientation will be used as the basis for measuring the others automatically. Click **Yes**. Check that progress bars on the application's status bar indicate that internal orientations are being measured.
8. Click **Yes** when the dialog reports that two models without relative orientation were found and asks whether to measure their relative orientations automatically.
9. [Automatic relative orientation by correlation (extended)](/digi3d-ai/referencia/cuadros-de-dialogo/orientacion-relativa-automatica-por-correlacion-extendido.md) appears.
10. Select _Von gruber calculated with percentages_ in **Schema**.
11. Select _Coarse (no approximate relative orientation)_ in **Configuration**.
12. Click **Start**.
13. Check that progress bars on the application's status bar indicate that relative orientations are being measured.
14. Select **Window/Results/Results**. The results pane appears.
15. Check that the residuals for both the automatically measured internal and relative orientations are displayed. If residuals indicate an orientation failure for a model, you can open that model directly.
16. Restore files.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Creando%20%20orientaciones%20internas%20y%20relativas%20automaticas%20mediante%20CRM.mp4" caption="" type="video/mp4"></video>
