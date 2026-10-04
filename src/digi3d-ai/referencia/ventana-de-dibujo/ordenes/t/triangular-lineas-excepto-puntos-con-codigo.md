# TRIANGULAR\_LINEAS\_EXCEPTO\_PUNTOS\_CON\_CODIGO
<!-- id: triangular-lineas-excepto-puntos-con-codigo -->

Calcula una triangulación exceptuando aquellos nodos a los que lleguen una línea con un determinado código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Código de las líneas cuyos vértices forman el MDT | No |
| 2...n | Código o códigos de las líneas cuyos vértices se excluyen (uno o más) | No |

## Observaciones

La orden trabaja con las líneas no borradas del archivo de dibujo activo. Un vértice de una línea con el código del parámetro 1 se excluye si coincide en XY con un vértice de una línea con alguno de los códigos excluidos y no coincide con ningún vértice de otra línea que no tenga esos códigos ni el código del parámetro 1.

La orden triangula los vértices que quedan, sin líneas de ruptura, y carga el MDT resultante como un archivo de referencia nuevo llamado «Triangulación creada a las hh:mm:ss». Si quedan menos de tres vértices o la triangulación falla, muestra un globo de error.

Si se indican menos de dos parámetros, la orden muestra el aviso «No se han especificado parámetros» y termina.

## Características de la orden

| Tipo de orden | [Orden inmediata](triangular-lineas-excepto-puntos-con-codigo.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [TRIANGULAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md)<br>[TRIANGULAR\_PUNTOS\_TOPOLOGIA\_EXCEPTO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-puntos-topologia-excepto.md) |
| Nombre interno | {AAB62AA3-5A58-42C1-A8E1-B03CB44FBFD4} |
