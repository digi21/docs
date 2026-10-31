# Automatically when the application is ready
<!-- id: de-manera-automatica -->
<!-- origen: c265fbee92e034ac7bc77bea7f7063200314db0c -->

Digi3D.AI runs commands automatically when both conditions are met:

* It is in [ready mode](modo-preparado.md).
* Boolean variable [AUTOMATIC](../../../ventana-de-dibujo/variables/a/automatico.md) is **True**.

Pressing the **Data** button or pedal then runs one or more commands and sends the data point coordinates to them.

Which commands run depends on whether the active code has commands assigned in the code table [**Commands (press data)**](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md) field.

* If commands are assigned, pressing Data runs them.
* Otherwise, the application runs [LINE](../../../ventana-de-dibujo/ordenes/l/linea.md) for **Line** or **Virtual** codes, or [POINT](../../../ventana-de-dibujo/ordenes/p/punto.md) for **Point** codes.
* If the active code is the one assigned in [COD_HEIGHTS](../../../ventana-de-dibujo/ordenes/c/cod-cotas.md), [HEIGHT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cota.md) runs automatically.

## Video

<video controls><source src="https://digi21.blob.core.windows.net/videos-ayuda/ejecutando_ordenes_manera_automatica.mp4" type="video/mp4"></video>
