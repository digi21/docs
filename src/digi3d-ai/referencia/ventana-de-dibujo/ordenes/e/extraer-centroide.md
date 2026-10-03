# EXTRAER\_CENTROIDE

Dibuja el centroide del polígono o la línea que se seleccione.

## Parámetros

No admite parámetros.

## Observaciones

La orden solo admite polígonos y líneas cerradas; si seleccionas otra entidad, emite un sonido de error. También admite una selección múltiple, en la que ignora las entidades que no sean polígonos ni líneas cerradas.

El centroide es un texto situado en un punto interior de la entidad, con los códigos de la entidad y con el nombre de su primer código como contenido. Su ángulo, su altura y su justificación son los valores de las variables AA, AT y JT.

## Características de la orden

| Tipo de orden | [Orden interactiva](extraer-centroide.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Dibujar/Centroides/De entidad seleccionada |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — establece el valor del ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — establece la altura de los textos<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — cambia la justificación del texto al insertarlo |
| Órdenes relacionadas | [EXTRAER\_CENTROIDES\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/extraer-centroides-cod.md) |
| Nombre interno | {02D3E905-EBA1-4F09-945F-63B8FCDA64C3} |
