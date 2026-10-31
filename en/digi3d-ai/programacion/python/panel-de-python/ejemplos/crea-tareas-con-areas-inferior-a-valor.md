# Creating tasks for small areas
<!-- id: crea-tareas-con-areas-inferior-a-valor -->
<!-- origen: 76a515cab19806fcf377d364c72d41b6e4493615 -->

File: `crea_tareas_con_areas_inferior_a_valor.py` · command `CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR` with one parameter: maximum area. A [video](https://youtu.be/JwA4ymWz1zo) explains the script.

Finds closed lines and polygons with **area below the specified value**, creating a [task](../../referencia/digi3d/tasks.md) for each. Double-click a task to navigate to its geometry. Use it to locate very small enclosed areas.

## Usage

Enter the command and area. For closed lines and polygons below 100 square units:

```
CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=100
```

Area accepts comma or period decimal separators. Without exactly one numeric parameter, plays the error sound and displays the reason and usage.

## Code

```python
import digi3d

USO = 'CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=[área]'


def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))


def numero(texto):
    """Convierte el parámetro en un número; admite la coma como separador decimal. Devuelve None si no es un número."""
    try:
        return float(texto.replace(',', '.'))
    except ValueError:
        return None


def crea_tareas(area_maxima):
    for g in digi3d.current_view():
        if type(g) is not digi3d.Line and type(g) is not digi3d.Polygon:
            continue

        if type(g) is digi3d.Line and not g.closed_2d:
            continue

        if abs(g.area) >= area_maxima:
            continue

        x = (g.min[0] + g.max[0]) / 2
        y = (g.min[1] + g.max[1]) / 2
        z = (g.min[2] + g.max[2]) / 2
        titulo = f'{abs(g.area):.3f}'

        tarea = digi3d.TaskGotoCoordinates((x, y, z), titulo, "")

        digi3d.add_task(tarea)


if len(argv) != 1:
    error('Número de parámetros incorrecto.')
elif numero(argv[0]) is None:
    error('El área «{}» no es un número.'.format(argv[0]))
else:
    crea_tareas(numero(argv[0]))
```

## How it works

- **Parameter validation**: reads global `argv`. If `argv` lacks exactly one element or `numero` cannot convert it, `error` plays the error sound with [`digi3d.music`](../../referencia/digi3d/functions.md) and displays the reason and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md).
- **Number conversion**: `numero` replaces comma with period before `float`, so `100,5` and `100.5` give the same value. If `float` raises `ValueError`, `numero` returns `None`.
- `crea_tareas` iterates all drawing window geometries and **skips** with `continue`:
  - Types other than [Line](../../referencia/digi21.base/line.md) or [Polygon](../../referencia/digi21.base/polygon.md).
  - Lines not closed in plan (`not g.closed_2d`): open lines enclose no area.
  - Areas at or above the parameter (`abs(g.area) >= area_maxima`). Uses `abs` because digitizing direction can make area negative.
- For accepted geometries, calculates the bounding box **center** (`g.min`, `g.max`) and creates [`TaskGotoCoordinates`](../../referencia/digi3d/tasks.md)`(coordenadas, título, descripción)`. The title is the area to 3 decimal places (`f'{abs(g.area):.3f}'`).
- `digi3d.add_task(tarea)` adds the task. Double-clicking moves the drawing window to those coordinates.

> Only **reads** geometries and creates tasks; the drawing is unchanged. Thus no `list(...)` selection materialization or `redraw()` is needed.

## See also

- [Tasks](../../referencia/digi3d/tasks.md): `TaskGotoCoordinates`
- [Module functions](../../referencia/digi3d/functions.md): `add_task`, `music`, `show_info`
- [Line](../../referencia/digi21.base/line.md) · [Polygon](../../referencia/digi21.base/polygon.md)
