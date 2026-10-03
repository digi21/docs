# CAMB\_CARÁCTER

Sustituye un carácter de texto determinado por otro diferente.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Carácter anterior | No |
| 2 | Carácter nuevo | No |

## Observaciones

Si falta alguno de los dos parámetros, la orden emite un sonido de error y no hace nada. La orden no pide datos al usuario.

Al hacer el cambio se modificarán todas las apariciones del carácter anterior por el carácter nuevo en los textos visibles, no borrados y dentro de la zona de interés. Si un parámetro tiene más de un carácter, la orden solo usa el primero para la sustitución.

### Llamada a la orden

`CAMB_CARACTER=<carácter anterior> <carácter nuevo>`

## Características de la orden

| Tipo de orden | [Orden inmediata](camb-caracter.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {39422C18-7C3D-44a8-92A8-84007AFBE563} |

