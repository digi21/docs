# LINEA

Dibuja una línea en el archivo actual.

## Parámetros

| Variable | Definición |
| :--- | :--- |
| [INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) | Distancia entre puntos consecutivos. Se establece bien en el cuadro de diálogo Nuevo Proyecto Digi, o bien con la orden _INC_ |
| [TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) |
| [TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) |

Cuando se está dibujando una línea, se puede enganchar con otra entidad ya digitalizada mediante el pedal/botón de Tentativo. La modalidad de enganche se elige con la orden [MODOB](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/modob.md).

Es posible utilizar otras órdenes de digitalización de forma integrada con el dibujado de líneas.

## Observaciones

No es necesario ejecutar esta orden para dibujar una línea, pues basta con seleccionar un código definido para una entidad linal, y pulsar sobre Dato para dibujar una línea.

Esta orden solicita puntos hasta que pulses la tecla Esc o el pedal/botón de finalizar entidad \(o ejecutar [FIN\_ENT](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/fin-ent.md) para dejar de ejecutar esta orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](linea.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Polilínea |
| Barra de herramientas en la que aparece la orden | Polilíneas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[C](/digi3d-ai/referencia/ventana-de-dibujo/variables/c/c.md) — cierra automáticamente la línea al finalizarla<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[DISTANCIA\_MAXIMA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/distancia_maxima.md) — tamaño máximo de segmento permitido en la orden línea<br>[EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md) — equidistancia de curvas de nivel<br>[FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) — fija la coordenada Z al múltiplo de la equidistancia<br>[G](/digi3d-ai/referencia/ventana-de-dibujo/variables/g/g.md) — activa o desactiva la generalización<br>[INC](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/inc.md) — incremento de registro activo<br>[IR\_PRINCIPIO](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir-principio.md) — a dónde se desplaza la ventana fotogramétrica al finalizar una línea<br>[IR\_TENTATIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/i/ir_tentativo.md) — al tentativar, el restituidor se desplaza a las coordenadas tentativadas<br>[MAXPUNTOS](/digi3d-ai/referencia/ventana-de-dibujo/variables/m/maxpuntos.md) — número máximo de puntos de un tipo de entidad<br>[P](/digi3d-ai/referencia/ventana-de-dibujo/variables/p/p.md) — dibuja una paralela automáticamente al terminar la entidad<br>[S](/digi3d-ai/referencia/ventana-de-dibujo/variables/s/s.md) — suaviza automáticamente la línea al finalizarla<br>[TENTATIVO\_FIN](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tentativo-fin.md) — finaliza el registro al aceptar un tentativo sobre otra entidad<br>[TIPO\_DE\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tipo-de-z.md) — manera de registrar la coordenada Z de los vértices<br>[TOL](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol.md) — factor de tolerancia en la generalización<br>[TOL\_ANG](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/tol-ang.md) — factor de tolerancia angular en la generalización<br>[Z](/digi3d-ai/referencia/ventana-de-dibujo/variables/z/z.md) — valor de la coordenada Z activa |
| Nombre interno | {57BADF4C-82D5-4522-8C91-327C628327AC} |

