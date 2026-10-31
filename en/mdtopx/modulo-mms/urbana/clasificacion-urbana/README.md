# Urban classification
<!-- id: clasificacion-urbana -->
<!-- origen: 346f627b120a91536b916e5904e1804626859f19 -->

[MMS Urban tab](../)

Classifies an urban point cloud, including roadway, sidewalk, curb, facades, trees, street furniture, road markings, covers and overhead wires, and generates breaklines and urban inventory as vector entities.

Works with an open point cloud file or a project. Requires an MMS license.

## Output

* **Breaklines**: lower and upper curb, facade base and gutter. MMS also generates inferred curbs under parked cars and the curb along a row of cars.
* **Urban inventory**: road markings, axes for linear markings and outlines for area markings; manhole covers, tree pits, drains, tree trunks and crowns; facades with doors, windows, balconies and other elements; objects including streetlights, poles, bollards, litter bins, benches, vehicles, pedestrians, containers, barriers and road signs; and overhead wires.
* **Point classification**: each cloud point's LiDAR class.
* **Facade orthophotos** and **Ground orthophoto**, optional: images from cloud color or intensity, one per facade on its vertical plane and one ground plan image. See [Orthophotos](#orthophotos).

Breaklines and inventory are created in a new document named *Urban classification of …*. Point classes are written to the cloud itself. Orthophotos are written beside the cloud.

## Dialog

### Sensor

* **Vehicle MMS (on the roadway)**: a mobile system mounted on a car traveling along the roadway.
* **Handheld SLAM scanner (also sidewalks)**: backpack or handheld scanner with a more irregular route that can include sidewalks.
* **Trajectory (optional)**, MMS only: vehicle trajectory file, either a road file using its horizontal alignment or any format MDTopX reads. Uses the longest line. If the file has no lines, such as panoramic photograph positions, uses points in file order. Positions or vertices more than 15 m apart indicate a trajectory gap where recording stopped, except when a line segment continues straight from the preceding and following segments, such as a street axis drawn with long straight lines. The trajectory locates parked car rows and, in a project, determines which file owns each segment.
* **Density (0: estimated)**: ground points per square meter near the sensor. At 0, estimated from the cloud. Together with sensor type, determines voxel size.
* **Intensity comparable between passes**: enable if intensity is comparable between beams and passes. Leave disabled for sensors without calibrated intensity, such as Velodyne.
* **Context margin (SLAM project)**: in SLAM projects, each file is processed with neighboring files' points within this distance of its boundary. Used only for SLAM scanner projects.

### Thresholds

All in meters.

| Threshold | Default | Meaning |
|---|---|---|
| Max. tree height | 20 | No crowns above this height; higher wall-shaped structures are buildings. Must be at least 2. |
| Min. crown height | 2 | Lower elements, such as cars or people, are not tree crowns. |
| Min. building height | 3 | Shorter building clusters are not classified as buildings. |
| Building depth | 30 | Classifies as building up to this distance behind the facade plane. |
| Facade element overhang | 2 | Maximum protrusion of balconies, awnings or air conditioners from the wall. Must not exceed 100. |
| Facade element height | 2.2 | Facade elements lie above this height. |
| Min. cable height | 3.5 | Minimum overhead wire height above ground. |
| Min. cable length | 3 | Minimum overhead wire length. |
| Curb gap (MMS) | 12 | Follows curbs across gaps, such as parked cars, up to this length. MMS only. |
| Voxel size (0: auto) | 0 | Voxel side length. At 0, determined by sensor and density. Projects use the smallest value among their files. |
| Paint threshold (0: auto) | 0 | Paint intensity relative to asphalt. At 0, uses the MMS calibration or 1.6. |
| Depth below pavement | 1 | Points farther below surrounding pavement are classified as below pavement, for example a shaft. |

### Generate

* **Breaklines**, **Urban inventory**, **Point classification**: outputs described above.
* **Keep the class of already classified points**: retains classes other than 0, never classified, and 1, unclassified. Only remaining points are classified. Points outside processed areas also retain their classes.
* **Add the synthetic ground points hidden by cars (MMS)**: adds ground points in parked car shadows with inferred roadway, sidewalk, curb or ground classes. Requires MMS and Point classification. They have no color but receive GPS time from the car or object hiding the ground: the nearest measured nonground point within 5 m. This permits selecting them together by GPS time. They have return number 0, because they are not laser returns, and an inferred class. Reclassifying ignores existing synthetic points: with this option enabled, replaces them; otherwise retains them. Measured cloud points must have return numbers, and the four inferred classes must differ from all other table classes and 0. Otherwise no synthetic points are added.

* **Facade orthophotos**: one per detected facade, disabled by default.
* **Ground orthophoto**: ground plan orthophoto, disabled by default.
* **RGB color** / **Intensity**: source for both orthophoto types. Intensity uses the Generate raster palette and works without cloud color.
* **Pixel**, default 0.05 m: orthophoto pixel size.
* **Max. fill (0: no filling)**, default 1 m: fills gaps between points smaller than this. At 0, leaves gaps unfilled.

The last three options are enabled only when at least one orthophoto option is selected.

### LiDAR classes... and Vector codes...

Open tables assigning LiDAR classes to point types and vector codes to inventory lines or elements. See [Classes and codes](clases-y-codigos.md).

## Single file

Open the cloud and click **Urban classification**. Classification occurs in memory. Point classification can be undone, except for very large clouds for which MDTopX keeps no backup.

## Project

With a project open, click **Urban classification** and select files. Files are processed one by one without loading the entire project into memory.

* **Context points**: neighboring points prevent surfaces from being cut at file boundaries. With MMS, uses preceding and following files' points within 10% of the current file's duration before its first GPS time and after its last, as with Asphalt. Without GPS time, uses points within extents expanded by 10%. With SLAM, uses files intersecting the boundary expanded by **Context margin**.
* **Ownership**: shared areas appear once. With MMS and a trajectory, each trajectory segment belongs to the file with most nearby points. Without a trajectory, SLAM assigns each 1 m cell to the file with most surrounding points.
* **Voxel size**: the same for all files, the smallest individual value, ensuring consistent detection.
* **Output**: writes point classes into each file, with an MMS license. Merges all breaklines and inventory into one new document, joining lines crossing file boundaries and removing duplicate outlines.
* MMS projects are sorted by GPS time before processing, as with Asphalt.
* Files that could not be processed are listed at completion.

## Orthophotos

Orthophotos use the cloud classified by this tool. Each pixel receives the mean color or intensity of points falling inside it. Gaps between points, such as between MMS passes, are filled by interpolation from surrounding pixels, as in Generate raster: data pixels are triangulated and gaps inside triangles whose sides are all shorter than **Max. fill** are filled. Areas without data are **transparent**: files are GeoTIFF with alpha. MDTopX displays transparency as black; programs reading alpha display it transparently.

With **Intensity**, each orthophoto uses the Generate raster palette from red, its lowest intensity, to magenta, its highest.

At completion, the results window reports orthophoto counts by type and their locations. If the cloud is not saved on disk, no orthophotos are written because there is no destination folder, and a message explains this.

### Facade orthophotos

One per detected facade, on its vertical plane and viewed from the street, without mirroring. Uses only **building** and **facade element** points, such as balconies, awnings and air conditioners. Trees and cars in front are excluded, leaving gaps where they occlude the facade, filled when smaller than **Max. fill**.

Written to **`fachadas`** beside the cloud, as `<nombre de la nube>_fachada_NNN.tif`. These GeoTIFFs store georeferencing on the facade plane through the model transformation matrix including Z. MDTopX opens them as planar images; loaded as image references, they appear in their correct 3D positions. Other GIS programs read only the plan portion, displaying vertical facades as lines.

### Ground orthophoto

One ground plan orthophoto using visible ground classes: roadway, sidewalk, curb, other ground, linear and area road markings, covers and drains, tree pits and shaft grates. Excludes synthetic points, which lack color, and below-pavement points such as shaft bottoms. Cars, trees and streetlights are excluded, leaving gaps where they occlude the ground.

Written to **`suelo`** beside the cloud, as `<nombre de la nube>_suelo.tif`, with `.ORT` and `.TFW`. The image corner is aligned to a pixel multiple so project orthophotos, one per file and its area, fit together without overlapping.

Load it as a digital terrain model texture with [Load textures](../../../modulo-virtualand/cargar-texturas/README.md) and [integrate it](../../../modulo-virtualand/integrar-texturas.md).

A very large, dense street can require substantial memory to fill ground orthophoto gaps. If memory is insufficient, ground orthophoto generation is skipped while classification continues.

## Limitations

* Synthetic points are added without color, RGB 0, 0, 0.
* Actual orthophoto resolution equals classification voxel size, for example 7 cm, even with smaller pixels.
* Orthophotos retain cloud color defects. MMS ground under a car often has the car's color because the camera could not see it.
* If part of a tree beside a facade is classified as building, it appears in the facade orthophoto.
* The entire cloud is processed; selection is ignored.
