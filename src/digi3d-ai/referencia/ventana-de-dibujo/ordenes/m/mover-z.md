# MOVER\_Z

Permite cambiar la cota de una o varias entidades.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | [Tipos de geometría](/digi3d-ai/referencia/ventana-de-dibujo/tipos-de-geometria.md) que se pueden seleccionar, una letra por parámetro. En esta orden, `C` indica líneas y puntos, no complejos, y `*` indica líneas, puntos, textos e imágenes | Si. Si no se especifica ningún parámetro, se puede seleccionar cualquier tipo de entidad |

## Observaciones

Se utiliza para elevar o hundir entidades una distancia constante, respetando las diferencias de cota entre los puntos de la entidad.

1. Selecciona la entidad. El punto de selección se toma como punto origen. Si seleccionas varias entidades, digitaliza después el punto origen.
2. Digitaliza el punto destino. La orden suma a todos los vértices la diferencia de Z entre el punto destino y el punto origen; X e Y no cambian.

Si hay cargada una Triangulación de un Modelo Digital del Terreno \(MDT\), se puede modificar con esta orden la cota de los puntos de la triangulación.

## Características de la orden

| Tipo de orden | [Orden interactiva](mover-z.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Mover en Z las entidades seleccionadas |
| Barra de herramientas en la que aparece la orden | Mover |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {87DB0F7B-28B6-4b27-BF8C-220A4D91629B} |

