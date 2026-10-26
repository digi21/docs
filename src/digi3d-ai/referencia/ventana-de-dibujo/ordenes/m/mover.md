# MOVER
<!-- id: mover -->

Cambia la posición de una o varias entidades en X, Y y Z.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | [Tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) que se pueden seleccionar, como letras en uno o varios parámetros: `L P` equivale a `LP` | Sí. Si no se especifica ningún parámetro, se puede seleccionar cualquier tipo de entidad |

## Observaciones

1. Selecciona la entidad. El punto de selección se toma como punto origen. Si seleccionas varias entidades, digitaliza después el punto origen.
2. Digitaliza el punto destino.

La orden desplaza las entidades según el vector \(punto origen, punto destino\), incluida la diferencia de Z. Solo se pueden mover entidades del modelo actual.

Si el control de calidad descarta la entidad movida, la entidad original se conserva sin cambios. Si hay varias entidades seleccionadas, la orden trata cada entidad de forma independiente: conserva la versión original de cada entidad cuyo desplazamiento se descarte y mueve las demás entidades.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | Sí |
| Opción del menú donde aparece la orden | Editar/Mover en XYZ las entidades seleccionadas |
| Barra de herramientas en la que aparece la orden | Mover |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [DESPLAZAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/desplazar.md)<br>[MOVER\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/mover-z.md) |
| Nombre interno | {4FB4DD41-80C4-47e6-AD51-0B2F5C841DE0} |

