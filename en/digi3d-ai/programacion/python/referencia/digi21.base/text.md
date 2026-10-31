# Text
<!-- id: text-2 -->
<!-- origen: 0ff4b420a49aa71fd85200939662f9cb35fe150e -->

Module: [digi21.base](README.md)

Text at specified coordinates, inheriting from [Geometry](geometry.md).

```python
Text(text, coordinates, codes=(), rotation=0.0, text_height=1.0,
     text_justification=TextJustification.SW, orientation=(1.0, 0.0, 0.0, 0.0))
```

| Argument | Type | Description |
|---|---|---|
| `text` | `str` | Text string |
| `coordinates` | `tuple` | `(x, y, z)` coordinates |
| `codes` | iterable | Codes |
| `rotation` | `float` | Rotation in degrees, counterclockwise from X |
| `text_height` | `float` | Text height |
| `text_justification` | [TextJustification](textjustification.md) | Justification |
| `orientation` | `tuple` | Spatial text orientation: `(w, x, y, z)` quaternion. Defaults to the XY plane. See [Spatial orientation](#spatial-orientation) |

## Properties

| Property | Type | R/W | Description |
|---|---|---|---|
| `text` | `str` | R/W | Text string |
| `height` | `float` | R/W | Text height |
| `rotation` | `float` | R/W | Text rotation in degrees, counterclockwise from X around world Z. Applied after `orientation`. Earlier versions used hundredths of a degree |
| `orientation` | `tuple` | R/W | Spatial text orientation: `(w, x, y, z)` quaternion applied before `rotation`. Normalized on assignment. See [Spatial orientation](#spatial-orientation) |
| `justification` | [TextJustification](textjustification.md) | R/W | Text justification |

Also inherits all [Geometry](geometry.md) properties and methods.

## Spatial orientation

A rotation quaternion is four numbers `(w, x, y, z)` representing a spatial rotation. Rotation by θ around unit direction vector `(ux, uy, uz)` is `(cos(θ/2), ux·sin(θ/2), uy·sin(θ/2), uz·sin(θ/2))`.

Full text rotation is Rz(`rotation`) · Q, where Q is the `orientation` quaternion and Rz(`rotation`) rotates `rotation` degrees around world Z. Q applies first in text local coordinates; Rz(`rotation`) then applies to its result. In text local coordinates, X follows the baseline supporting the characters, Y points toward their top, and Z points toward the reader.

| `orientation` | Text position |
|---|---|
| `(1, 0, 0, 0)` | XY plane (default). Full rotation is just `rotation` |
| `(cos 45°, sin 45°, 0, 0)` | Vertical plane with horizontal baseline: 90° rotation around X. With `rotation` = 0, the baseline follows world X, character tops point toward positive Z, and the readable face points toward negative Y. Other `rotation` values set the baseline horizontal angle from X |

When assigning `orientation` or passing `orientation` to the constructor:

* The stored quaternion is normalized by dividing all four components by √(w² + x² + y² + z²). Thus `(1, 1, 0, 0)` equals `(cos 45°, sin 45°, 0, 0)`. If the norm differs from 1 by at most 10⁻¹², it is stored unchanged.
* Zero, infinite, or NaN norms store `(1.0, 0.0, 0.0, 0.0)`. Examples include `(0, 0, 0, 0)` and any quaternion with an infinite or NaN component.
* `rotation` is unchanged. Assigning `rotation` likewise leaves `orientation` unchanged.
* For text belonging to the drawing, assignment raises `ValueError`, as with other properties: drawing geometries are read-only.

`orientation` returns four `float` values. Without an `orientation` constructor argument, it returns `(1.0, 0.0, 0.0, 0.0)`. Quaternions `q` and `-q` represent the same rotation; `orientation` retains the assigned sign. A `clone()` has the original orientation.

### Horizontal direction belongs in `rotation`

Set `rotation` to the horizontal baseline direction and use `orientation` only to tilt text out of XY without rotation around Z. For facade text with a 30° horizontal baseline, use `rotation = 30` and `orientation = (cos 45°, sin 45°, 0, 0)`, rather than `rotation = 0` with a quaternion including the 30° turn. Digi3D.AI commands and DWG/DXF, DGN, and GeoMedia importers always store text this way.

Both forms look identical, but text retains its assigned quaternion without transferring Z rotation to `rotation`. With a quaternion rotating around Z:

* `rotation` is not the horizontal text direction. Setting `rotation = a` gives baseline angle `a` plus the quaternion own horizontal baseline angle.
* Formats storing only rotation (BIN, VEC, GeoJSON, PDF) use the `rotation` direction. See [Text orientation in drawing files](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md#text-orientation-in-drawing-files).
* XY text with a quaternion rotating only around Z counts as oriented. BIND stores it in `Digi21.DigiNG.Text2`, which earlier Digi3D versions cannot load.

## Example

```python
from digi21.base import Text, TextJustification

t = Text("Calle Mayor", (50, 60, 0), codes=["ROT"],
         text_height=2.5, text_justification=TextJustification.C)
```

Create vertical text with a baseline 30° from horizontal X:

```python
from digi21.base import Text

# Normalized (1, 1, 0, 0) is (cos 45°, sin 45°, 0, 0): a 90° rotation around X.
fachada = Text("Fachada", (50, 60, 12), codes=["ROT"], rotation=30.0,
               text_height=2.5, orientation=(1, 1, 0, 0))

print(fachada.orientation)   # (0.7071067811865475, 0.7071067811865475, 0.0, 0.0)
```

## See also

* [TextJustification](textjustification.md)
* [Geometry](geometry.md)
* [CAMERA\_ORIENTED\_TEXT](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md): when enabled, TEXT, 1TEXT, EDITABLE\_TEXT, TEXT\_R, and EDITABLE\_TEXT\_R spatially orient inserted text
