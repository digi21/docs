# Digitizing vertices with different Z coordinates
<!-- id: digitalizando-vertices-distinta-coordenada-z -->
<!-- origen: 0c0b0f6d55e3e41a1aaf70d5ac117b003073a5c2 -->

Digitize vertices with different Z coordinates by entering coordinates. Follow these steps:

1. Find the [Coordinates toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md). If it is not visible, click [here](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/barras-herramientas-basicas.md) to learn how to display it.
2. **Click** the third button on the [Coordinates toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md). It runs [XY](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/x/xy.md), which lets you enter coordinates with different Z values.
3. **Enter** the following coordinates: 0 0 0, 100 100 10 and 200 0 0, and click **OK**.
4. **Finish** [LINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) with the mouse.
5. Check that a polyline with the three vertices you entered has been created in the drawing window.
6. **Select** search mode **4. Nearest vertex in XYZ** on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
7. **Snap** near each vertex and check its Z coordinate in the first window on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).

Follow these steps to digitize vertices with different Z coordinates using the input device:

1. **Find** the [Z coordinate toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenada-z.md). If it is not visible, click [here](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/barras-herramientas-basicas.md) to learn how to display it.
2. **Click** the first button on the [Z coordinate toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenada-z.md). This corresponds to [Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md).
3. **Enter** a Z coordinate in the window at the lower right of the message bar, for example Z=100.
4. Press **Enter** to accept.
5. **Find** the [Coordinates toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md). If it is not visible, click [here](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/barras-herramientas-basicas.md) to learn how to display it.
6. Check in the first window on the [Coordinates toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md) that Z has changed to 100 m.
7. **Digitize** a polyline by clicking the drawing window. Every vertex of the polyline will have a Z coordinate of 100 m.

Follow these steps to digitize a polyline whose vertices have different Z values:

1. **Digitize** the polyline's first segment using the current Z coordinate.
2. **Click** the first button on the [Z coordinate toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenada-z.md) and enter 200 m as the new Z coordinate.
3. Press **Enter** and enter a new vertex.
4. **Finish** the polyline with the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
5. **Check** that search mode **4. Nearest vertex in XYZ** is selected. Otherwise, select it from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
6. **Snap** to each vertex to see its Z coordinate.

Follow these steps to change the Z coordinate by snapping with a mode that includes Z:

Clicking the first button on the Z coordinate toolbar activates the second button, locking the Z coordinate \(the [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) variable\). This option is mainly used to digitize contour lines.

1. **Turn off** [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) \(the second button on the [Z coordinate toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenada-z.md)\).
2. **Select** search mode **2. Vertex or projection in XYZ** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list \(it changes Z when snapping\).
3. **Snap** to the middle of a segment digitized in the previous steps and **check**, in the first window on the [Coordinates toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md), that Z has changed. Vertices digitized after this snap will have the Z coordinate you just obtained.
   * If you select a search mode with Z, such as mode 3, and confirm the snap selection, the vertex is displayed with the segment's coordinate at the point where you snapped.
   * If you select a search mode without Z, such as mode 0, check that the active Z coordinate retains its value from before the snap. If you snap to another point on the segment, the first window on the Snap toolbar shows that point's coordinate, but the active Z coordinate retains its value from before the snap.
4. **Select** search mode **4** and **snap** to the vertices of the polylines you digitized to check their Z coordinates.
5. **Click** the second button on the [Z coordinate toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenada-z.md) to activate [FIXZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md).
6. **Snap** to any entity and **check** that Z remains constant, even if the feature you snap to has a different Z value.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Digitalizando%20vertices%20con%20distinta%20coordenada%20Z.mp4" caption="" type="video/mp4"></video>
