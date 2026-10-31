# Patterns also affect lines
<!-- id: patron-afecta-lineas -->
<!-- origen: eb09c6fe92926526c25dbdd7bf1b861a7fe557e6 -->

In Digi3D.AI, [PATTERN](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/patron.md) displays the entities stored in the drawing file using the representation specified in the code table. This applies to both point and linear entities.

Follow these steps to see different examples:

1. Run **PATTERN=1** in the command bar or click this variable's button on the [Viewing parameters toolbar](/digi3d-ai/referencia/barras-de-herramientas/parametros-visualizacion.md).
2. Select _010123 LIMITE PROVINCIAL_ on the [Code toolbar](/digi3d-ai/referencia/barras-de-herramientas/codigo.md).
3. Draw a **line** with this code to see its representation while PATTERN is active.
4. Select _060142 SENDA_ on the **Code toolbar** and draw another **line**.
5. Switch to _050146 EDIFICIO PRIVADO_ in the same way.
6. Draw a **line** with _050146 EDIFICIO PRIVADO_. This code has no representation assigned, so turning **PATTERN** on or off does not change the line's representation.

**Digi3D.AI** does not store the representation or color in the drawing file. It stores only points and polylines, the entities' codes and the vertices that define them. When displaying entities, Digi3D.AI calculates their representation from the active [code table](/digi3d-ai/referencia/editor-de-tablas-de-codigos/). Changing the representation settings in the code table changes how the drawing file's entities are displayed.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/El%20patron%20tambien%20afecta%20a%20las%20lineas.mp4" caption="" type="video/mp4"></video>
