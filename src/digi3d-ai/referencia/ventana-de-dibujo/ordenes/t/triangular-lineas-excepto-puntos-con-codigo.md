# TRIANGULAR\_LINEAS\_EXCEPTO\_PUNTOS\_CON\_CODIGO

Calcula una triangulación exceptuando aquellos nodos a los que lleguen una línea con un determinado código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código de las líneas cuyos vértices forman el MDT | No |
| 2...n | Código o códigos de las líneas cuyos vértices se excluyen (uno o más) | No |

## Observaciones

La orden trabaja con las líneas no borradas del archivo de dibujo activo. Un vértice de una línea con el código del parámetro 1 se excluye si coincide en XY con un vértice de una línea con alguno de los códigos excluidos y no coincide con ningún vértice de otra línea que no tenga esos códigos ni el código del parámetro 1.

Si se indican menos de dos parámetros, la orden muestra el aviso «No se han especificado parámetros» y termina.

## Características de la orden

| Tipo de orden | [Orden inmediata](triangular-lineas-excepto-puntos-con-codigo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Nombre interno | {AAB62AA3-5A58-42C1-A8E1-B03CB44FBFD4} |
