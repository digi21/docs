# Road longitudinal profile
<!-- id: perfil-longitudinal-de-viales -->
<!-- origen: 4175f0b4a4eda3d0b0dbaf5b8339baa573d74c31 -->

[Roads Generate](/mdtopx/fichas-de-herramientas/ficha-de-herramientas-viales/viales-generar.md)

![Road longitudinal profile dialog](../../../images/image-97.png)

This tool generates a new drawing document with an alignment's longitudinal profile using these settings:

* **Select vertical alignment**: vertical alignments to include in the longitudinal profile.
* **Profile settings**:
* **Start**: starting chainage in meters, default 0.
* **End**: ending chainage in meters, default total alignment length.
* **Scales**: horizontal and vertical scale denominators, determining vertical exaggeration and geometric limits for filtering unnecessary profile definition points.

Configure vertical alignment projection onto the DTM with [Type of projection](../../herramientas-mdt/perfiles/tipo-de-proyeccion.md).

Change information displayed below cross sections through [Annotations](/mdtopx/herramientas-mdt/perfiles/guitarra.md).

The new drawing document can be saved as DIGI BIN, AutoCad DXF, MicroStation DGN or ESRI ArcGIS Shape. An additional document can contain longitudinal profile points projected onto terrain in TopCal, Clip, Genius or TCP MDT format for use in those programs.
