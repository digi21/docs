# General application information
<!-- id: informacion-general -->
<!-- origen: 9507e866e4f0ba6b69b1b3a4387c44049e97da96 -->

Digi3D.AI evolved from two programs that began as independent products and eventually merged into a single application.

_Digi_ was created in 1988 as a _CAD_ (computer-aided design) application without a graphical interface, capable of recording coordinates from a _Topodata R2_'s encoders. After capture, the coordinates were converted to _HP-GL2_, the format used by the _plotters_ of the time to print the photogrammetric compilation.

Over time, _Digi_ became a graphical application, first for MS-DOS and then for _Windows_, and was renamed _Digi21_.

_Digi3D_ was created to replace the analog/analytical stereoplotters of the time. The idea was to replace the machine \(analog or analytical\) connected through an encoder box to another computer running _Digi21_.

The first versions of _Digi3D_ did not support _vector superimposition_ and worked only with frame camera stereo models.

The stereoscopic viewing system used was a _monitor stereoscope_.

This initial version of _Digi3D_ could only load images \(scanned with a _photogrammetric scanner_\) and perform their _internal_, _relative_ and _absolute_ orientations.

Once those orientations were complete, _Digi3D_ let the operator view the model as if using an analytical stereoplotter. Whenever the operator moved the model, _Digi3D_ sent coordinates through a serial cable to another computer running _Digi21_.

For a time, _Digi3D_ and _Digi21_ were used together: operators had two computers, one running _Digi3D_ for stereoscopic viewing and another running _Digi21_ for geometry capture.

Eventually, _Digi3D_ and _Digi21_ merged into a single application called Digi3D.

There have been several versions: _Digi3D 2000_, _Digi3D 2002_, _Digi3D 2005_, _Digi3D 2007_ and, finally, _Digi3D.AI_. This manual retains the distinction between the two original programs: it calls the photogrammetric window **Digi3D** and the drawing window **DigiNG** \(NG refers to the internal name Digi _Nueva Generación_, or New Generation\).

## Digi3D

_Digi3D_ loads _monoscopic_, _stereoscopic_ and _multiple-viewpoint_ models from various sources: Internet data services such as _Web Map Service_ and _Web Map Tile Service_, frame cameras, pushbroom sensors such as Leica ADS40/80, satellite images, orthophotos, stereo orthophotos \(generated from an orthophoto and a digital surface model and/or digital terrain model\), dense point clouds, etc.

_Digi3D_ connects to many 3D devices, including handwheels, topo-mouse, soft-mouse, Stealth3DMouse, standard mice and multiple simultaneous mice.

_Digi3D_ supports stereoscopic viewing systems such as _anaglyph_, professional _page-flipping_ stereo, _Planar 3D_, passive glasses, autostereoscopic monitors and stereoscopes.

It loads multiple image formats, including BigTIFF, GeoTIFF, JPG, JPG2000, ECW, MrSID and NTv2.

## DigiNG

**DigiNG** is the application for capturing and editing mapping information.

DigiNG provides more than 300 commands designed for photogrammetric compilation and map editing. They digitize lines, points, text, polygons and complex entities, and add metadata in databases.

DigiNG has a _snapping_ system (searching for entities or points on entities) in which you can configure an automated, code-based search mode plan.

It supports intelligent entity searches using numerous criteria.

It performs geometric and topological analyses.

It creates orthophotos.

It works with numerous graphic formats \(binary, double-precision binary, AutoCAD _\*.dwg_, MicroStation v8 _\*.dgn_, ESRI Shapefiles _\*.shp_, Geomedia Access Datawarehouse _\*.mdb, PostGis, etc._\) without importing and/or exporting.
