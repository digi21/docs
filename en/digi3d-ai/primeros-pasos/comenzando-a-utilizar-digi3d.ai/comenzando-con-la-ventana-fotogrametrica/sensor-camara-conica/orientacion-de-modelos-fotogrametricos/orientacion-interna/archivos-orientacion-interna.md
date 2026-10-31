# Internal orientation files
<!-- id: archivos-orientacion-interna -->
<!-- origen: 198441e49b5622b2251051e8b2c04b311d8c0153 -->

When you accept internal orientation, Digi3D.AI creates a file with the same name as the image you just oriented, but with the _.in.xml_ extension, in the photogrammetric model's project directory.

The internal orientation file stores the orientation result and your measurements. If you delete an internal orientation file, the corresponding photogrammetric window toolbar button is not pressed the next time you load the model \(indicating that internal orientation could not be loaded\).

Complete [Internal orientation of the right camera](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-fotogrametrica/sensor-camara-conica/orientacion-de-modelos-fotogrametricos/orientacion-interna/orientacion-interna-camara-derecha.md) before following these steps to check the generated files:

1. Open **File Explorer** \(you can press **Windows + E**\).
2. Locate the **Bronchales** project.
3. Check that **107.in.xml** and **108.in.xml** have been created.
4. Delete **108.in.xml**.
5. Return to Digi3D.AI. If the photogrammetric model was loaded, close its window.
6. Load model 107-108 again and check that **D** on the photogrammetric window toolbar is not pressed, because **108.in.xml** could not be found.
7. Close the photogrammetric window.
8. Restore the deleted file from the Recycle Bin.
9. Open model 107-108 again and check that **D** on the photogrammetric window toolbar is now pressed.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Archivos%20de%20orientacion%20interna.mp4" caption="" type="video/mp4"></video>
