# DETECTAR\_LINEAS\_NO\_CONECTADAS

Crea una tarea de error por cada extremo de línea que no esté conectado por código con otra entidad.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Código o códigos de las líneas a comprobar | Si |

## Observaciones

Esta orden recorre las líneas visibles, dentro de la zona de interés, que tengan alguno de los códigos indicados, y comprueba, para cada extremo, si coincide en X e Y con el extremo de otra de esas líneas. Un extremo conectado con una línea de otro de los códigos indicados cuenta como conectado. Por cada extremo que quede suelto se genera una tarea de error, que el usuario puede ir revisando y corrigiendo posteriormente.

Cada código se compara de forma exacta. Para incluir todos los códigos que tengan una etiqueta, antepón una almohadilla \(\#\) al nombre de la etiqueta.

Si no indicas ningún código, la orden espera a que selecciones un conjunto de entidades mediante una selección múltiple y analiza las líneas seleccionadas.

Resulta útil como control de calidad topológico para localizar líneas que deberían enlazar entre sí \(por ejemplo, tramos de una misma red\) pero que han quedado desconectadas.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/d/detectar_lineas_no_conectadas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | Análisis geométricos/Detectar líneas no conectadas por código |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesTopologia.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {47D061F8-0F07-463B-B1E5-183743E5548C} |
