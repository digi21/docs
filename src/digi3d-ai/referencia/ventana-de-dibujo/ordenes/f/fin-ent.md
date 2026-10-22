# FIN\_ENT
<!-- id: fin-ent -->

Finaliza la línea que se está dibujando.

## Parámetros

No admite parámetros.

## Observaciones

La orden actúa sobre la orden de dibujo activa, que tiene que admitir ser finalizada. La admiten [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md), POL, SPLINE, TRIM\_M, SELECCIONA\_POLIGONO, SELECCIONA\_DENTRO\_POLIGONO y SELECCIONA\_FUERA\_POLIGONO. Si no hay ninguna orden activa, o la orden activa no admite ser finalizada, suena el aviso de error y no ocurre nada más.

Con la orden LINEA:

* Si la línea solo tiene un punto, no se almacena y la orden LINEA termina.
* Si tiene dos o más, antes de almacenarla se suaviza si la variable [S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) está activada, se generaliza si lo está [G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) y se cierra si lo está [C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md). Después se eliminan los puntos duplicados.
* Si la variable [P](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/p.md) está activada, se almacena además una copia paralela a la distancia indicada en [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md).
* La orden LINEA sigue activa con el mismo código, así que el siguiente punto empieza una línea nueva.

Para finalizar la línea cerrándola, usa [CIERRA\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md).

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Finalizar la línea que estás dibujando |
| Barra de herramientas en la que aparece la orden | Finalización de polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CIERRA\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cierra-ent.md)<br>[LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) |
| Nombre interno | {A72F081C-713C-4cc4-B266-9C0772843DA1} |

