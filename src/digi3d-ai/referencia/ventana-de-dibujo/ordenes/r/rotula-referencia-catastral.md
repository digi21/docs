# ROTULA\_REFERENCIA\_CATASTRAL

Consulta al servicio web del Catastro de España la referencia catastral en las coordenadas de inserción e inserta un texto con la referencia catastral.

## Parámetros

No admite parámetros.

## Observaciones

La orden solicita un punto. El sistema de referencia de coordenadas de la ventana de dibujo debe tener código EPSG; si es un sistema local, la orden muestra un error.

Si el servicio devuelve una referencia catastral, la orden inserta en el punto un texto con la referencia, con la altura, la justificación y la rotación de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), y con el código activo. Si el servicio devuelve un error, la orden lo muestra en un mensaje.

## Características de la orden

| Tipo de orden | [Orden interactiva](rotula-referencia-catastral.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {C1CD9A73-605E-4715-A393-3B4E29D8AC0D} |
