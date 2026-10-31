# MMS point cloud files
<!-- id: archivos-de-nubes-de-puntos-mms -->
<!-- origen: 6fb8167a3aaa4f33f17de7ff6fdd74039c35aaaf -->

[MMS module](/mdtopx/modulo-mms/)

MMS point cloud files contain georeferenced points, potentially 10, 20 or 30 million. Fewer may cover too little of the scene; more may slow subsequent calculations.

Input format depends on the processing application, typically LAS, LAZ, E57, PTX or PTS:

* LAS is most common, developed by ASPRS, public and fully documented.
* LAZ, developed later by Martin Isenburg, is also documented. Internal compression can reduce size to 30% of the original.
* E57 is more common for static or indoor acquisitions.
* PTX is ASCII, containing spherical polar coordinates for static scans.
* PTS is an ASCII rectangular coordinate list with properties such as intensity and/or color.

Each point's components matter for subsequent calculations:

* XYZ coordinates
* GPS time
* Intensity
* Color
* Classification

Coordinates, GPS time and intensity are assigned initially. Coordinates locate each point spatially.

GPS time relates points by acquisition time. It may be absent if the cloud was not acquired with MMS, such as a photogrammetric multi-image correlation cloud from a UAV with an RGB camera. A later process can assign artificial timestamps to relate points quickly.

Intensity is recorded by the laser sensor. Its range depends especially on manufacturer, plus distance, reflection angle, element color, material, roughness and ambient light. Non-LiDAR clouds, such as photogrammetric clouds, lack it.

Color is assigned afterward from RGB images rather than recorded directly by LiDAR. LiDAR and images are normally acquired simultaneously, but their different techniques mean individual points do not match exactly. Color correspondence is therefore imprecise, especially for moving objects such as vehicles. Although realistic for viewing, color is a poor algorithm input because it depends on sensor type, ambient light, angle and distance.

Classification is initially empty but important for distinguishing elements later. It identifies what each LiDAR point measured. There are 256 values, some reserved for fixed elements, usually the first 16. Others are available to users or processing software. Subsequent processing depends on correct point classification to produce suitable documents.

Inspect overall cloud properties with [Laser Doc properties](../modulo-laser/vista/propiedades-documento-laser.md) on the [LiDAR Files tab](../fichas-de-herramientas/ficha-de-herramientas-archivos-lidar/).
