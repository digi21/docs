# Disabling snap verification
<!-- id: deshabilitando-verificacion-tentativo -->
<!-- origen: bb60501e8f6d4d14d52a68846b6370559976f0e1 -->

Follow these steps to disable snap verification:

1. **Draw** a line by **clicking** the drawing window with the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). **Finish the line** with the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
2. **Snap** to the line with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). **Digi3D.AI** animates the selected line and asks for confirmation in the lower left corner before snapping to it. To **accept**, click the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers); to **cancel**, click the mouse's [cancel button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
3. **Display** the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
4. **Find** the **Verify** variable's button on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) (its icon is a V). The button is normally active, so Digi3D.AI asks for confirmation when you select an entity to snap to.
5. **Disable** Verify by clicking its button on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md).
6. **Snap** to a line with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). With Verify disabled, **Digi3D.AI** does not ask for confirmation and automatically inserts the first vertex found using the active search mode.

One drawback of disabling Verify is that snapping and searching become the same operation:

* You trigger a snap while drawing a [line](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md), or when **Digi3D.AI** is in [ready mode](/digi3d-ai/referencia/ordenes/formas-de-ejecutar-una-orden/de-manera-automatica/modo-preparado.md) and you want to insert a vertex at specific coordinates. Click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to trigger the snap.
* If Verify is disabled and you run [Delete selected entities](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-e.md), the command asks you to **select** the entity to delete. Place the cursor over that entity and click the mouse's [data button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) or [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) to search for it. **Digi3D.AI** deletes the first entity it finds, which may not be the one you want. You would then need to [Undo](/digi3d-ai/referencia/barras-de-herramientas/deshacer.md) and find the entity manually.
* With **Verify** enabled, you can choose the entity to delete by clicking the [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) until the desired entity is selected.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Deshabilitando%20la%20verificacion%20de%20tentativo.mp4" type="video/mp4"></video>
