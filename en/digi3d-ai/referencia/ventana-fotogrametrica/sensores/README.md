# Sensors
<!-- id: sensores -->
<!-- origen: ebecae479462bea04440969dde58f664e9e24f1a -->

The photogrammetric window displays models obtained with different sensors.

Select the sensor used to acquire the images or point clouds. For images from a Leica ADS100 camera, select `ADS`.

Each sensor requires different data. **Photogrammetric project** in **New project** adapts the interface to the selected sensor.

Sensors can be monoscopic (one image), stereoscopic (always a stereo image pair), or tri-stereoscopic (always stereo, with three choices for stronger or weaker stereo perception or projection).

| Name | Description | Stereo type | Synthetic | Free camera |
|---|---|---|---|---|
| [Conical](camara-conica/README.md) | Metric or perspective camera models (classic aerial and terrestrial photogrammetry) | Stereoscopic | No | No |
| [RPC Satellite](rpc/README.md) | Satellite images with an RPC model | Tri-stereoscopic | No | No |
| [PointCloud](point-cloud.md) | Point clouds | Stereoscopic | Yes | Yes |
| [Orthophoto](ortofoto.md) | Measurement on an orthophotograph | Monoscopic | No | No |
| [Stereoscopic Orthophoto](ortofoto-estereoscopica.md) | Measurement on a pair of orthophotographs | Stereoscopic | Yes | Yes |
| [ADS](ads.md) | Leica ADS pushbroom cameras | Tri-stereoscopic | No | No |
| [VM Quasi-Panoramic](vm-quasi-panoramic.md) | Quasi-panoramic images | Stereoscopic | No | No |
| [Web Map Service](wms.md) | Layers from a WMS server | Monoscopic | No | No |
| [Web Map Tile Service](wmts.md) | Tiled layers from a WMTS server | Monoscopic | No | No |

**Synthetic** means the model is generated instead of formed from real images, for example from a point cloud or an orthophotograph and digital surface model.

**Free camera** means the camera can be placed anywhere in space and pointed in any direction, unlike a fixed camera whose position can change but whose orientation cannot.

## Model name

Each sensor proposes a name for the `.d3d` file that stores the model. Conical, for example, uses the left and right image names separated by a hyphen. When you create the model you can type another name in **.d3d file name** in [Create model](../../cuadros-de-dialogo/crear-modelo.md) or in the [Photogrammetric sensors](../../cuadros-de-dialogo/nuevo-proyecto/sensores-fotogrametricos.md) tab of the New project dialog.

When Digi3D.AI opens a model from a `.d3d` file, the model name is the name of that file without extension, also if you renamed the file. When a model opened from a `.d3d` file is closed, Digi3D.AI saves the model data in that file. For a model opened from a `.d3d` file, the Python [`model_name`](../../../programacion/python/referencia/digi3d/photogrammetric-view.md#loaded-model) property returns the `.d3d` file name without extension.

Digi3D.AI writes the following orientation files with the model name. To read them, it first looks for the file named after the model and, if that file does not exist, for the file named after the images:

* `.abs.xml` of the [ADS](ads.md) and [RPC Satellite](rpc/README.md) sensors: `<nombre del modelo>.abs.xml`.
* `.rpcba` of the [RPC Block Adjustment](rpc/ajuste-en-bloque-de-rpcs.md): `<nombre del modelo>.rpcba`.
* `.mod` of the [AEROTRI](../ordenes/a/aerotri.md) command with Conical: `<nombre del modelo>.mod`.

Conical always reads and writes its absolute orientation (`.abs.xml`) with the name formed by the images.
