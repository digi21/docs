# RPC Satellite
<!-- id: rpc -->
<!-- origen: 675b0b6d5e8d6d762be185b2c82fd04d30ef7051 -->

The RPC Satellite sensor supports satellite images using the RPC (*Rational Polynomial Coefficients*) model.

RPC coefficients can be read from different formats and providers. See [extensions](extensiones/README.md).

For the stereoscopic sensor, **Photogrammetric window/RPC Block Adjustment** corrects both image RPCs from control points. See [RPC Block Adjustment](ajuste-en-bloque-de-rpcs.md).

## Projects with multiple pairs

A photogrammetric project (`.d3dprj`) can contain multiple **RPC Satellite (stereoscopic)** pairs, for example when one pair does not cover the entire work area. [Photogrammetric project](../../../paneles/proyecto-fotogrametrico.md) loads each selected pair and can switch automatically according to cursor position.

To create a project:

1. Click **New** in Photogrammetric project to open [Fast model change project file](../../../cuadros-de-dialogo/crear-proyecto-fotogrametrico.md).
2. Select **RPC Satellite (stereoscopic)**.
3. Create a strip and add pairs: **Create** creates a new pair `.d3d` file; **Load** adds an existing one.
4. Click **OK** to save the project and load it in the pane.

Digi3D.AI opens a project as this sensor pair project if its first existing `.d3d` file uses **RPC Satellite (stereoscopic)**. Mixing these pairs with other sensors does not load the complete project: its type is determined by the first existing `.d3d` sensor, and models from other sensors cannot load.

Project loading reads each pair RPCs, absolute orientation, and [RPC Block Adjustment](ajuste-en-bloque-de-rpcs.md) correction without reading images. Unreadable pairs display "The pair in model file *path* is excluded from automatic model switching. Reason: *reason*" in Results. The pair remains listed: clicking it retries loading and reports the reason if it fails again. Automatic switching and **Go to previous model**, **Go to next model**, **Go to the previous strip model**, and **Go to the next strip model** skip pairs that could not be read during project loading.

The **Viewpoint** drop-down lists only **Stereo pairs**.

If a pair RPC reference system has no vertical component and [Request vertical system for sensors](../../../cuadros-de-dialogo/configuracion/sistema-de-referencia-de-coordenadas/solicitar-sistema-vertical-para-sensores.md) is **Yes**, vertical system selection appears during project loading, once per distinct horizontal system. Loading a pair reuses the vertical system chosen for that horizontal system without requesting it again.

### Automatic pair switching

With **Fast model switching** enabled in Photogrammetric project, Digi3D.AI chooses a pair when the cursor stops:

1. For each image, calculate L = (cursor longitude − `LONG_OFF`) / `LONG_SCALE` and P = (cursor latitude − `LAT_OFF`) / `LAT_SCALE` from its RPC offsets and scales. Cursor longitude and latitude, `LONG_OFF`, `LAT_OFF`, `LONG_SCALE`, and `LAT_SCALE` are in degrees. Offsets usually approximate image center longitude and latitude; scales approximate half the longitude and latitude extents.
2. For each pair, calculate the maximum absolute normalized cursor coordinate, |L| and |P|, across both images. A maximum no greater than 1 places the cursor inside |L| ≤ 1 and |P| ≤ 1 rectangles of both images, approximating their coverage.
3. Load the available pair with the smallest maximum absolute normalized cursor coordinate across both images, even if the cursor is outside every pair coverage.

**Go to the previous strip model** and **Go to the next strip model** select the preceding or following strip, then load its pair with the smallest maximum absolute normalized cursor coordinate across both images.
