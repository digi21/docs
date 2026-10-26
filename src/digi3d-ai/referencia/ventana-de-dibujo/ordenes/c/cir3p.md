# CIR3P
<!-- id: cir3p -->

Dibuja una circunferencia a partir de tres puntos dados.

![CIR3P: circunferencia que pasa por tres puntos digitalizados, proyectados en el plano de la cámara](../../../../../images/orden-cir3p.svg)

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Punto en el espacio de trabajo | Coordenadas X, Y y Z | Sí |
| 2 | Punto en el espacio de trabajo | Coordenadas XYZ | Sí |
| 3 | Punto en el espacio de trabajo | Coordenadas XYZ | Sí |

## Observaciones

El triángulo definido por los tres puntos introducidos queda inscrito en el círculo.

La circunferencia se construye en el plano de la cámara: todos sus vértices quedan a la misma profundidad. Para dibujar una circunferencia que pase exactamente por tres puntos que no estén en el plano de la cámara —con la cámara libre de los sensores de nube de puntos y de ortofoto estereoscópica—, usa [CIR3D](cir3d.md).

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Dibujar/Más/Circunferencia con 3 puntos |
| Barra de herramientas en la que aparece la orden | Circunferencias |
| Extensión | DigiNG.OrdenesStandard.dll |
| Implementación | Nativa |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) — repite la última orden ejecutada |
| Órdenes relacionadas | [CIR2P](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir2p.md)<br>[CIR3D](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cir3d.md)<br>[CIRCR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/circr.md) |
| Nombre interno | {6ED5F7BA-42D1-419c-982C-3088BDEFF125} |

