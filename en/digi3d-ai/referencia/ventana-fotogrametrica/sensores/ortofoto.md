# Orthophoto
<!-- id: ortofoto-2 -->
<!-- origen: 36e117b48dc7025a41d8ed5a52b1f7e3edad9fa6 -->

The Orthophoto sensor supports measurement on an orthophotograph. The model has one image and no stereoscopy. **Orthophoto** in model configuration specifies the image path. Formats are those supported by the photogrammetric window.

## Image georeferencing

When opening a model, the sensor reads image georeferencing: GeoTIFF tags, the ECW header, or an adjacent world file: _.tfw_ for TIFF, _.eww_ for ECW, _.j2w_ for JPEG 2000, and _.sdw_ for MrSID.

Without georeferencing, the model opens in pixel coordinates: X is the column, and Y is image height minus row, placing the origin at bottom-left with Y increasing upward, like a georeferenced orthophoto. Run **Affine orientation** to georeference it. An existing but unreadable world file displays an error and prevents opening.

## Affine orientation

**Affine orientation** in the photogrammetric window menu opens [Orientation](../../paneles/orientacion.md), where you measure at least three control points. On acceptance, the sensor saves the transformation as a world file and its reference system as a _.prj_ in the project folder, using the image name. The option is checked when the model has affine orientation. Drawing window vectors are transformed to the chosen reference system immediately, without reopening the model.

When opening a model, a world file in the project folder applies affine orientation over image georeferencing.

If the project and image share a folder, the saved world file belongs to the image itself. It is applied only once, replacing GeoTIFF tags or the ECW header. Accepting affine orientation saves the pixel-to-ground transformation, keeping the world file valid for other applications. Before replacing the image world file and _.prj_, the sensor makes copies with _.bak_ appended (for example, _foto.tfw.bak_) if each backup does not already exist, and displays a backup notice. A failed backup prevents saving the orientation.

Orthophoto models can open without the photogrammetry module to orient the orthophoto.
