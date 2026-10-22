# TRANSFORMA\_COMPLEJO\_A\_PUNTO
<!-- id: transforma-complejo-a-punto-2 -->

Sustituye las geometrías de tipo complejo con los códigos indicados por puntos situados en el centro de su caja envolvente.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las geometrías a transformar | Código. La orden compara el primer código de cada geometría | No |
| 2 y siguientes | Más códigos de geometrías a transformar | Códigos | Sí |

Por ejemplo, `TRANSFORMA_COMPLEJO_A_PUNTO=BAI_VEG_03_PT VEG_03_PT`.

## Observaciones

La orden sustituye cada geometría de tipo complejo, no borrada, cuyo primer código es uno de los indicados por un punto situado en el centro de su caja envolvente, con los mismos códigos, rotación 0 y escala 1. La geometría original se borra.

La orden resuelve el caso de los archivos DGN importados con los puntos como complejos en lugar de como puntos.

Si falta el código, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de uso.

La orden es el guion de Python `transforma_complejo_a_punto.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Transformar complejos en puntos](/digi3d-ai/programacion/python/panel-de-python/ejemplos/transforma-complejo-a-punto.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | transforma\_complejo\_a\_punto.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [transforma\_complejo\_a\_punto.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/transforma_complejo_a_punto.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
