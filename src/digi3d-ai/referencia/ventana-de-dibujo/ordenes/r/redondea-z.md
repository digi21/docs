# REDONDEA\_Z
<!-- id: redondea-z-2 -->

Redondea a entero la coordenada Z de todos los vértices de las curvas de nivel con los códigos indicados.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Código de las curvas maestras | Código | No |
| 2 | Código de las curvas finas | Código | No |

Por ejemplo, `REDONDEA_Z=020124 020123`.

## Observaciones

La orden trabaja con las geometrías no borradas que tienen el código de maestra o el de fina. Por cada geometría, añade una línea nueva con los mismos códigos y con la Z de cada vértice redondeada con la función `round` de Python, y borra la geometría original.

La geometría nueva es siempre una línea, aunque la original sea de otro tipo. `round` redondea los valores terminados en ,5 al entero par: 2,5 pasa a 2 y 3,5 pasa a 4.

Si el número de parámetros no es dos, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de uso.

La orden es el guion de Python `redondea_z.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Redondear la cota Z de las curvas](/digi3d-ai/programacion/python/panel-de-python/ejemplos/redondea-z.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | redondea\_z.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [redondea\_z.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/redondea_z.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | [FILTRAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/f/filtrar.md) |
