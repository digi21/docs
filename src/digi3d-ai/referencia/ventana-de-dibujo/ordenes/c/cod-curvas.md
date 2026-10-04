# COD\_CURVAS
<!-- id: cod-curvas -->

Define el código de las curvas directoras y finas.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código para activar el registro de curvas de nivel sin necesidad de cambiar de código para curva de nivel maestra o fina | Si |
| 2 | Código con el que se registrarán las curvas de nivel maestras | Si |
| 3 | Código con el que se registrarán las curvas de nivel finas | Si |

Los tres parámetros se indican juntos. Si se indican menos de tres, la orden los ignora y muestra un cuadro de diálogo con los tres códigos.

## Observaciones

Cuando se activa, permite al operador registrar curvas de nivel sin preocuparse de si la línea que está registrando es una curva de nivel directora o fina.

Cuando el único código activo es el del primer parámetro, la orden [LINEA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/l/linea.md) asigna a la línea el código de directora si la Z es múltiplo de 5 veces la [equidistancia](/digi3d-ai/referencia/ventana-de-dibujo/variables/e/equidistancia.md), y el código de fina en caso contrario. Es decir, entre cada dos curvas de nivel directoras hay 4 finas.

Los códigos se conservan hasta que se cierra el programa.

## Características de la orden

| Tipo de orden | [Orden inmediata](cod-curvas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Inmediato/Códigos especiales/Códigos de curvas de nivel... |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [COTAS\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/cotas-curvas.md)<br>[ROTULA\_CURVAS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/rotula-curvas.md) |
| Nombre interno | {ACAEC197-BA66-40cd-B5D0-DD4C349F4BD1} |

