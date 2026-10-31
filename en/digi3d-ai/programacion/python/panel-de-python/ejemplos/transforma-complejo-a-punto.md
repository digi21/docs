# Transforming complexes into points
<!-- id: transforma-complejo-a-punto -->
<!-- origen: aa28388d0756a1810ab8f757774db9252ec9bee6 -->

File: `transforma_complejo_a_punto.py` · command `TRANSFORMA_COMPLEJO_A_PUNTO` with one or more parameters: codes of geometries to transform.

Converts nondeleted **Complex** geometries whose first code matches a supplied code into **Point** geometries at their bounding box centers. Developed to correct DGN files imported with points as complexes.

## Usage

Enter the command name and space-separated codes. For complexes with codes `BAI_VEG_03_PT` and `VEG_03_PT`:

```
TRANSFORMA_COMPLEJO_A_PUNTO=BAI_VEG_03_PT VEG_03_PT
```

With no codes, plays the error sound and displays the reason and usage.

## Code

```python
import digi3d

USO = 'TRANSFORMA_COMPLEJO_A_PUNTO=[código] [código...]'

vista = digi3d.current_view()


def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))


def transforma_complejo_a_punto(codigo):
    eliminar = list(filter(lambda g: not g.deleted and type(g) is digi3d.Complex and g.codes[0].code == codigo, vista))
    for entidad in eliminar:
        centro = ((entidad.min[0] + entidad.max[0])/2, (entidad.min[1] + entidad.max[1])/2, (entidad.min[2] + entidad.max[2])/2)
        punto = digi3d.Point(centro, entidad.codes, 0, (1.0, 1.0, 1.0))
        vista.add(punto)
        vista.delete(entidad)


if len(argv) == 0:
    error('Falta el código de las geometrías a transformar.')
else:
    for codigo in argv:
        transforma_complejo_a_punto(codigo)
    vista.redraw()
```

## How it works

- `digi3d.current_view()` returns the active [drawing window](../../referencia/digi3d/drawing-view.md).
- **Parameters**: each `argv` item is a code. If `argv` is empty, `error` plays the error sound and displays the reason and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md). If `argv` is not empty, calls `transforma_complejo_a_punto` once per code and redraws afterwards.
- **Selection with `filter`**: `transforma_complejo_a_punto` iterates `vista` (all loaded geometries), selecting nondeleted (`not g.deleted`) complexes (`type(g) is digi3d.Complex`) whose first code matches (`g.codes[0].code == codigo`).
  - `g.codes` is the geometry's [code](../../referencia/digi21.base/featurecode.md) list; `.code` is its string.
  - Wraps `filter` in `list(...)` because the loop adds and deletes geometries: avoid changing a view during lazy `filter` iteration. `list()` materializes selection first.
- **Complex center**: `entidad.min` and `entidad.max` are bounding box minimum and maximum coordinates; their midpoint is the center.
- **Creating the point**: uses `digi3d.Point(coordenadas, códigos, rotación, escala)`, passing `entidad.codes` to retain the complex's codes.
- `vista.add(punto)` adds the point; `vista.delete(entidad)` deletes the original complex.
- `vista.redraw()` redraws the window to show changes.

## See also

- [Point](../../referencia/digi21.base/point.md) · [Complex](../../referencia/digi21.base/complex.md)
- [DrawingView](../../referencia/digi3d/drawing-view.md): `add`, `delete`, `redraw`
