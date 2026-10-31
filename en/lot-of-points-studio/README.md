# Lot Of Points Studio
<!-- id: lot-of-points-studio -->
<!-- origen: aacbc31568caf7b89ace5ecfd8ab16487f3001b4 -->

<img src="../images/lot-of-points-studio-icono.png" alt="Lot Of Points Studio icon" width="128">

**Lot Of Points Studio** is a Windows program that prepares point clouds for [Lot Of Points](../lot-of-points/README.md) and publishes them on Azure. From original files, it creates the level of detail used by the viewer and collects spherical images associated with scans.

Start with [Process locally](procesar-en-local.md) to prepare several files before opening them in the viewer. Studio organizes work in a queue and saves results in the computer's cache. This needs no Azure container configuration.

To share clouds, [Projects](proyectos-en-azure.md) groups and publishes them in an Azure container. Studio prepares each cloud, uploads its data and images, and updates the project catalog. Once published, [copy its link](compartir-proyectos.md) to open project clouds in Lot Of Points by streaming: the viewer requests data as needed, without downloading all clouds first.

The same page browses published projects and their [statistics and images](estadisticas-e-imagenes.md). Read-only access lets you review published project contents; write access lets you add clouds and remove unneeded ones. [Settings](ajustes.md) contains the cache location and container access URLs.

## About

**About** shows the version of the EPSG (*European Petroleum Survey Group*) dataset, its attribution, links to epsg.org and its terms of use, and the warranty disclaimer. The text states that the application does not charge for EPSG data. Credits include crskit and SQLite.
