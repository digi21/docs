# MOVER

Cambia la posición de una o varias entidades en X, Y y Z.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Tipos de entidad que se pueden seleccionar, una letra por parámetro: `L` líneas, `P` puntos, `T` textos, `B` imágenes, `H` polígonos, `C` líneas y puntos, `*` líneas, puntos, textos e imágenes | Si. Si no se especifica ningún parámetro, se puede seleccionar cualquier tipo de entidad |

## Observaciones

1. Selecciona la entidad. El punto de selección se toma como punto origen. Si seleccionas varias entidades, digitaliza después el punto origen.
2. Digitaliza el punto destino.

La orden desplaza las entidades el vector \(punto origen, punto destino\), incluida la diferencia de Z. Solo se pueden mover entidades del modelo actual.

## Características de la orden

| Tipo de orden | [Orden interactiva](mover.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Mover en XYZ las entidades seleccionadas |
| Barra de herramientas en la que aparece la orden | Mover |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {4FB4DD41-80C4-47e6-AD51-0B2F5C841DE0} |

