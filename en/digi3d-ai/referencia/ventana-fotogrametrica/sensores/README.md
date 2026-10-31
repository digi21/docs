# Sensors
<!-- id: sensores -->
<!-- origen: 0dcdada109270d00dbdc7de68a308898668c44cb -->

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
