# CURSOR

Establece el tamaño del cursor.

## Observaciones

Con el tamaño del cursor se establece el ámbito de la búsqueda cuando se selecciona una entidad en el fichero de dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Tamaño del cursor | Número entero mayor o igual que 1. Un valor menor se sustituye por 1 | Si. Si no se especifica, el tamaño pasa al valor siguiente: 1, 2, 3, 4 y de nuevo 1 |

### Ejemplo

CURSOR=4

Asigna como tamaño de cursor el valor 4.

Si se teclea la orden CURSOR sin parámetros, el tamaño cambia sucesivamente entre 1 y 4.

## Características de la orden

| Tipo de orden | [Orden inmediata](cursor.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Cambiar el tamaño del cursor |
| Barra de herramientas en la que aparece la orden | Tentativo |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {E9215A0A-2A41-4a95-868C-1B3EF20AB870} |

