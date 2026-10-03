# PARALELA

Dibuja líneas paralelas a una o varias entidades, a una distancia determinada.

![PARALELA: en planta, la paralela a la distancia d en el lado del punto digitalizado; en alzado, la paralela conserva la Z de la línea original](../../../../../images/orden-paralela.svg)

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código. Si se indica, la orden genera, sin pedir nada, la paralela de todas las líneas visibles con ese código a la [distancia activa DA](/digi3d-ai/referencia/ventana-de-dibujo/variables/d/da.md), a la derecha de su sentido de digitalización, y suma DA2 a su Z. | Sí |

## Observaciones

Sin parámetros:

1. Selecciona la línea.
2. Da la distancia: escríbela en la barra de estado y pulsa Intro, o digitaliza dos puntos (la distancia es la que hay entre ellos en planta).
3. Pincha en el lado de la línea en el que quieres la paralela.

La paralela conserva la Z de la línea original. Las paralelas se generan con el código que esté activo en el momento de ejecutar la orden.

## Características de la orden


| Tipo de orden | [Orden interactiva](paralela.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden |Dibujar/Más/Paralela clásica<br>o<br>Dibujar/Más/Paralela clásica con Z activa|
| Barra de herramientas en la que aparece la orden | *Esta orden no tiene asociado ningún botón en ninguna barra de herramientas* |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](/digi3d-ai/referencia/ventana-de-dibujo/variables/r/repite.md) |
| Órdenes relacionadas | [PARALELA\_DA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-da.md)<br>[PARALELA\_DINÁMICA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-dinamica.md)<br>[PARALELA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/paralela-z.md) |
| Nombre interno | {C98B960F-F4D1-4f65-8945-029EB0914CA7} |


