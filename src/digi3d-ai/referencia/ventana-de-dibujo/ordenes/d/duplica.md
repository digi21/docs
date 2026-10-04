# DUPLICA
<!-- id: duplica -->

Duplica una entidad respetando su código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 y siguientes | [Tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) que se pueden seleccionar, como letras en uno o varios parámetros: `L P` equivale a `LP` | Si |

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
| Órdenes relacionadas | [COPIA\_R](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-r.md)<br>[COPIA2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copia-2p.md)<br>[COPIAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/copiar.md)<br>[DUP](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/dup.md) |
| Nombre interno | {943FDA58-03D0-4293-87BC-FA4EF1F7B19C} |

