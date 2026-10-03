# BINPLT

Explota la simbología con la escala configurada en la pestaña Archivo de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

La orden recorre las líneas del archivo de dibujo activo. Para cada línea dibuja la simbología del estilo asociado a su primer código con la escala de la variable [ESCALA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md). Cada trazo de la simbología se añade como una línea nueva con los códigos de la línea original, y la línea original se borra. Las líneas cuyo estilo no genera trazos se quedan como estaban. Los puntos, textos y demás entidades no se modifican. Para convertir en líneas el símbolo de los puntos, utilice la orden [EXPLOTAR\_PUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](binplt.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [ESCALA\_DIBUJO](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/escala-dibujo.md) |
| Órdenes relacionadas | [EXPLOTAR\_PUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/explotar-puntos.md) |
| Nombre interno | {C08928A2-D95D-499D-AFDF-A552FBEAA5E1} |
