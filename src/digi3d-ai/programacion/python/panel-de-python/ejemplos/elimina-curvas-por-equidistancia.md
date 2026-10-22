# Eliminar curvas por equidistancia
<!-- id: elimina-curvas-por-equidistancia -->

Archivo: `elimina_curvas_por_equidistancia.py` · orden `ELIMINA_CURVAS_POR_EQUIDISTANCIA` con parámetros:
uno o varios códigos y la equidistancia.

Elimina las curvas de nivel que tienen alguno de los códigos indicados y cuya cota Z es **múltiplo de la
equidistancia**.

## Cómo se usa

Escribe en la línea de comandos el nombre de la orden, los códigos y, en último lugar, la equidistancia.
Por ejemplo, para borrar las curvas con código `020123` o `020124` cuya Z es múltiplo de 5:

```
ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5
```

Todos los parámetros menos el último son **códigos**; el último es la **equidistancia**, que admite la coma
o el punto como separador decimal.

Si hay menos de dos parámetros, o si la equidistancia no es un número mayor que cero, la orden emite el sonido de error y
muestra un cuadro con el motivo y la forma de uso. Si ninguna geometría tiene los códigos, o si ninguna
cumple la condición, la orden emite el sonido de error y muestra un cuadro con el motivo, sin la forma de
uso.

## El código

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

## Cómo funciona

- **Parámetros** (`argv`): `argv[0:-1]` son todos los códigos (todos menos el último) y `argv[-1]` es la
  equidistancia. La función `numero` sustituye la coma por un punto y convierte la equidistancia con
  `float`; si la conversión falla, devuelve `None`.
- **Avisos**: la función `error` emite el sonido de error con
  [`digi3d.music`](../../referencia/digi3d/functions.md) y muestra el mensaje con
  [`digi3d.show_info`](../../referencia/digi3d/functions.md). Con `mostrar_uso=False` el cuadro muestra solo
  el mensaje, sin la forma de uso.
- `EsMultiploDeEquidistancia` lee la cota del **primer vértice** de la curva (`entidad[0][2]`:
  `entidad[0]` es el vértice `(x, y, z)`, y `[2]` su Z) y comprueba con el operador módulo si es múltiplo
  de la equidistancia (`0 == z % equidistancia`).
- **Dos filtros en cadena** dentro de `EliminaCurvas`:
  1. `curvasNivel`: las geometrías que tienen alguno de los códigos.
  2. `curvasNivelAEliminar`: de entre las geometrías de `curvasNivel`, las que son múltiplo de la
     equidistancia.

  Los dos filtros se envuelven en `list(...)` porque el guion usa `len(...)` sobre el resultado (un
  `filter` no tiene longitud) y porque después modifica la vista.
- Si un filtro no encuentra nada, `EliminaCurvas` avisa con `error(..., False)` y termina sin borrar
  nada.
- Por último, `view.delete(curvasNivelAEliminar)` borra las geometrías seleccionadas.
- El primer filtro no excluye las geometrías borradas (no comprueba `entidad.deleted`).

> El guion se ejecuta dentro de una transacción, así que un único UNDO deshace todo el borrado.

## Véase también

- [DrawingView](../../referencia/digi3d/drawing-view.md) — `delete`
- [Filtrar curvas (finas y maestras)](filtrar.md) — un ejemplo más completo con la misma matemática
