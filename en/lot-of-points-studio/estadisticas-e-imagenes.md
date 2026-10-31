# Statistics and images
<!-- id: lot-of-points-studio-estadisticas-e-imagenes -->
<!-- origen: 8f035f352da8db25574f5f261104f9a94189d42c -->

**Projects** lets you review published clouds before opening them in the viewer. Selecting a project shows an overall summary and one row per cloud below, with its data and available image thumbnails.

## Interpret statistics

Studio calculates statistics while preparing clouds and adds them to the catalog when publishing. No additional operation is needed. Older catalogs may lack these data; republishing clouds adds statistics to catalogs.

| Data | Meaning |
|---|---|
| Clouds | Number of project entries. |
| Points | Level-of-detail points. Project total sums clouds with statistics. |
| Size | Sum of index and point file sizes, in bytes (B), kilobytes (KB), megabytes (MB) or gigabytes (GB). Excludes images and additional-attribute file. |
| Classes | Class numbers present, rather than a point count per class. |
| Photo captures | Captures associated with the cloud or project. Each six-face cube capture (*cubemap*) counts once, based on its orientation file. |

Point count comes from the prepared cache. Since level-of-detail creation discards exact duplicates, it may be lower than the original-file count.

Hover over a cloud row for X, Y and Z minima and maxima. For LAS (point cloud interchange format) or LAZ (compressed LAS), if the original header was readable, its bounds are used. Other formats may show the level-of-detail domain: the cube containing the cloud. Then Studio displays “The displayed bounds correspond to the level-of-detail cube; they are not fitted to the points.”

## Scan images

E57 files can supply spherical panoramas or six-face captures (*cubemaps*). JPEG (*Joint Photographic Experts Group*) and PNG (*Portable Network Graphics*) are supported: during import, PNGs are prepared as JPEGs for Studio and the viewer.

PTX gridded scans can have JPEG photographs with the JPG extension beside the point file. One scan uses `<nombre>.jpg`; several use `<nombre>.0000.jpg`, `<nombre>.0001.jpg`, etc. Images must be available during cache preparation. LAS, LAZ, PTS (text points) and PCD (*Point Cloud Data*) do not supply spherical images.

Publishing includes photographs, capture positioning data and identification thumbnails. Each cloud's gallery shows one thumbnail per capture. Cubemaps use one face to represent the capture, although all six faces and thumbnails are published for the viewer.

Thumbnails retain image proportions. Hovering shows the corresponding image name. To explore photographs from their capture positions, open the [project in Lot Of Points](compartir-proyectos.md).
