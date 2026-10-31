# Drawing window
<!-- id: ventana-dibujo -->
<!-- origen: 53a1fe5da5fa5ac45f36176b3c50b833e95c9d6f -->

The drawing window has an assigned coordinate reference system. This system determines the behavior of these functions:

1. Geometries are displayed in the drawing window's coordinate reference system.
2. Coordinates shown in the [Coordinates](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md) toolbar and entered in commands such as [XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md) use the drawing window's coordinate reference system units.
3. Commands displaying distances and areas use the _drawing window's coordinate reference system_ units if the system is _projected_. If the system is _geographic_, distances are always displayed in meters and areas in square meters.

The drawing window displays drawing files. Each drawing file has an assigned coordinate reference system that can differ from the drawing window's (except when loading an orthophoto as a reference file in a drawing window) and from other loaded reference drawing files. Thus, if files _A_, _B_ and _C_ are loaded, each can have a coordinate reference system different from the drawing window's.

If a photogrammetric window is open, the drawing window sends geometries to it for display. As explained in [Photogrammetric window](/digi3d-ai/sistemas-referencia-coordenadas/implementacion-src-modulos-digi3d/ventana-fotogrametrica/), the photogrammetric window can have its own coordinate reference system.
