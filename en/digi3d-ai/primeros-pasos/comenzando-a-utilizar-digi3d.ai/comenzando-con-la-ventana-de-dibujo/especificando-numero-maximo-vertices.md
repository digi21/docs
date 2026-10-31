# Specifying the maximum number of vertices in a polyline
<!-- id: especificando-numero-maximo-vertices -->
<!-- origen: b31d257a7ad2b1f4cac9ae134b6defbaeb9eae66 -->

Follow these steps to specify the **maximum number of vertices in a polyline**:

1. **Select** _050146 EDIFICIO PRIVADO_ from the [Code toolbar](/digi3d-ai/referencia/barras-de-herramientas/codigo.md) drop-down list.
2. **Draw** a building with mutually orthogonal sides, as described in [Digitizing features orthogonal to a specified angle](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/digitalizando-elementos-ortofonales-angulo.md).
3. **Display** the [Polyline restrictions toolbar](/digi3d-ai/referencia/barras-de-herramientas/restricciones-de-polilinea.md). If it is not active, click [here](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/barras-herramientas-basicas.md) to learn how to display it.
4. **Click** the third button on the [Polyline restrictions toolbar](/digi3d-ai/referencia/barras-de-herramientas/restricciones-de-polilinea.md), [Maximum number of points](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md), to set the maximum number of points in the polyline you are digitizing.
5. In **Enter a value**, specify the **maximum number** of points in the polyline, for example **2**.
6. Click **OK**.
7. **Digitize** a polyline in the drawing window and check that it finishes automatically when it reaches two vertices.
8. **Click** [Maximum number of points](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) on the [Polyline restrictions toolbar](/digi3d-ai/referencia/barras-de-herramientas/restricciones-de-polilinea.md) to **turn it off**.
9. **Draw** a polyline by **clicking** the drawing window. With the point limit disabled, the polyline can have as many vertices as you want. Click the [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to finish it.
10. **Turn on** [Maximum number of points](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) and set the **maximum number** of points to **5**.
11. **Draw** a polyline with more than 5 vertices and check that it finishes automatically when it reaches 5.
12. Even with [Maximum number of points](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) active, you can digitize polylines with fewer points than the specified maximum. Try digitizing a polyline with 3 vertices, then click the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to finish the command.

The maximum number of points is often specified when drawing party wall lines:

1. **Check** that [Maximum number of points](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) is disabled on the [Polyline restrictions toolbar](/digi3d-ai/referencia/barras-de-herramientas/restricciones-de-polilinea.md).
2. **Select** _050324 MEDIANERIAS_ from the [Code toolbar](/digi3d-ai/referencia/barras-de-herramientas/codigo.md) drop-down list.
3. **Select** _5. Projection or vertex in XYZ_ from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
4. **Click** one side of the building with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
5. **Accept** with the [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
6. Move the cursor to the opposite side of the building and **select** that side with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
7. **Click** the [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to accept.
8. **Click** the [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to finish the command and digitize the party wall line.

Follow these steps to simplify the process:

1. **Disable** Verify on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) by clicking it.
2. **Click** one side of the building with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). Since Verify is disabled, the snap is confirmed automatically.
3. **Place the cursor** on the opposite side of the building and **click** it with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
4. Click the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to finish the command.

You can simplify the process even further:

1. Set the **maximum number of vertices** to **2** \(party wall lines always have two vertices\) by clicking [Maximum number of points](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) on the [Polyline restrictions toolbar](/digi3d-ai/referencia/barras-de-herramientas/restricciones-de-polilinea.md).
2. **Check** that **Verify** is disabled on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
3. **Click** one side of the building with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
4. Move to the opposite side and **snap** to it with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
   * You have digitized a line with just two mouse clicks.

## Notes

Running the code command automatically disables the maximum number of points variable. Click [here](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cod.md) for more information about the code command.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Especificando%20el%20numero%20maximo%20de%20vertices%20en%20una%20polilinea.mp4" caption="" type="video/mp4"></video>
