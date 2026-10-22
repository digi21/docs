# CREA\_TAREAS\_CON\_AREAS\_INFERIOR\_A\_VALOR
<!-- id: crea-tareas-con-areas-inferior-a-valor-2 -->

Añade al [panel de tareas](/digi3d-ai/referencia/paneles/tareas.md) una tarea por cada polígono o línea cerrada en planta cuya área, en valor absoluto, es menor que el valor indicado.

## Parámetros

| Número de parámetro | Descripción | Valores | Opcional |
| :--- | :--- | :--- | :--- |
| 1 | Área máxima, en unidades del sistema de coordenadas al cuadrado | Número. Admite la coma o el punto como separador decimal | No |

Por ejemplo, `CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=100` crea una tarea por cada geometría cerrada de menos de 100 unidades cuadradas.

## Observaciones

El título de cada tarea es el área con tres decimales. Al hacer doble clic en la tarea, la ventana de dibujo se desplaza al centro de la caja envolvente de la geometría.

Si el número de parámetros no es uno o el área no es un número, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de uso.

La orden es el guion de Python `crea_tareas_con_areas_inferior_a_valor.py` del repositorio [ComandosDigi3DPython](https://github.com/digi21/ComandosDigi3DPython). Digi3D.AI lo instala en la carpeta `OrdenesPython` de su carpeta de instalación. Para modificar la orden, copia el archivo en el [directorio de macroinstrucciones](/digi3d-ai/referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md) y edita la copia: Digi3D.AI ejecuta la copia en lugar del archivo instalado.

La página [Crear tareas con áreas pequeñas](/digi3d-ai/programacion/python/panel-de-python/ejemplos/crea-tareas-con-areas-inferior-a-valor.md) explica el código.

## Características de la orden

| Tipo de orden | [Orden inmediata](/digi3d-ai/referencia/ordenes/ordenes-no-interactivas.md) |
| :--- | :--- |
| Repite automáticamente | No |
| Opción del menú donde aparece la orden | _Esta orden no tiene asociada ninguna opción de menú_ |
| Barra de herramientas en la que aparece la orden | _Esta orden no tiene asociado ningún botón en ninguna barra de herramientas_ |
| Extensión | crea\_tareas\_con\_areas\_inferior\_a\_valor.py |
| Implementación | [Python](/digi3d-ai/programacion/python/ordenes-python.md) |
| Código fuente | [crea\_tareas\_con\_areas\_inferior\_a\_valor.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crea_tareas_con_areas_inferior_a_valor.py) |
| Variables relacionadas | No tiene variables relacionadas |
| Órdenes relacionadas | No tiene órdenes relacionadas |
