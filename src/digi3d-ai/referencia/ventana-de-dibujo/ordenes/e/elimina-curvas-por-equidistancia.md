# ELIMINA\_CURVAS\_POR\_EQUIDISTANCIA
<!-- id: elimina-curvas-por-equidistancia-2 -->

Borra las curvas de nivel con los códigos indicados cuya coordenada Z es múltiplo de la equidistancia.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las curvas de nivel | Código | No |
| 2 y siguientes, excepto el último | Más códigos de curvas de nivel | Códigos | Sí |
| Último | Equidistancia | Número mayor que cero. Admite la coma o el punto como separador decimal | No |

Por ejemplo, `ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5` borra las curvas con código `020123` o `020124` cuya Z es múltiplo de 5.

## Observaciones

La orden borra las geometrías que tienen alguno de los códigos indicados y cuya Z del primer vértice es múltiplo de la equidistancia.

La orden emite el sonido de error y muestra un cuadro con el motivo en estos casos:

* Hay menos de dos parámetros o el último no es un número mayor que cero. El cuadro muestra también la forma de uso.
* Ninguna geometría tiene los códigos indicados.
* Ninguna geometría con esos códigos tiene una Z múltiplo de la equidistancia.

La orden es el guion de Python `elimina_curvas_por_equidistancia.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Eliminar curvas por equidistancia](/digi3d-ai/programacion/python/panel-de-python/ejemplos/elimina-curvas-por-equidistancia.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | elimina\_curvas\_por\_equidistancia.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [elimina\_curvas\_por\_equidistancia.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/elimina_curvas_por_equidistancia.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [FILTRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/filtrar.md) |
