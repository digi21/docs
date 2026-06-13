# PUNTEAR

Rellena el interior de una entidad superficial de contorno cerrado con una trama de puntos.

## Parámetros

Si no se realiza ninguna asignación previa de [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md), el sistema toma por defecto los valores cero para estos parámetros.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal | Número real | Si |
| 2 | Distancia activa secundaria | Número real | Si |
| 3 | Ángulo activo | Número real | Si |
| 4 | Código activo | Código puntual | Si |

## Observaciones

La situación de los puntos coincidirá con las intersecciones de las rayas que se hubiesen obtenido al ejecutar la orden TRAMAR, de forma que podemos distinguir dos conjuntos de puntos:

* El primer conunto sigue la dirección del _ángulo activo_ y los puntos se hayan separados a una distancia igual al valor de la _distancia activa principal_.
* El segundo conjunto de puntos sigue la dirección perpendicular al primero y sus puntos están separados una distancia igual al valor de la _distancia activa secundaria_.

Los puntos de la trama se representan con el código que esté activo en el momento de ejecutar la orden. El código activo debe ser un código de entidad puntual.

## Características de la orden

| Tipo de orden | [Orden interactiva](puntear.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Dibujar/Más/Rellenar polígonos con una trama |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo  
[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa  
[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {EED3B1FD-0000-4c24-BBF9-33DEC81BF1D0} |

