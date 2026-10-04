# ALINEAR
<!-- id: alinear -->

Mueve los vértices cuya distancia a la línea virtual digitalizada sea inferior o igual al valor de la [distancia activa principal](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md).

![ALINEAR: los vértices de las líneas que están a menos de DA de la línea virtual 1-2 se proyectan sobre ella](../../../../../images/orden-alinear.svg)

## Parámetros

No admite parámetros.

## Observaciones

Esta orden se utiliza para alinear segmentos de líneas. El usuario digitaliza una línea virtual formada por dos puntos y se localizan todos los vértices cuya distancia a la línea sea inferior a la _distancia activa principal._ Modifica la posición de todos esos vértices y los proyecta contra esa línea virtual.

## Características de la orden

| Tipo de orden | [Orden interactiva](alinear.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Alinear los vértices de líneas \(2 puntos\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asignada ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md) — distancia activa<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | No tiene órdenes relacionadas |
| Nombre interno | {DA40261D-4120-4d7b-8D1E-B8EC7423D95D} |

