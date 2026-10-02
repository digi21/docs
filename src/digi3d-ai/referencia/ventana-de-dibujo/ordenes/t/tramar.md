# TRAMAR

Trama el interior de una entidad superficial de contorno cerrado.

![RAYAR, TRAMAR, PUNTEAR y SIMB sobre el mismo contorno cerrado](../../../../../images/tramas.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código o códigos (uno o más, separados por espacios) | Si |

Sin parámetros, la orden pide que selecciones la línea cerrada que se va a tramar. Con códigos, trama todas las líneas cerradas visibles de esos códigos y termina.

## Observaciones

El tramado se compone de dos familias de rayas, que dependen del [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) y de las dos distancias activas que se asignan con [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md):

* Las rayas de la primera familia son perpendiculares al ángulo activo y están separadas por la distancia activa principal.
* Las rayas de la segunda familia siguen la dirección del ángulo activo y están separadas por la distancia activa secundaria. Son las mismas que genera [RAYAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rayar.md).

Solo se añaden los tramos de raya que quedan dentro del contorno. Las rayas se añaden con el código activo y con Z = 0.

## Características de la orden

| Tipo de orden | [Orden interactiva](tramar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Mas/Rellenar polígono con una trama |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {D5791ADD-DD21-4523-9A26-04F3AAAA2D4F} |

