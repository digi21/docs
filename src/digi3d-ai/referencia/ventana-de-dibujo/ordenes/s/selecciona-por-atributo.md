# SELECCIONA\_POR\_ATRIBUTO

Envía una selección a la orden activa por atributos de base de datos.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre del atributo | No |
| 2 | Valor con el que comparar el atributo | No |

## Observaciones

Es necesario que se esté ejecutando previamente una orden que admita selección múltiple. Si no es así, o si falta alguno de los dos parámetros, la orden muestra un aviso y termina.

La orden recorre todos los archivos de dibujo cargados. En cada entidad toma el primer código que tiene el atributo indicado y compara su valor con el parámetro 2: los atributos enteros y booleanos se comparan como número entero, los reales como número real y los de texto sin distinguir mayúsculas de minúsculas. Las entidades que coinciden se envían a la orden activa.

## Características de la orden

| Tipo de orden | [Orden inmediata](selecciona-por-atributo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesBaseDatos.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {694241B1-2330-4D49-8405-4BAC0684E9A9} |
