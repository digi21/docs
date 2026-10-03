# NDEC

Fija el número de decimales que van a aparecer en los textos numéricos utilizados para indicar valores de coordenadas X Y Z, distancias, superficies, etc.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número entero o **?** | No |

### Ejemplos

`NDEC=3`

Asigna como número de decimales el valor 3

`NDEC=?`

Muestra el valor actual del número de decimales

## Observaciones

Si ejecutas la orden sin parámetros, emite un sonido de error y no cambia el valor. El número de decimales es propio de cada ventana de dibujo y vale 3 al abrirla.

## Características de la orden

| Tipo de orden | [Variable numérica](../variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {C95747DC-D101-463f-A586-F76C09638F2D} |

