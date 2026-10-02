# PUNTEAR

Rellena el interior de una entidad superficial de contorno cerrado con una trama de puntos.

![RAYAR, TRAMAR, PUNTEAR y SIMB sobre el mismo contorno cerrado](../../../../../images/tramas.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

Sin parámetros, la orden pide que selecciones la línea cerrada que se va a rellenar. Con códigos, rellena todas las líneas cerradas visibles de esos códigos y termina.

## Observaciones

Los puntos se sitúan en los cruces de las rayas que generaría [TRAMAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/tramar.md):

* En la dirección del [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), los puntos están separados por la distancia activa principal.
* En la dirección perpendicular, están separados por la distancia activa secundaria.

Las dos distancias se asignan con [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md). Solo se añaden los puntos que quedan dentro del contorno, con el código activo y con Z = 0. El código activo debe ser un código de entidad puntual.

## Características de la orden

| Tipo de orden | [Orden interactiva](puntear.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Más/Rellenar polígonos con una trama |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {EED3B1FD-0000-4c24-BBF9-33DEC81BF1D0} |

