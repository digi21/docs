# Crear tareas con áreas pequeñas
<!-- id: crea-tareas-con-areas-inferior-a-valor -->

Archivo: `crea_tareas_con_areas_inferior_a_valor.py` · orden `CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR`
con un parámetro: el área máxima. Hay un [vídeo](https://youtu.be/JwA4ymWz1zo) que explica el guion.

Recorre el dibujo buscando líneas cerradas y polígonos con un **área menor que el valor indicado** y, por
cada uno, crea una [tarea](../../referencia/digi3d/tasks.md) que, al hacer doble clic, lleva la vista a esa
geometría. Sirve para localizar recintos de área muy pequeña.

## Cómo se usa

Escribe en la línea de comandos el nombre de la orden y el área. Por ejemplo, para localizar las líneas
cerradas y los polígonos de menos de 100 unidades cuadradas:

```
CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=100
```

El área admite la coma o el punto como separador decimal. Si no se indica exactamente un parámetro, o si el
parámetro no es un número, la orden emite el sonido de error y muestra un cuadro con el motivo y la forma de
uso.

## El código

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

## Cómo funciona

- **Comprobación de los parámetros**: el guion lee el parámetro de la variable global `argv`. Si `argv`
  no tiene exactamente un elemento, o si la función `numero` no puede convertirlo en número, la función
  `error` emite el sonido de error con [`digi3d.music`](../../referencia/digi3d/functions.md) y muestra el
  motivo y la forma de uso con [`digi3d.show_info`](../../referencia/digi3d/functions.md).
- **Conversión del número**: `numero` sustituye la coma por un punto antes de llamar a `float`, así que
  `100,5` y `100.5` dan el mismo valor. Si `float` lanza `ValueError`, `numero` devuelve `None`.
- `crea_tareas` recorre todas las geometrías de la ventana de dibujo y **descarta** con `continue` las que
  no interesan:
  - Las que no son [Line](../../referencia/digi21.base/line.md) ni
    [Polygon](../../referencia/digi21.base/polygon.md).
  - Las líneas que no están cerradas en planta (`not g.closed_2d`): una línea abierta no encierra
    área.
  - Las que tienen un área igual o mayor que el parámetro (`abs(g.area) >= area_maxima`). El guion usa
    `abs` porque el área puede ser negativa según el sentido de digitalización.
- Para las geometrías que pasan el filtro, el guion calcula el **centro** de la caja envolvente
  (`g.min`, `g.max`) y crea una tarea
  [`TaskGotoCoordinates`](../../referencia/digi3d/tasks.md)`(coordenadas, título, descripción)`. El título es
  el área con 3 decimales (`f'{abs(g.area):.3f}'`).
- `digi3d.add_task(tarea)` añade la tarea al panel de tareas. Al hacer doble clic en la tarea, la ventana
  de dibujo se desplaza a esas coordenadas.

> El guion solo **lee** geometrías y crea tareas; no modifica el dibujo. Por eso no materializa la
> selección con `list(...)` ni llama a `redraw()`.

## Véase también

- [Tareas](../../referencia/digi3d/tasks.md) — `TaskGotoCoordinates`
- [Funciones del módulo](../../referencia/digi3d/functions.md) — `add_task`, `music`, `show_info`
- [Line](../../referencia/digi21.base/line.md) · [Polygon](../../referencia/digi21.base/polygon.md)
