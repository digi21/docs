# COD\_CURVAS

Define el código de las curvas directoras y finas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código para activar el registro de curvas de nivel sin necesidad de cambiar de código para curva de nivel maestra o fina | Si |
| 2 | Código con el que se registrarán las curvas de nivel maestras | Si |
| 3 | Código con el que se registrarán las curvas de nivel finas | Si |

## Observaciones

Cuando se activa, permite al operador registrar curvas de nivel sin preocuparse de si la línea que está registrando es una curva de nivel directora o fina.

Esta orden supone que entre cada dos curvas de nivel directoras se dibujan 4 finas, como es norma general en cartografía.

## Características de la orden

| Tipo de orden | [Orden interactiva]() |
| :--- | :--- |
| Repite automáticamente | Si |
| Opción del menú donde aparece la orden | Inmediato/Códigos especiales/Códigos de curvas de nivel... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesRaster.dll |
| Variables relacionadas | No tiene variables relacionadas |

