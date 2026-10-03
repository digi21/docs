# GROSORS

Grosor adicional con que se muestran los vectores en la pantalla estereoscópica.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Valor numérico | Número entero | Si |

Si se ejecuta sin parámetros, la orden muestra un cuadro de diálogo para introducir el valor.

## Observaciones

El valor, en píxeles, se suma al grosor estereoscópico que tiene asignado cada código en la tabla de códigos. El grosor resultante nunca es inferior a 1 píxel. El valor por defecto es 0.

Al cambiar el valor, la pantalla estereoscópica se regenera.

### Ejemplos

`GROSORS=2`

Suma 2 píxeles al grosor de los vectores en la pantalla estereoscópica

`GROSORS=?`

Muestra el valor actual del grosor de los vectores en la pantalla estereoscópica

## Características de la orden

| Tipo de orden | [Variable numérica](../../../ordenes/variables/variables-numericas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {0D98E9B2-1EA9-45bc-B450-25905BDED0AE} |
