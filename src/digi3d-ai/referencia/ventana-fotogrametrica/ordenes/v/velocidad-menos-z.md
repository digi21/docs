# VELOCIDAD\_MENOS\_Z

Disminuye la velocidad de las manivelas en Z.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Velocidad en Z, número real mayor que 0 | Sí |

Sin parámetro, la orden multiplica la velocidad de Z por 0,80. Con parámetro, la orden fija la velocidad de Z a ese valor. Si el valor es 0, negativo o no es un número, la velocidad no cambia y suena la música de error. El separador decimal es el punto: con coma, la orden ignora la parte decimal.

### Ejemplos:

`VELOCIDAD_MENOS_Z`

Disminuye la velocidad de Z un 20 %.

`VELOCIDAD_MENOS_Z=5.75`

Establece la velocidad de Z a 5.75.

## Características de la orden

| Tipo de orden | Orden inmediata |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | Digi3D.CommonCommands.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [VELOCIDAD](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad.md)<br>[VELOCIDAD\_MAS\_Z](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-mas-z.md)<br>[VELOCIDAD\_MENOS\_XY](/digi3d-ai/referencia/ventana-fotogrametrica/ordenes/v/velocidad-menos-xy.md) |
| Nombre interno | {DE4ED45B-F07A-47c4-BC70-67B4DB572784} |
