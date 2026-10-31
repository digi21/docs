# Telling snapping to keep searching
<!-- id: indicar-tentativo-seguir-buscando -->
<!-- origen: e28af43c1bdd77627bd319243ac86c3ed4d40e51 -->

Follow these steps to tell snapping to **keep searching** when running a command that asks you to select an entity:

1. Display the [Code toolbar](/digi3d-ai/referencia/barras-de-herramientas/codigo.md) and **select** _010123 LIMITE PROVINCIAL_ from the drop-down list.
2. **Draw** a line in the drawing window by **clicking** with the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). Finish the line with the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
3. **Select** _020123 CURVA DE NIVEL \(FINA\)_ in the same way.
4. **Draw** another line in the drawing window that crosses the first one.
5. Change the cursor size using **Change cursor size** on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
6. **Select** [Delete selected entities](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md) from **Edit/Delete selected entities** to delete the _020123 CURVA DE NIVEL \(FINA\)_ line. In the lower left corner, **Digi3D.AI** asks you to select the entity to delete.
7. Place the cursor where the two lines cross and click the **middle mouse button**. Notice that _010123 LIMITE PROVINCIAL_ is selected. To switch to the other entity, click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) again to select _020123 CURVA DE NIVEL \(FINA\)_. If that is the entity you want to delete, click the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to accept the command.
8. Check that if you click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) more times than there are entities **Digi3D.AI** can find, it sounds an **error**.
9. Press **Esc** or click the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to finish the command.

Follow these steps to tell snapping to keep searching when using search modes:

1. **Draw** the _020123 CURVA DE NIVEL \(FINA\)_ line deleted in the previous procedure again. Draw it near _010123 LIMITE PROVINCIAL_, without crossing it and with roughly the same length.
2. **Select** _0. Vertex or projection in XY_ on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
3. Click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) near one end of the two lines to snap to one of them. To snap to the other line, click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) again.
4. Click the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) and continue drawing the line.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Indicar%20al%20tentativo%20que%20siga%20buscando.mp4" caption="" type="video/mp4"></video>
