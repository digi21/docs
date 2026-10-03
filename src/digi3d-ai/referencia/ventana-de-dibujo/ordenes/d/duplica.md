# DUPLICA

Duplica una entidad respetando su código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 y siguientes | [Tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) que se pueden seleccionar, una letra por parámetro. En esta orden, `C` indica líneas y puntos, no complejos, y `*` indica líneas, puntos, textos e imágenes | Si |

## Observaciones

La orden sólo requiere que selecciones la entidad. El nuevo elemento creado se superpone espacialmente al existente, con sus mismas características geométricas, de posición y de código.

Sin parámetros, la orden permite seleccionar líneas, puntos y textos.

La orden termina después de duplicar la entidad seleccionada. Si seleccionas varias entidades a la vez mediante una selección múltiple, la orden duplica todas ellas.

## Características de la orden

| Tipo de orden | [Orden interactiva](duplica.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Duplicar una entidad \(geometría y códigos\) |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {943FDA58-03D0-4293-87BC-FA4EF1F7B19C} |

