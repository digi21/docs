# Road inventory workflow
<!-- id: flujo-de-trabajo-para-el-inventariado-de-una-carretera -->
<!-- origen: f3dcc82a1603e8fbb7193f75163d5fa5d9bbb3d8 -->

[MMS module](/mdtopx/modulo-mms/)

## Preparation

### Generate sections

Processed point cloud files may contain the entire acquisition, occupying tens or hundreds of GB, impractical to manage or display. Split them by maximum data count or spatial extent with [Preprocess Laser](../modulo-laser/vista/preprocesar.md) on [LiDAR Files](../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/).

### Approximate trajectory axis

Automatic MMS processing tools accept an approximate trajectory file as initial data, avoiding additional vehicle-position calculations. Recommended but optional.

Create the file manually or derive the vehicle route from image projection centers in one project using **Path from images** in [Project Edit](../fichas-de-herramientas/ficha-de-herramientas-proyecto/editar-proyecto.md).

Alternatively, import the calculated trajectory, usually an ASCII file with GNSS positions and orientation angles at time intervals.

Example:

```text
file_name,file_type,sequence_id,timestamp,GPS_time(s),east,north,altitude,attitude(x)=roll,attitude(y)=pitch,attitude(z)=pan,frame_id
E:/2021-03-15_11-47-26/ladybug_panoramic_001929.jpg,JPG,1929,162259326648,1299841796.17742848,596126.402298610075,3121341.12428526115,51.4542347844690084,177.971166137430686,2.05551927384272703,-93.0967238715002026,3791
E:/2021-03-15_11-47-26/ladybug_panoramic_001930.jpg,JPG,1930,162356296464,1299841797.14712691,596131.650464848964,3121341.97523138579,51.2559816902503371,177.033894729433285,0.378351863176165426,-113.457547588796572,3792
E:/2021-03-15_11-47-26/ladybug_panoramic_001931.jpg,JPG,1931,162455886013,1299841798.14302278,596136.238556805649,3121344.82461331319,51.1919172378256917,176.771113624685285,-0.33364872741620677,-137.619259427909441,3793
```

## Buffer around the axis to remove distant points

Before automatic classification, remove points too far from the area of interest with [**Buffer**](trazado/buffer-en-datos-mms.md) on [MMS Alignment](trazado/).

## Automatic element classification

Prepared data can be classified, assigning each point a value identifying the object measured by LiDAR. MDTopX automates this with several tools. Keep a checklist recording each process's status. Automatic processing produces errors or defects, so perform quality control after each tool to refine results.

## Point cloud classification

### Find ground

The first step separates ground from nonground \(objects): points for a DTM versus points for a DSM. Ground includes asphalt, sidewalks, curbs and unpaved areas; other points are classified later.

Scanner range, commonly up to 200 m, and occlusions caused by objects and acquisition methods leave some areas too sparse to determine ground reliably. Ground detection therefore outputs ground \(type 2), nonground or object \(type 6), and undetermined \(type 0) points.

Run [Bare ground](trazado/clasificar-suelo-de-trazado.md) on a cloud file or, more commonly, a project for batch processing and continuity across adjacent areas.

### Generate a DTM and relief maps

Once project files are processed, ground can be separated from objects to [calculate a digital terrain model](../modulo-laser/obtener-modelo-digital/triangulacion-2d.md). Use it for [contours](../como/como-curvado.md), [hypsometric tints](../como/como-mapa-de-tintas-hipsometricas.md), [slopes](../como/como-mapa-de-pendientes.md), [shading](../como/como-sombreado.md) or [orthophotos](../modulo-ortofoto/).

Classified ground clouds can also generate [contours](../modulo-laser/generar/curvado-a-partir-de-lidar.md) or [images](../modulo-laser/generar/generar-imagen.md) directly without an intermediate DTM.

Relief maps can be generated:

* [From a TIN](../modulo-laser/obtener-modelo-digital/triangulacion-2d.md). With many LiDAR ground points, a TIN is generally discouraged: it doubles the point count used and burdens the computer without major output benefits. Using all points can also create small artifacts from slight elevation differences between neighbors. If a TIN is needed for later operations, first filter ground points to reduce these differences.
* [From a DEM grid](../modulo-laser/generar/rejilla-a-partir-de-lidar.md). Lighter and easier to use; specify grid spacing. Whole-surface smoothing algorithms can produce optimal contours.
* [Directly from the LiDAR cloud](../modulo-laser/generar/curvado-a-partir-de-lidar.md). Avoid intermediate \(TIN or DEM) files with MDTopX's direct cloud contouring tool. Depending on settings, calculation uses a TIN or DEM without saving it to disk. It can also correct points incorrectly classified as ground.

## Find asphalt and white lines

After ground detection, find specially characterized ground elements: asphalt, road markings on asphalt and sidewalk curbs.

Detect them separately or together according to the [dialog](trazado/clasificar-lineas-de-vial.md). Separate steps help edit results because marking detection depends on good asphalt detection. Useful on irregular asphalt or winding roads that complicate detection; generally unnecessary on well-marked roads.

Automatic classification may leave unwanted results needing assisted editing.

MDTopX provides a [tool](editar-objetos/calcular-limite-de-asfalto.md) for quick editing. First calculate asphalt boundaries from already classified points.

Another [tool](editar-objetos/calcular-lineas-de-vial.md) similarly edits road marking classifications.
