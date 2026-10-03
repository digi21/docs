# PONER\_XY

Coloca dos textos numéricos con los valores de las coordenadas X,Y del punto que selecciones.

## Parámetros

No admite parámetros.

## Observaciones

Esta orden se utiliza para rotular las coordenadas de las cruces de la cuadrícula utilizada en un fichero de dibujo.

La orden muestra los dos textos en el cursor y los almacena al registrar un punto:

* El texto `Y=<valor>` se sitúa desplazado en X la [distancia activa](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) respecto del punto, con la rotación del [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md).
* El texto `X=<valor>` se sitúa desplazado en Y la distancia activa respecto del punto, con la rotación del ángulo activo más 90º.

Los dos textos tienen la altura de [AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md), la justificación de [JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) y el número de decimales de [NDEC](/digi3d-ai/referencia/ventana-de-dibujo/variables/n/ndec.md). Se almacenan con el código activo.

## Características de la orden

| Tipo de orden | [Orden interactiva](poner-xy.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {E3808668-1118-4353-85B8-BEA3F4299DA1} |

