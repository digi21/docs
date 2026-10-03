# XY

Introduce las coordenadas de uno o varios puntos.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1, 2, 3 | Coordenadas X, Y y Z del primer punto | Número real | Si |
| 4, 5, 6... | Coordenadas X, Y y Z de los puntos siguientes, de tres en tres | Número real | Si |

Si el último punto solo tiene X e Y, su Z es 0; si solo tiene X, la orden lo descarta.

Si no se indican parámetros, o solo se indica uno, la orden muestra un cuadro de diálogo para teclear las coordenadas.

## Observaciones

La orden envía cada punto a la orden que se está ejecutando como si se hubiera pulsado el pulsador de datos en esas coordenadas.

En el cuadro de diálogo se teclea un punto por línea. Los valores tecleados deben estar separados por espacios en blanco o comas. Cada línea admite uno de estos formatos:

| Formato | Significado |
| :--- | :--- |
| `X Y` | Coordenadas absolutas. La Z es la del punto anterior, o 0 si no hay punto anterior |
| `X Y Z` | Coordenadas absolutas con Z |
| `@dX dY` | Incremento respecto al punto anterior, sin cambiar la Z |
| `@dX dY dZ` | Incremento respecto al punto anterior, también en Z |
| `distancia<ángulo` | Distancia y ángulo en grados centesimales respecto al punto anterior. El ángulo se mide desde el eje X en sentido antihorario |
| `distancia<<ángulo` | Distancia y ángulo en grados sexagesimales respecto al punto anterior. El ángulo se mide desde el eje X en sentido antihorario |

El punto anterior es el último vértice de la orden que se está ejecutando. Si esa orden no tiene ningún vértice, la primera línea tiene que ser una coordenada absoluta; si no lo es, la orden muestra un aviso y no envía ningún punto.

## Características de la orden

| Tipo de orden | [Orden inmediata](xy.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Inserción manual de coordenadas |
| Barra de herramientas en la que aparece la orden | Coordenadas |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {140CD659-1BAF-4db6-A70B-2DB907255CB2} |

