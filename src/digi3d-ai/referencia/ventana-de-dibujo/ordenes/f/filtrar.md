# FILTRAR
<!-- id: filtrar-2 -->

Borra las curvas de nivel que no corresponden a una equidistancia y asigna el código de maestra o de fina al resto según su coordenada Z. Reproduce el programa FILTRAR de Digi para MS-DOS.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las curvas maestras | Código | No |
| 2 | Código de las curvas finas | Código | No |
| 3 | Equidistancia | Número mayor que cero. Admite la coma o el punto como separador decimal | No |
| 4 | Intervalo de maestras: cada cuántas curvas hay una maestra | Número entero mayor que cero. Si no se indica, 5 | Sí |

Por ejemplo, para filtrar a escala 1:1000, con equidistancia 1, una cartografía cuyo código de maestra es `020124` y cuyo código de fina es `020123`: `FILTRAR=020124 020123 1`.

## Observaciones

La orden trabaja con las geometrías no borradas que tienen el código de maestra o el de fina:

1. Borra las geometrías cuya Z del primer vértice no es múltiplo de la equidistancia.
2. Asigna el código de maestra a las geometrías cuya Z es múltiplo de la equidistancia multiplicada por el intervalo de maestras.
3. Asigna el código de fina al resto.

La orden redondea la Z a tres decimales antes de comparar. Para cambiar el código, la orden añade un clon y borra la geometría original. El clon tiene un único código, el nuevo, sin tabla ni registro: la orden no conserva los demás códigos de la geometría.

Si el número de parámetros no es tres o cuatro, si la equidistancia no es un número mayor que cero o si el intervalo de maestras no es un número entero mayor que cero, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de uso.

La orden es el guion de Python `filtrar.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Filtrar curvas (finas y maestras)](/digi3d-ai/programacion/python/panel-de-python/ejemplos/filtrar.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | filtrar.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [filtrar.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/filtrar.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [ELIMINA\_CURVAS\_POR\_EQUIDISTANCIA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/elimina-curvas-por-equidistancia.md)<br>[REDONDEA\_Z](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/r/redondea-z.md) |
