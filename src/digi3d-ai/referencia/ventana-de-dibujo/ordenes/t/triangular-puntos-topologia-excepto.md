# TRIANGULAR\_PUNTOS\_TOPOLOGIA\_EXCEPTO
<!-- id: triangular-puntos-topologia-excepto -->

Calcula una triangulación con las líneas de una topología exceptuando las líneas que tengan un determinado código.

## Parámetros

| Número de parámetro | Descripción | Opcional |
| :--- | :--- | :--- |
| 1 | Nombre de la topología | No |
| 2...n | Código o códigos a excluir (uno o más) | No |

## Observaciones

La orden toma las líneas que forman los recintos válidos de la topología, descarta las que tienen alguno de los códigos excluidos, calcula la triangulación y la carga como un nuevo archivo de dibujo MDT llamado «Triangulación creada a las hh:mm:ss».

La orden muestra un aviso y termina si se indican menos de dos parámetros, si no hay ninguna topología cargada o si no encuentra la topología indicada.

## Características de la orden

| Tipo de orden | [Orden inmediata](triangular-puntos-topologia-excepto.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | DigiNG.OrdenesMDT.dll |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [TRIANGULAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular.md)<br>[TRIANGULAR\_LINEAS\_EXCEPTO\_PUNTOS\_CON\_CODIGO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/t/triangular-lineas-excepto-puntos-con-codigo.md) |
| Nombre interno | {2D568E97-B495-4663-9472-F9FE9823AF96} |
