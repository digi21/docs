# CAMB\_TEXTO

Sustituye todos los textos iguales por otro que ha de ser especificado por el usuario.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Texto a reemplazar | Texto | Si |
| 2 | Texto nuevo | Texto | Si |

Los dos parámetros se indican juntos. Si un texto contiene espacios, escríbelo entre comillas.

## Observaciones

Con los dos parámetros, la orden sustituye sin pedir datos el contenido de los textos visibles, no borrados y dentro de la zona de interés cuyo contenido completo sea igual al texto a reemplazar. La comparación distingue mayúsculas y minúsculas.

Sin parámetros, la orden muestra el cuadro de diálogo de buscar y reemplazar:

* **Buscar siguiente** centra la vista en el siguiente texto que coincide y lo selecciona.
* **Reemplazar** sustituye el texto seleccionado y busca el siguiente.
* **Reemplazar todos** sustituye todos los textos que coinciden.
* La casilla de mayúsculas y minúsculas hace que la búsqueda las distinga.
* La casilla de palabras completas hace que solo coincidan los textos cuyo contenido completo es igual al buscado. Sin ella, basta con que el texto contenga lo buscado.

Al reemplazar, la orden sustituye el contenido completo del texto, no solo la parte que coincide. Si el texto nuevo está vacío, la orden borra los textos que coinciden.

## Características de la orden

| Tipo de orden | [Orden interactiva](camb-texto.md) sin parámetros; [orden inmediata](camb-texto.md) con parámetros |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {62E042B4-F679-4a73-83E3-1B8C989C2DB8} |

