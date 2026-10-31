# Drawing points, patterns and drawing scale
<!-- id: dibujando-puntos-patron-escala -->
<!-- origen: 813cea61e47a456b3cc53e08650eed4055c5e581 -->

1. Click the binoculars on the [Code toolbar](/digi3d-ai/referencia/barras-de-herramientas/codigo.md). The **Select codes** dialog appears, showing the codes in the table you selected when creating the drawing file:

| Column | Description |
| :--- | :--- |
| Code | Code name |
| Color | Code display color in the drawing window |
| Type | Linear<br>Point<br>Virtual |
| Description | Code description |

* If Digi3D.AI is in [ready mode](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md) and the active code is a [linear code](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#type), clicking the drawing window with the [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) automatically runs [**LINE**](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) and draws a polyline.
* If Digi3D.AI is in **ready mode** and the active code is a [point code](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md#type), clicking the drawing window with the **data button** runs [**POINT**](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/punto.md).

Follow these steps to digitize a point:

1. Make sure Digi3D.AI is in **ready mode**. Otherwise, press **Esc** or the [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) until Digi3D.AI is in **ready mode**.
2. Select a **point code**.
3. Click the drawing window with the **data button**. Digi3D.AI inserts a point at the coordinates where you clicked.

Follow these steps to turn on the graphical representation \(pattern\) of the point you just drew:

1. Run [**PATTERN**](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/patron.md) to display the representation of the point's code. To run the command, click the corresponding button on the [Viewing parameters toolbar](/digi3d-ai/referencia/barras-de-herramientas/parametros-visualizacion.md).

The scale at which patterns are displayed depends on the **Active scale** on the **Drawing file** tab of the [New project](/digi3d-ai/referencia/cuadros-de-dialogo/nuevo-proyecto/) dialog.

Follow these steps to change the display scale of the point you just digitized:

1. **Close** the drawing window.
2. Select **File/New/Open photogrammetric model or drawing file...** from the menu. The **New project** dialog appears.
3. Select the **Drawing file** tab.
4. Change **Configuration parameters/Recording/Scale** to change the scale.
5. Click **Accept**.
6. Turn on pattern display by clicking the button for the Pattern command on the **Viewing parameters toolbar**.
7. Repeat the process with different scale values to see the difference between them.

The **Scale** value affects only display; it does not affect entity registration.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Dibujando%20puntos%20y%20activacion%20de%20patron%20y%20funcion%20del%20parametro%20escala.mp4" caption="" type="video/mp4"></video>
