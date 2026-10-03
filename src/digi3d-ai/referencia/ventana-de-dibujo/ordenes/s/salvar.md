# SALVAR

Establece cada cuántos minutos se hace automáticamente una copia de seguridad del archivo de dibujo activo.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Tiempo entre copias de seguridad automáticas, en minutos | Número entero | Si |

## Observaciones

Si no se indica el parámetro, o si su valor es 0, la orden solicita el tiempo en la barra de estado. El valor propuesto es el intervalo actual. Al introducir 0 en la barra de estado se desactiva la copia automática.

La copia automática es la misma que hace la orden [BAK](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/b/bak.md). Se hace al añadir una entidad, si ha pasado el intervalo desde la copia anterior.

## Características de la orden

| Tipo de orden | [Orden interactiva](salvar.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {11647E64-636B-4947-A1F9-CAB25BD68091} |
