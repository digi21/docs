# PONER\_COD\_RECINTO\_CENTROIDE
<!-- id: poner-cod-recinto-centroide -->

Añade el código de recinto a las entidades que forman el contorno de los recintos topológicos seleccionados y, además, inserta en el centroide del recinto un texto con el código de centroide.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de recinto | Código que se añade a las entidades del contorno | No |
| 2 | Código de centroide | Código del texto que se inserta en el centroide | No |

## Observaciones

Si faltan parámetros, la orden muestra el aviso «Faltan parámetros» y termina.

Esta es una orden de inundación: actúa sobre los recintos en los que haces clic, y necesita una topología para inundación cargada en memoria. Antes de ejecutarla, genera esa topología con [GENERAR\_TOPOLOGIA\_INUNDACION](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion.md) o [GENERAR\_TOPOLOGIA\_INUNDACION\_SIN\_ISLAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/g/generar-topologia-inundacion-sin-islas.md), y vuelve a generarla si has modificado las líneas del dibujo. Si los parámetros están completos y no hay topología para inundación, la orden muestra el aviso «No hay ninguna topología temporal creada», emite el sonido de error y termina.

Al ejecutarse, la orden establece el código de centroide como código activo.

La selección de recintos funciona igual que en la orden [PONER\_ATR\_R](poner-atr-r.md): botón de datos para seleccionar, Ctrl para añadir o quitar recintos, tentativo para sustituir el último recinto seleccionado por el siguiente que contiene el punto y que no está ya seleccionado (si no hay ninguno, el último recinto sale de la selección y la orden emite el sonido de error), reset para deseleccionar y Esc para cancelar. Pulsa la barra espaciadora para aceptar la selección.

Al aceptar, la orden añade el código de recinto a cada entidad del contorno exterior de los recintos seleccionados e inserta un texto en el centroide del primer recinto seleccionado. El texto tiene como contenido y código el código de centroide, y la altura, justificación y rotación de las variables [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](poner-cod-recinto-centroide.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ANADE\_CODIGOS\_ACTIVOS\_Y\_CENTROIDE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/a/anade-codigos-activos-y-centroide.md)<br>[BORRA\_COD\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/borra-cod-r.md)<br>[EDITAR\_CODIGOS\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/editar-codigos-r.md)<br>[PONER\_ATR\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/poner-atr-r.md) |
| Nombre interno | {62ECF8AD-EEFD-409D-A358-C1E7C5928950} |
