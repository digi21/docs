# DA

Asigna/consulta el valor de _distancia activa._

## Parámetros

Si no se especifica ningún parámetro, el programa solicita que se introduzca primero el valor de la distancia principal y a continuación el valor de la distancia secundaria.

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Distancia activa principal | Número real | Si |
| 2 | Distancia activa auxiliar | Número real | Si |

## Observaciones

DigiNG almacena internamente el valor de dos distancias activas: una distancia activa principal y una auxiliar.

Ciertas órdenes utilizan la distancia activa principal, como por ejemplo, la orden [ESCALERA\_DA](ESCALERA_DA.html).  
Otras ordenes utilizan ambas distancias, como la orden [TRAMAR](TRAMAR.html)

### Ejemplos

`DA=12.45`

Asigna como distancia activa principal el valor 12.45

`DA=12.45 22.49`

Asigna como distancia activa principal el valor 12.45 y como distancia activa secundaria el valor 22.49

## Características de la orden

| Tipo de orden | [Variable real]() |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Distancia activa con dos puntos o Inmediato/Distancia activa con cuatro puntos |
| Barra de herramientas en la que aparece la orden | Parámetros activos |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |

