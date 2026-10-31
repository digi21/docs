# Introduction to search modes
<!-- id: introduccion-modos-busqueda -->
<!-- origen: d139581c759be8c1f1a16181b7359af79191f931 -->

Follow these steps to explore some of **Digi3D.AI's search modes**:

1. Draw a zigzag line by clicking the drawing window with the mouse's data button.
2. Display the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md). If it is not active, click [here](/digi3d-ai/primeros-pasos/comenzando-a-utilizar-digi3d.ai/comenzando-con-la-ventana-de-dibujo/barras-herramientas-basicas.md) to learn how to display it.
3. Open the drop-down list in the second window on the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md). This window lets you select different search modes.
4. Change the cursor's search range using the Change cursor size button's drop-down list on the Snap toolbar.

Search mode **0. Vertex or projection in XY**: finds a vertex or projection within the cursor's search range.

1. **Select** **0. Vertex or projection in XY** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
2. Place the cursor near a line vertex and select the vertex with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers).
   * If you move to an area without a vertex and click the middle mouse button, **Digi3D.AI** finds the projection.
   * If you click the middle mouse button in an area with neither a vertex nor a projection, **Digi3D.AI** sounds an error.

Search mode **1. Projection or vertex in XY**: Digi3D.AI prioritizes and selects projections even if a vertex is within the snap's search range.

1. **Select** **1. Projection or vertex in XY** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
   * If you move to an area with a vertex and the search range also includes a projection, clicking the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) makes Digi3D.AI select the projection.
   * To select a vertex, move the cursor to an area where Digi3D.AI can only select that vertex.

Search mode **2. End vertices of the entity in XYZ**: selects an entity only if its start or end point is within the snap's search range.

1. **Select** **2. End vertices of the entity in XYZ** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
2. **Place the cursor** near the start or end of the line you drew and click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). Check that **Digi3D.AI** selects the line's first or last vertex.
3. Try snapping to another part of the line. Check that **Digi3D.AI** sounds an **error**, because neither the entity's first nor last vertex is within the search range there.

Search mode **3. Vertex or projection in XYZ**: equivalent to mode 0, Vertex or projection in XY, but takes Z into account.

Search mode **4. Nearest vertex in XYZ**: finds the vertex nearest to where you snapped.

1. **Select** **4. Nearest vertex in XYZ** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
2. **Snap** to the line and check that each click of the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) snaps to the vertex nearest the cursor, even if it is outside the search range.

Search mode **6. End vertices at the cursor Z in XYZ**: finds end vertices if the active Z coordinate matches the entity's Z coordinate. You will explore this search mode later.

Search mode **11. Intersection of two lines**: finds the intersection point of two entities.

1. Draw a line that crosses the first line you drew.
2. **Select** **11. Intersection of two lines** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
3. **Position** the cursor's search range near the intersection of the two lines and click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers). **Digi3D.AI** snaps to their intersection point.
   * If **Digi3D.AI** finds no intersection point within the cursor's search range when you click the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers), it sounds an error.

Search mode **13. Entity center in XY**: selects the center of the selected entity.

1. **Select** **13. Entity center in XY** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
2. **Click** a drawn entity with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) and check that Digi3D.AI selects its center.

Search mode **15. First vertex of the entity in XY**: selects the selected entity's first vertex.

1. **Select** **15. First vertex of the entity in XY** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
2. Select an entity with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) and check that its first vertex is selected. Try selecting different positions on the entity to see the result.

Search mode **17. Last vertex of the entity in XY**: selects the selected entity's last vertex.

1. **Select** **17. Last vertex of the entity in XY** from the [Snap toolbar](/digi3d-ai/referencia/barras-de-herramientas/tentativo.md) drop-down list.
2. Select an entity with the mouse's [snap button](/digi3d-ai/referencia/cuadros-de-dialogo/programar-botones.md#mouse-button-numbers) and check that its last vertex is selected. Try selecting different positions on the entity to see the result.

Search mode **19. Lowest Z vertex in XY**: this search mode will be covered once you are familiar with the Z coordinate.

Search mode **20. Lowest Z vertex in XYZ**: this search mode will be covered once you are familiar with the Z coordinate.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/Introduccion%20a%20los%20modos%20de%20busqueda.mp4" caption="" type="video/mp4"></video>
