# Drawing your first lines
<!-- id: dibujando-primeras-lineas -->
<!-- origen: 02658546d6b19a17485fe3061dc195abdb226ee8 -->

Get to know the mouse buttons:

| Button | Description |
| :--- | :--- |
| Left button | Enters coordinates |
| Middle button | Searches for a coordinate \(snap\) |
| Right button | Finishes or cancels the command |

Follow these steps to draw your first line:

1. Select a linear code in the [Code toolbar](/digi3d-ai/referencia/barras-de-herramientas/codigo.md) by clicking the arrow next to the binoculars, for example _010123 LIMITE PROVINCIAL_.
2. **Click** the drawing window to capture the mouse if moving the cursor over the Digi3D.AI drawing window does not display a crosshair or coordinates in the [Coordinates toolbar](/digi3d-ai/referencia/barras-de-herramientas/coordenadas.md).
3. Click the drawing window with the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). If the active code is linear, Digi3D.AI automatically runs the [**LINE**](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) command.

   The message bar is at the bottom of Digi3D.AI and has two panes:

   * The left pane displays the name of the running command. If no command is running, it displays **Ready**.
   * The right pane displays messages from the running command.

4. After entering the line's first point, check that Digi3D.AI displays LINE in the message bar's left pane. In the right pane, LINE asks you to digitize the next point.
5. Click the drawing window with the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to digitize the next point. You can digitize as many vertices as you want: although the command is called LINE, it draws polylines.
6. Click the drawing window with the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to **finish** LINE.

If you enter a single vertex and click the [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) before entering a second vertex, no entity is stored.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Dibujando%20nuestras%20primeras%20lineas.mp4" caption="" type="video/mp4"></video>
