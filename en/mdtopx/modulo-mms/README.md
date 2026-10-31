# MMS module
<!-- id: modulo-mms -->
<!-- origen: f5fb42ce10db1e23fb06312007d074a0ac95e5c5 -->

[What is MDTopX?](../introduccion/mdtopx.md)

The MMS module manages and processes point cloud files acquired by Mobile Mapping systems. Multiple sensors collect dense clouds of roads, streets or railway lines.

![Digital surface model with orthophoto from MMS data](../../images/mdt-vial-con-orto.png)

Module tools are on the [MMS tab](../fichas-de-herramientas/ficha-de-herramientas-mms.md).

[Watch video: Manage a point cloud recorded by an MMS sensor](https://youtu.be/EppZkcVY1MM)

[Watch video: Manage a Leica Pegasus Backpack point cloud](https://youtu.be/6pgNWc6ZQhI)

MMS processing requires sufficient RAM: at least 8 GB, with 16 GB recommended. Even though large data displays are avoided, at least 1 GB of graphics RAM is recommended. Data is voluminous; although little additional data is generated, allow 4 GB of free disk space per kilometer acquired.

MMS information comes as [point clouds](archivos-de-nubes-de-puntos-mms.md) or [360-degree images](archivos-de-imagen-360-mms.md).

Open an individual file to inspect properties or view it, but keep related files together in a [project](../operaciones-con-archivos/proyectos-de-mdtopx.md). Projects can contain vector, raster, digital model and geometry files. They store file locations rather than duplicating files.

Create separate projects for point clouds and any 360-degree images. [Managing 360-degree images](gestion-de-imagenes-360.md) requires special processing.

Certain tools then run in batches on selected files, maintaining continuity between calculations. Files being processed are not displayed, reducing memory requirements.

Specific workflows:

* [Road inventory workflow](/mdtopx/modulo-mms/flujo-de-trabajo-para-el-inventariado-de-una-carretera.md)
* [Railway inventory workflow](flujo-de-trabajo-para-el-inventario-de-una-linea-ferrea.md)
