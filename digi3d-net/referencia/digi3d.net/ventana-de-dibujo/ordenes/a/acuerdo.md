# ACUERDO

Dibuja un acuerdo circular entre dos segmentos con un vértice común de una entidad.

## Parámetros

Debemos introducir el valor del radio deseado y determinar cuál va a ser el vértice de intersección.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número real | Si |
| 2 | Distancia entre dos puntos | Número real | Si |

Si no se ejecuta la orden y aparece un mensaje de error, puede ser debido a que el radio introducido sea mayor al radio máximo permitido por la entidad a la que se quiere dibujar un acuerdo.

## Observaciones

El resultado de la orden es la sustitución del vértice por un arco de radio especificado y tangente a dos rectas.

## Características de la orden

| Tipo de orden | [Variable real](acuerdo.md) |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Editar/Polilíneas/Redondear un vértice |
| Barra de herramientas en la que aparece la orden | Editar polilínea |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | [REPITE](https://github.com/digi21/docs/tree/7fc627c885c16fb88afc7cc05a6df2a2f4a54563/digi3d-net/referencia/digi3d.net/ventana-de-dibujo/ordenes/a/REPITE.html) |

