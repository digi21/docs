# Crear tareas con áreas pequeñas

Archivo: `crea_tareas_con_areas_inferior_a_valor.py` · guion para el [panel de Guiones Python](../guiones/README.md).
Hay un [vídeo](https://youtu.be/JwA4ymWz1zo) que lo explica.

Recorre el dibujo buscando líneas cerradas y polígonos con un **área menor de 100** y, por cada uno,
crea una [tarea](../guiones/tasks.md) que, al hacer doble clic, lleva la vista a esa geometría. Es
una forma de revisar posibles errores (recintos minúsculos).

## El código

```python
import digi3d

v = digi3d.current_view()

for g in v:
    if type(g) is not digi3d.Line and type(g) is not digi3d.Polygon:
        continue

    if type(g) is digi3d.Line and not g.closed_2d:
        continue

    if abs(g.area) >= 100:
        continue

    x = (g.min[0] + g.max[0]) / 2
    y = (g.min[1] + g.max[1]) / 2
    z = (g.min[2] + g.max[2]) / 2
    titulo = f'{abs(g.area):.3f}'

    tarea = digi3d.TaskGotoCoordinates((x, y, z), titulo, "")
    digi3d.add_task(tarea)
```

## Cómo funciona

- Se recorre `v` (todas las geometrías) y se **descartan** con `continue` las que no interesan:
  - Las que no son [Line](../referencia/digi21.base/line.md) ni
    [Polygon](../referencia/digi21.base/polygon.md).
  - Las líneas que no están cerradas en planta (`not g.closed_2d`): una línea abierta no encierra
    área.
  - Las que tienen área igual o mayor que 100 (`abs(g.area) >= 100`). Usamos `abs` porque el área
    puede salir negativa según el sentido de digitalización.
- Para las que pasan el filtro, se calcula el **centro** a partir de la caja envolvente
  (`g.min`, `g.max`) y se crea una tarea
  [`TaskGotoCoordinates`](../guiones/tasks.md)`(coordenadas, título, descripción)`. El título es el
  área con 3 decimales (`f'{abs(g.area):.3f}'`).
- `digi3d.add_task(tarea)` la añade al panel de tareas. Al hacer doble clic en ella, la ventana se
  desplaza a esas coordenadas.

> Como aquí solo se **leen** geometrías y se crean tareas (no se modifica el dibujo), no hace falta
> materializar con `list(...)` ni llamar a `redraw()`.

## Véase también

- [Tareas](../guiones/tasks.md) — `TaskGotoCoordinates`
- [Funciones del módulo](../guiones/functions.md) — `add_task`
- [Line](../referencia/digi21.base/line.md) · [Polygon](../referencia/digi21.base/polygon.md)
