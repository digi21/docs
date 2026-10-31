# Modifying existing geometry
<!-- id: modificando-geometria-existente -->
<!-- origen: 92b6af61a32af307cb0ab4f8d8724b4dc1bcb8b4 -->

Follow these steps to **modify existing geometry**:

1. **Draw** geometry similar to that in the video by **clicking** the drawing window with the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
2. **Display** the [Modify toolbar](/digi3d-ai/referencia/barras-de-herramientas/modifica.md). If it is not active, click [here](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/barras-herramientas-basicas.md) to learn how to display it. Its buttons are disabled; they are enabled only while you are digitizing a polyline.
3. **Snap** to the section you want to modify on the original polyline with the [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers), and **draw** the new geometry for that line.
4. Without finishing the line, **click** [Modify an existing polyline](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md) on the [Modify toolbar](/digi3d-ai/referencia/barras-de-herramientas/modifica.md).
5. In the lower left corner, **Digi3D.AI** indicates that [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md) is running. The polyline is modified automatically.

The difference between [Modify an existing polyline](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md) and [Modify an existing polyline in X,Y,Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md) is:

* **Modify an existing polyline**: does not retain the Z coordinates of the vertices you entered. It interpolates their Z coordinates from the Z values at the start and end of the section being modified. Command: [MOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod.md).
* **Modify an existing polyline in X,Y,Z**: retains the Z coordinates of the newly digitized vertices. Command: [MOD\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mod-z.md).

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Modificando%20una%20polilinea%20existente.mp4" caption="" type="video/mp4"></video>
