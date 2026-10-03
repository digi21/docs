# BORRAR\_TEXTO

Borra todos los textos cuyo "texto" coincida con alguno de los parámetros (admite comodines).

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 … N | Contenido de los textos a borrar (uno o más). Admite los comodines `*` y `?` | Si |

## Observaciones

La orden compara el contenido de cada texto del archivo de dibujo activo con los valores indicados y borra los textos que coinciden con alguno de ellos.

Con uno o más parámetros, la orden borra sin mostrar ningún cuadro de diálogo; la comparación usa comodines y distingue entre mayúsculas y minúsculas. Sin parámetros, la orden muestra el cuadro de diálogo **Borrar textos**, en el que se escriben los textos a borrar, uno por línea, y se eligen las opciones **Diferenciar entre mayúsculas y minúsculas** y **Utilizar comodines**. Cada línea del cuadro de diálogo es un texto completo, aunque contenga espacios o comas; las líneas vacías se ignoran.

## Características de la orden

| Tipo de orden | [Orden inmediata](borrar-texto.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesStandard.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {7AAC4699-1AB0-415D-88BA-2B3846F3AEC9} |
