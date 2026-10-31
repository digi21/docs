# Rounding contour Z elevations
<!-- id: redondea-z -->
<!-- origen: eaf62c253a67173ba18fa691c19415a00ee11427 -->

File: `redondea_z.py` · command `REDONDEA_Z` with two parameters: index and intermediate contour codes.

Rounds every vertex's Z to an integer for nondeleted contours with either code.

## Usage

Enter the command, index contour code and intermediate contour code:

```
REDONDEA_Z=020124 020123
```

Both codes are treated equally, so parameter order does not affect the result. Without exactly two parameters, plays the error sound and displays the reason and usage.

## Code

```python
import digi3d

view = digi3d.current_view()

USO = 'REDONDEA_Z=[código de maestra] [código de fina]'

def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))

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

def redondea_z(curva):
    coordenadas = []
    for coordenada in curva:
        coordenadas.append((coordenada[0], coordenada[1], round(coordenada[2])))

    clon = digi3d.Line(curva.codes, coordenadas)
    return clon

def redondea_curvas(códigosEntidadesAModificar):
    curvasNivel = list(filter(lambda entidad: not entidad.deleted and TieneAlgunCódigo(entidad, códigosEntidadesAModificar), view))

    añadir = []
    for entidad in curvasNivel:
        añadir.append(redondea_z(entidad))

    view.add(añadir)
    view.delete(curvasNivel)
    view.redraw()

if len(argv) != 2:
    error('Número de parámetros incorrecto.')
else:
    redondea_curvas({argv[0], argv[1]})
```

## How it works

- **Parameters** arrive in the global `argv` tuple. Unless `argv` has exactly two elements, `error` plays the error sound with [`digi3d.music`](../../referencia/digi3d/functions.md) and displays the reason and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md).
- `TieneAlgunCódigo` builds the geometry code set (`{ cod.code for cod in entidad.codes }`) and tests intersection with the requested codes. `cod.code` is the [code](../../referencia/digi21.base/featurecode.md) string.
- **Geometries are replaced, not modified**: loaded geometries are read-only. Creates a **new** [Line](../../referencia/digi21.base/line.md) with changed coordinates and deletes the original.
  - `for coordenada in curva` iterates vertices; each `coordenada` is an `(x, y, z)` tuple. Builds new vertices with rounded Z (`round(coordenada[2])`).
  - `digi3d.Line(curva.codes, coordenadas)` retains codes. The new geometry is always a line, regardless of original type.
  - `round` rounds .5 ties to even: 2.5 becomes 2 and 3.5 becomes 4.
- `redondea_curvas` materializes selection using `list(...)` and applies changes in bulk (`view.add(añadir)`, `view.delete(curvasNivel)`).

## See also

- [Line](../../referencia/digi21.base/line.md) · [FeatureCode](../../referencia/digi21.base/featurecode.md)
- [Module functions](../../referencia/digi3d/functions.md): `music`, `show_info`
