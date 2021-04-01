# CURSOR

Establece el tamaño y la forma del cursor.

## Observaciones

Con el tamaño del cursor se establece el ámbito de la búsqueda cuando se selecciona una entidad en el fichero de dibujo. Admite diversos tamaños diferentes que se van cambiando al llamar sucesivamente a esta orden.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 0 | Valor numérico | Número real | Si |
| 1 | Valor numérico | Número real | Si |
| 2 | Valor numérico | Número real | Si |
| 3 | Valor numérico | Número real | Si |
| 4 | Valor numérico | Número real | Si |
| 5 | Valor numérico | Número real | Si |
| 6 | Valor numérico | Número real | Si |

### Ejemplo

CURSOR=4

Asigna como tamo de cursor el valor 4

Si se teclea la orden CURSOR cambia de valor sucesivamente entre 0 y 3. El valor cero corresponde al cursor en forma de cruz.

## Características de la orden

| Tipo de orden | [Orden inmediata]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Cambiar el tamaño del cursor |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No admite variables |

