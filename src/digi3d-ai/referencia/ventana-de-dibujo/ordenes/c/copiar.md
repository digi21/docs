# COPIAR

Realiza una copia de una entidad de dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Punto origen | Coordenadas XYZ | Si |
| 2 | Punto destino | Coordenadas XYZ | Si |

## Observaciones

El programa genera una entidad igual a la original, pero aplicando en el proceso una translación definida por el vector \(punto origen, punto destino\). El nuevo elemento se dibuja con el código activo.

## Características de la orden

| Tipo de orden | [Orden interactiva](copiar.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Copiar una entidad conservando su tamaño/orientación |
| Barra de herramientas en la que aparece la orden | Copiar y duplicar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [AA](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/aa.md) — ángulo activo  
[AT](/digi3d-ai/referencia/ventana-de-dibujo/variables/a/at.md) — altura de los textos  
[FORZAR\_AA\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-aa-activa.md) — fuerza el ángulo activo (AA) en las entidades generadas  
[FORZAR\_AT\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-at-activa.md) — fuerza la altura activa (AT) en las entidades generadas  
[FORZAR\_CODIGO\_ACTIVO](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-codigo-activo.md) — fuerza el código activo en las entidades generadas  
[FORZAR\_JT\_ACTIVA](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/forzar-jt-activa.md) — fuerza la justificación activa (JT) en las entidades generadas  
[JT](/digi3d-ai/referencia/ventana-de-dibujo/variables/j/jt.md) — justificación del texto  
[REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Nombre interno | {508365B4-4C21-4b58-A463-07D3083BC38D} |

