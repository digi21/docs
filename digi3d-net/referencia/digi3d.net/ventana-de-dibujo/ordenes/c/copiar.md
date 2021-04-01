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
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/c/REPITE.html) |

