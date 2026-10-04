# VELOCIDAD\_MENOS\_XY
<!-- id: velocidad-menos-xy -->

Disminuye la velocidad de las manivelas en XY.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Velocidad en X y en Y, número real mayor que 0 | Sí |

Sin parámetro, la orden multiplica la velocidad de XY por 0,80. Con parámetro, la orden fija la velocidad de XY a ese valor. Si el valor es 0, negativo o no es un número, la velocidad no cambia y suena la música de error. El separador decimal es el punto: con coma, la orden ignora la parte decimal.

### Ejemplos:

`VELOCIDAD_MENOS_XY`

Disminuye la velocidad de XY un 20 %.

`VELOCIDAD_MENOS_XY=5.75`

Establece la velocidad de XY a 5.75.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [VELOCIDAD](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md)<br>[VELOCIDAD\_MAS\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-xy.md)<br>[VELOCIDAD\_MENOS\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-z.md) |
| Nombre interno | {51955FE8-4F4B-47ec-9AED-1DFC3B58AF07} |
