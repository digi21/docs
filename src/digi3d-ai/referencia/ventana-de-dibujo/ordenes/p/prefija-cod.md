# PREFIJA\_COD
<!-- id: prefija-cod-2 -->

Antepone un prefijo a los códigos de cada geometría que se selecciona con un dato o con una orden de selección múltiple, salvo a los códigos que ya tienen uno.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Prefijo | Cadena sin espacios, por ejemplo `BAI_` o `ACT_` | No |

## Observaciones

Con cada dato, la orden selecciona la geometría más próxima del archivo de dibujo activo, igual que el pedal de tentativo. Las geometrías de los archivos de referencia no se pueden seleccionar.

La orden antepone el prefijo a cada código de la geometría, siempre que el código no empiece por `ACT_`, por `BAI_` ni por el prefijo indicado. Cada código conserva su tabla y su registro de base de datos. Si todos los códigos de la geometría empiezan por `ACT_`, por `BAI_` o por el prefijo indicado, la geometría no cambia y la orden emite el sonido de error.

Esta orden admite selección múltiple. Con la orden activa, ejecuta [SELECCIONA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md), [SELECCIONA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md) o cualquier otra orden de selección, o la opción **Enviar selección a la orden activa** del editor de base de datos o del panel de resultados de la búsqueda: la orden antepone el prefijo a todas las geometrías seleccionadas. Ignora las geometrías de los archivos de referencia, las borradas y las que ya tienen un prefijo en todos sus códigos. Si ninguna geometría seleccionada cambia, emite el sonido de error.

Si Digi3D.AI no puede almacenar una geometría con el código nuevo, por ejemplo porque el formato del archivo de dibujo no admite ese código, la geometría original se conserva sin cambios.

Cada dato y cada selección múltiple quedan en una transacción propia: un UNDO deshace el cambio de la geometría seleccionada con un dato o de todas las geometrías de una selección múltiple. La orden sigue activa hasta que pulsas reset.

Para trabajar con varios prefijos, asigna la orden a una tecla o a un botón de una barra de herramientas por cada prefijo, por ejemplo `PREFIJA_COD=ACT_` y `PREFIJA_COD=BAI_`.

Si falta el prefijo, la orden emite el sonido de error, muestra un cuadro con el motivo y la forma de uso y no se inicia.

La orden es el guion de Python `prefija_cod.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, por ejemplo para cambiar la lista de prefijos, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Prefijar los códigos de la geometría seleccionada](/digi3d-ai/programacion/python/panel-de-python/ejemplos/prefija-cod.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden interactiva](/digi3d-ai/referencia/ordenes/ordenes-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | prefija\_cod.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [prefija\_cod.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/prefija_cod.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [CAMB\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/c/camb-cod.md)<br>[RENOMCOD\_MANTENIENDO\_ATRIBUTOS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/renomcod-manteniendo-atributos.md) |
