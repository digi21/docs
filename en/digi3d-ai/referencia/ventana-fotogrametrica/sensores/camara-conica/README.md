# Conical
<!-- id: camara-conica-2 -->
<!-- origen: e17ffcd7223a1f4cce45a517130b0ede670a67d8 -->

The Conical sensor supports photogrammetric models from metric or perspective cameras (classic aerial and terrestrial photogrammetry): interior, relative, and absolute orientation, aerial triangulation measurements, and more.

Camera calibrations and model orientations can be read from different applications and formats. See [extensions](extensiones/README.md).

## Creating a model

Create Conical models with [Create model](../../../cuadros-de-dialogo/crear-modelo.md), selecting **Conical (Stereoscopic)** in Fast model change project file. The proposed model name combines the left image name, a hyphen, and the right image name without extensions: `107.tif` and `108.tif` propose **107-108** and create **107-108.d3d** in the working directory. You can type another name in **.d3d file name**. A model opened from a `.d3d` file takes that file's name without extension, also if you renamed the file. See [Model name](../README.md#model-name).

## Sensor properties

* **Aerial triangulation file**: source of both images exterior orientations and camera calibration if included. Supports enabled [extension](extensiones/README.md) formats. Leave empty for work without aerial triangulation.
* **Left image** and **Right image**: model image files.

## Orientation sources

Loading reads files from the model working directory. `<izquierda>` and `<derecha>` stand for image names without extensions.

### Camera

1. With **Aerial triangulation file** and no camera file, search aerial triangulation for calibration.
2. If unavailable, use the model camera file.
3. Without either, open **Camera file for the left image** (or **Camera file for the right image**) to select one. Canceling prevents model loading.

Use [Camera file editor](../../../cuadros-de-dialogo/editor-archivos-camara.md) to create or edit camera files or convert a camera from another format or project to Digi3D `.cam`.

### Relative orientation

* **With Aerial triangulation file**: extensions attempt to read it. A successful extension supplies exterior orientations. Working directory `<izquierda>-<derecha>.rel.xml`, `<izquierda>-<derecha>.rel`, and `<imagen>.orientation.xml` are used only if no extension reads aerial triangulation.
* **Without Aerial triangulation file**: load, in order, `<izquierda>-<derecha>.rel.xml`, `<izquierda>-<derecha>.rel`, or the pair `<izquierda>.orientation.xml` and `<derecha>.orientation.xml`. With paired `.orientation.xml` files, relative orientation cannot be edited.
* If none is found, create a provisional relative orientation in an unknown coordinate reference system, measurable with [RELATIVE\_ORI](../../ordenes/o/ori_relativa.md).

With **Aerial triangulation file**, [Results](../../../paneles/resultados.md) may show:

* "No camera extension could read the aerial triangulation file *file*: the model has been loaded without the exterior orientations of that file.": no enabled extension recognizes the file format or extension.
* "The relative orientation file *file .rel.xml* is ignored because the model loads its exterior orientations from the aerial triangulation file *file*. To use the relative orientation, remove the aerial triangulation file from the model.": a `<izquierda>-<derecha>.rel.xml` exists, for example from measurements before the aerial triangulation file was specified.

### Absolute orientation

Read absolute orientation from aerial triangulation if its extension provides it. Otherwise, read `<izquierda>-<derecha>.abs.xml` (or legacy `<izquierda>-<derecha>.abs2`). [ABSOLUTE\_ORI](../../ordenes/o/ori-absoluta.md) writes absolute orientation to `<izquierda>-<derecha>.abs.xml` even if the model's `.d3d` file has another name. Without absolute orientation from either source, there is no absolute transformation: model coordinates are relative orientation coordinates.

## Coordinate reference system

If aerial triangulation does not specify a coordinate reference system, or specifies one without a vertical component, loading requests it. See [Model without a coordinate reference system](sistema-de-referencia-del-modelo.md).
