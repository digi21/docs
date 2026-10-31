# Deleting contours by interval
<!-- id: elimina-curvas-por-equidistancia -->
<!-- origen: ef1883da6e37d21256a2b1482b3f248896783e77 -->

File: `elimina_curvas_por_equidistancia.py` · command `ELIMINA_CURVAS_POR_EQUIDISTANCIA` with one or more codes and a contour interval.

Deletes contours with any specified code whose Z is a **multiple of the interval**.

## Usage

Enter the command, codes and, last, the interval. To delete codes `020123` or `020124` whose Z is a multiple of 5:

```
ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5
```

All parameters except the last are **codes**; the last is the **interval**, accepting comma or period decimal separators.

Fewer than two parameters, or a nonnumeric or nonpositive interval, produces the error sound and a reason and usage dialog. If no geometry has the codes or meets the condition, plays the error sound and displays the reason without usage.

## Code

```python
import digi3d
view = digi3d.current_view()

USO = 'ELIMINA_CURVAS_POR_EQUIDISTANCIA=[código] [código...] [equidistancia]'

def error(mensaje, mostrar_uso=True):
    """Emite el sonido de error y muestra el mensaje y, si se indica, la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO) if mostrar_uso else mensaje)

def numero(texto):
    """Convierte el parámetro en un número; admite la coma como separador decimal. Devuelve None si no es un número."""
    try:
        return float(texto.replace(',', '.'))
    except ValueError:
        return None

def TieneAlgunCódigo(entidad, códigos):
    """Indica si la entidad tiene alguno de los códigos.

    Argumentos:
        entidad: Entidad sobre la que realizar la consulta.

        códigos: conjunto de códigos.

    Observaciones:
        Esta función devuelve verdadero si se encuentra al menos un código de los pasados por parámetros
        de entre los códigos que tiene la entidad.
    """
    códigosEntidad = { cod.code for cod in entidad.codes }
    return len(códigos.intersection(códigosEntidad)) > 0

def EsMultiploDeEquidistancia(entidad, equidistancia):
    """Indica si la geometría pasada por parámetros (que se asume  es una curva de nivel con todos sus vértices con la misma coordenada Z)
       tiene una coordenada Z que sea múltiplo del valor pasado por parámetros.

    Argumentos:
        entidad: Curva de nivel; se comprueba la coordenada Z de su primer vértice.

        equidistancia: Equidistancia para la cual consultamos.
    """
    z = entidad[0][2]
    return 0 == z % equidistancia

def EliminaCurvas(códigosEntidadesAModificar, equidistancia):
    curvasNivel = list(filter(lambda entidad: TieneAlgunCódigo(entidad, códigosEntidadesAModificar), view))

    if len(curvasNivel) == 0:
        error('No se ha localizado ninguna curva de nivel con los códigos pasados por parámetro.', False)
        return

    curvasNivelAEliminar = list(filter(lambda entidad: EsMultiploDeEquidistancia(entidad, equidistancia), curvasNivel))

    if len(curvasNivelAEliminar) == 0:
        error('No se ha localizado ninguna curva de nivel con la equidistancia pasada por parámetros.', False)
        return

    view.delete(curvasNivelAEliminar)
    view.redraw()

if len(argv) < 2:
    error('Número de parámetros incorrecto.')
elif numero(argv[-1]) is None or numero(argv[-1]) <= 0:
    error('La equidistancia «{}» no es un número mayor que cero.'.format(argv[-1]))
else:
    EliminaCurvas(set(argv[0:-1]), numero(argv[-1]))
```

## How it works

- **Parameters** (`argv`): `argv[0:-1]` contains all codes; `argv[-1]` is interval. `numero` replaces comma with period and converts with `float`, returning `None` on failure.
- **Notices**: `error` plays the error sound with [`digi3d.music`](../../referencia/digi3d/functions.md) and displays the message with [`digi3d.show_info`](../../referencia/digi3d/functions.md). `mostrar_uso=False` omits usage.
- `EsMultiploDeEquidistancia` reads **first-vertex** elevation (`entidad[0][2]`: `entidad[0]` is the `(x, y, z)` vertex, and `entidad[0][2]` its Z), then tests divisibility using modulo (`0 == z % equidistancia`).
- **Two chained filters** in `EliminaCurvas`:
  1. `curvasNivel`: geometries with a requested code.
  2. `curvasNivelAEliminar`: geometries from `curvasNivel` whose elevation is a multiple of the interval.

  Wraps both in `list(...)` for `len(...)` (a `filter` has no length) and subsequent view modification.
- An empty filter makes `EliminaCurvas` report through `error(..., False)` and finish without deletion.
- `view.delete(curvasNivelAEliminar)` deletes selected geometries.
- The first filter does not exclude deleted geometries: it does not check `entidad.deleted`.

> Runs in a transaction: one UNDO reverses the entire deletion.

## See also

- [DrawingView](../../referencia/digi3d/drawing-view.md): `delete`
- [Filtering intermediate and index contours](filtrar.md): a fuller example using the same mathematics
