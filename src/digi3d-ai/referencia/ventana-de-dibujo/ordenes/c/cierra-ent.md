# CIERRA\_ENT
<!-- id: cierra-ent -->

Cierra la línea que se está ejecutando y la finaliza.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden actúa sobre la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) o [SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md) que está en curso. Cuando la ejecutas se añadirá un vértice a la línea con las mismas coordenadas que el primer vértice de la línea, si la línea no está ya cerrada, y la orden en curso finaliza la línea.

Con la orden SPLINE, la línea debe tener al menos tres puntos; si no los tiene, la orden emite un sonido de error y la línea no se cierra. Si la orden en curso no es ninguna de las dos, CIERRA\_ENT emite un sonido de error.

## Características de la orden

| Tipo de orden | [Orden inmediata](cierra-ent.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Cerrar la línea que se está dibujando |
| Barra de herramientas en la que aparece la orden | Finalización de polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CIERRA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra.md)<br>[FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md)<br>[LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md)<br>[SPLINE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/spline.md) |
| Nombre interno | {5910086A-4CA0-45d7-BF4B-4F3878E9AF30} |

