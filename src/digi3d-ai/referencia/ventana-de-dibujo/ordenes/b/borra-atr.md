# BORRA\_ATR
<!-- id: borra-atr-2 -->

Elimina el enlace a base de datos de todas las geometrías de la ventana de dibujo.

## Parámetros

No admite parámetros.

## Observaciones

La orden recorre todas las geometrías de la ventana de dibujo, también las borradas. Por cada geometría crea un clon cuyos códigos tienen el mismo nombre y no tienen tabla ni registro, añade los clones y borra las geometrías originales.

La orden es el guion de Python `borra_atr.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Borrar el enlace a base de datos](/digi3d-ai/programacion/python/panel-de-python/ejemplos/borra-atr.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | borra\_atr.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [borra\_atr.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/borra_atr.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
