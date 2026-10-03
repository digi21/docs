# DUP

Realiza una copia de una entidad sobre sí misma.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 y siguientes | Tipos de entidad que se pueden seleccionar, una letra por parámetro: `L` líneas, `P` puntos, `T` textos, `H` polígonos, `B` imágenes, `C` líneas y puntos, `*` líneas, puntos, textos e imágenes | Si |

## Observaciones

La orden sólo requiere que selecciones la entidad. El nuevo elemento creado se superpone espacialmente al existente, con sus mismas características geométricas, de posición. La nueva entidad se generará con el código activo en el momento de ejecutar la orden.

Sin parámetros, la orden permite seleccionar líneas, puntos, textos y polígonos.

La orden termina después de duplicar la entidad seleccionada. Si seleccionas varias entidades a la vez mediante una selección múltiple, la orden duplica todas ellas.

## Características de la orden

| Tipo de orden | [Orden interactiva](dup.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Duplicar una entidad \(únicamente geometría\) |
| Barra de herramientas en la que aparece la orden | Copiar y duplicar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {ABF6F6D5-FE1F-46a7-A272-7648DAAB540C} |

