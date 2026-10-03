# COPIAR

Realiza una copia de una entidad de dibujo.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1...n | Tipos de entidad que se pueden seleccionar, una letra por parámetro: `L` líneas, `P` puntos, `T` textos, `B` imágenes, `H` polígonos, `C` líneas y puntos, `*` líneas, puntos, textos e imágenes | Si. Si no se especifica ningún parámetro, se puede seleccionar cualquier tipo de entidad |

## Observaciones

1. Selecciona una o varias entidades.
2. Digitaliza el punto origen. Si la entidad seleccionada es un punto o un texto, el punto de selección se toma como punto origen.
3. Digitaliza el punto destino.

El programa genera entidades iguales a las originales, aplicando una traslación definida por el vector \(punto origen, punto destino\). Las nuevas entidades conservan los códigos de las originales. Si la variable [FORZAR\_CODIGO\_ACTIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) está activa, se crean con el código activo.

Si la variable [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) está activa, la orden sigue creando copias: el punto destino de cada copia es el punto origen de la siguiente.

## Características de la orden

| Tipo de orden | [Orden interactiva](copiar.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Copiar una entidad conservando su tamaño/orientación |
| Barra de herramientas en la que aparece la orden | Copiar y duplicar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo<br>[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos<br>[FORZAR\_AA\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — fuerza el ángulo activo (AA) en las entidades generadas<br>[FORZAR\_AT\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-at-activa.md) — fuerza la altura activa (AT) en las entidades generadas<br>[FORZAR\_CODIGO\_ACTIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) — fuerza el código activo en las entidades generadas<br>[FORZAR\_JT\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-jt-activa.md) — fuerza la justificación activa (JT) en las entidades generadas<br>[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto<br>[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {508365B4-4C21-4b58-A463-07D3083BC38D} |

