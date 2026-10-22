# RENOMCOD\_MANTENIENDO\_ATRIBUTOS
<!-- id: renomcod-manteniendo-atributos-2 -->

Cambia un código por otro en todas las geometrías que lo tienen y conserva la tabla y el registro de base de datos del código sustituido.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código origen | Código | No |
| 2 | Código destino | Código | No |

Por ejemplo, `RENOMCOD_MANTENIENDO_ATRIBUTOS=A B`.

## Observaciones

La orden sustituye el código origen por el código destino en todas las geometrías que tienen el código origen. El código nuevo conserva la tabla y el registro del código sustituido. Los demás códigos de la geometría no cambian.

Abre el archivo de dibujo sin conexión a una base de datos antes de ejecutar la orden: así Digi3D.AI no intenta guardar información en la base de datos al añadir las geometrías nuevas.

Si el número de parámetros no es dos, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de uso.

La orden es el guion de Python `renomcod_manteniendo_atributos.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Renombrar un código manteniendo sus atributos](/digi3d-ai/programacion/python/panel-de-python/ejemplos/renomcod-manteniendo-atributos.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | renomcod\_manteniendo\_atributos.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [renomcod\_manteniendo\_atributos.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/renomcod_manteniendo_atributos.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [RENOMCOD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod.md)<br>[PREFIJA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/p/prefija-cod.md) |
