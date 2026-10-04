# GROSOR
<!-- id: grosor -->

Asigna un grosor adicional a las entidades que se visualizan en la ventana de dibujo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número entero | Si |

Si se ejecuta sin parámetros, la orden muestra un cuadro de diálogo para introducir el valor.

## Observaciones

El valor, en píxeles, se suma al grosor de línea que tiene asignado cada código en la tabla de códigos. El grosor resultante nunca es inferior a 1 píxel. El valor por defecto es 0.

Al cambiar el valor, la ventana de dibujo se regenera.

### Ejemplos

`GROSOR=2`

Suma 2 píxeles al grosor de las entidades

`GROSOR=?`

Muestra el valor actual del grosor de las entidades

## Características de la orden

| Tipo de orden | [Variable numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {D8D7E7B7-322C-4bbb-9BCD-43B0E71DD457} |

