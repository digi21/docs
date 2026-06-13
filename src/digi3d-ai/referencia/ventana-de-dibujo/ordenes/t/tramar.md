# TRAMAR

Trama el interior de una entidad superficial de contorno cerrado.

## Parámetros

Si no se especifica ningún parámetro, el sistema toma por defecto los valores cero y uno para [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) respectivamente.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Ángulo activo | Número real | Si |
| 2 | Distancia activa | Número real | Si |

## Observaciones

El tramado se compone de un doble rayado cuya disposición depende de los valores que tengan asignados los parámetros [ángulo activo](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) y [distancia activa](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/DA.md).

El primer rayado tiene la dirección del ángulo activo, y las rayas se hayan separadas una distancia igual al valor de la distancia activa principal. El segundo tramado tiene una dirección perpendicular al primero, y sus rayas están separadas una distancia igual al valor de la distancia activa secundaria.

El conjunto de rayas que componen el tramado se representan con el código que estuviera activo al ejecutar la orden.

## Características de la orden

| Tipo de orden | [Orden interactiva](tramar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Mas/Rellenar polígono con una trama |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {D5791ADD-DD21-4523-9A26-04F3AAAA2D4F} |

