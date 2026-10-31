# Unknown coordinate reference system
<!-- id: sistema-referencia-coordenadas-horizontal-desconocido -->
<!-- origen: a32207b09fd08711e1cdb8d1b58e81c0745c5158 -->

Sometimes you do not know the coordinate system used by a file's coordinates (an aerotriangulation file, control point file, drawing file, ...).

If you do not know a file's coordinate reference system, specify that it is unknown when Digi3D.AI asks.

**Coordinates cannot be transformed from a known coordinate reference system to an unknown one, or vice versa.** For example, loading a photogrammetric model in a known system, such as _ED 50 / UTM Zone 30N + EGM2008 Rednap península_, and attempting to load a drawing file with an unknown coordinate reference system makes Digi3D.AI display the following error dialog. The program cannot transform coordinates from the photogrammetric window to the drawing window's coordinate reference system because the latter is unknown. Even its units are unknown (they could be meters, feet, miles, micrometers, ...):

![Dialog indicating that no transformation could be found](../../../../../images/no-se-ha-podido-localizar-una-transformacion-fotogrametrica-conocido-dibujo-desconocido.png)

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/SCR%20de%20la%20ventana%20foto%20conocido%20y%20de%20la%20ventana%20de%20dibujo%20desconocido.mp4" type="video/mp4"></video>
