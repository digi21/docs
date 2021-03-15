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

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Copiar una entidad conservando su tamaño/orientación |
| Barra de herramientas en la que aparece la orden | Copiar y duplicar |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](REPITE.html) |

