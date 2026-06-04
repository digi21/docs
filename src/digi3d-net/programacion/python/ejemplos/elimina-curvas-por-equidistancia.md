# Eliminar curvas por equidistancia

Archivo: `elimina_curvas_por_equidistancia.py` · orden con parámetros.

Elimina las curvas de nivel (de ciertos códigos) cuya cota Z sea **múltiplo de una equidistancia**.
Por ejemplo, para quedarte solo con las curvas que no caen en múltiplos de 5. Se ejecuta:

```
ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5
```

Todos los parámetros menos el último son **códigos**; el último es la **equidistancia**.

## El código

```python
import digi3d

view = digi3d.current_view()

def TieneAlgunCódigo(entidad, códigos):
    códigosEntidad = { cod.code for cod in entidad.codes }
    return len(códigos.intersection(códigosEntidad)) > 0

def EsMultiploDeEquidistancia(entidad, equidistancia):
    z = entidad[0][2]
    return 0 == z % equidistancia

if len(argv) < 2:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception('Número de parámetros incorrecto')

códigosEntidadesAModificar = set(argv[0:-1])
equidistancia = float(argv[-1])

curvasNivel = list(filter(
    lambda entidad: TieneAlgunCódigo(entidad, códigosEntidadesAModificar), view))

if len(curvasNivel) == 0:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception('No se ha localizado ninguna curva de nivel con los códigos pasados por parámetro')

curvasNivelAEliminar = list(filter(
    lambda entidad: EsMultiploDeEquidistancia(entidad, equidistancia), curvasNivel))

if len(curvasNivelAEliminar) == 0:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception('No se ha localizado ninguna curva de nivel con la equidistancia pasada por parámetros')

view.delete(curvasNivelAEliminar)
view.redraw()
```

## Cómo funciona

- **Parámetros** (`argv`): `argv[0:-1]` son todos los códigos (todos menos el último) y `argv[-1]`
  es la equidistancia, que convertimos a número con `float(...)`.
- `EsMultiploDeEquidistancia` lee la cota del **primer vértice** de la curva (`entidad[0][2]`:
  `entidad[0]` es el vértice `(x, y, z)`, y `[2]` su Z) y comprueba si es múltiplo de la
  equidistancia con el operador módulo (`z % equidistancia == 0`).
- **Dos filtros en cadena**:
  1. `curvasNivel`: las geometrías que tienen alguno de los códigos.
  2. `curvasNivelAEliminar`: de entre ésas, las que son múltiplo de la equidistancia.
  Ambos se envuelven en `list(...)` porque después usamos `len(...)` (un `filter` no tiene longitud)
  y porque vamos a modificar la vista.
- Si algún paso no encuentra nada, se avisa con sonido y se aborta con una excepción.
- Finalmente `view.delete(curvasNivelAEliminar)` borra las seleccionadas.

> El script ejecuta dentro de una transacción, así que un único UNDO deshace todo el borrado.

## Véase también

- [DrawingView](../guiones/drawing-view.md) — `delete`
- [Filtrar curvas (finas y maestras)](filtrar.md) — un ejemplo más completo con la misma matemática
