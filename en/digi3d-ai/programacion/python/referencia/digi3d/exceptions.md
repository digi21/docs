# Exceptions
<!-- id: exceptions -->
<!-- origen: f901ee0c0b1752d4bbdd1ee4cee06a01b48ebaaa -->

Module: `digi3d`

These types report errors and warnings in [quality checks](../../controles-de-calidad/README.md). The quality check function **returns** an instance of one of these types or a list of instances with `return` to indicate a problem in the geometry being analyzed. Error and warning types do not derive from `BaseException`, so `raise` does not accept instances of these types.

## GeometryError

Error detected in the geometry being analyzed.

```python
GeometryError(message)
GeometryError(message, coordinates)
```

| Argument | Type | Description |
|---|---|---|
| `message` | `str` | Error description. |
| `coordinates` | `tuple` | Error coordinates `(x, y, z)` (optional). |

## GeometryRelationError

Error in the relationship between the geometry being analyzed and one or more geometries.

```python
GeometryRelationError(otherGeometry, message)
GeometryRelationError(otherGeometry, message, coordinates)
GeometryRelationError(geometries, message)
GeometryRelationError(geometries, message, coordinates)
```

| Argument | Type | Description |
|---|---|---|
| `otherGeometry` | `Geometry` | The other geometry involved. |
| `geometries` | `list[Geometry]` | Several geometries involved. |
| `message` | `str` | Error description. |
| `coordinates` | `tuple` | Error coordinates `(x, y, z)` (optional). |

## GeometryWarning

Warning (rather than an error) related to the geometry being analyzed.

```python
GeometryWarning(message)
```

| Argument | Type | Description |
|---|---|---|
| `message` | `str` | Warning description. |

## DatabaseFieldError

Error in a database field of one of the geometry codes.

```python
DatabaseFieldError(message, codeIndex, field)
```

| Argument | Type | Description |
|---|---|---|
| `message` | `str` | Error description. |
| `codeIndex` | `int` | Index of the affected code. |
| `field` | `str` | Name of the affected field. |

## Example

```python
import digi3d

@quality_control()
def debe_tener_coordenadas_z_crecientes_moderado(geometry, adding_geometry, code_index):
    'Comunica un error si se localiza un vértice cuya coordenada Z sea inferior a la coordenada Z del vértice anterior.'
    zPrevia = geometry[0][2]

    for coordenada in geometry:
        zActual = coordenada[2]

        if zActual < zPrevia:
            return digi3d.GeometryError("Vértice con la Z inferior al anterior", coordenada)

        zPrevia = zActual
```

## See also

- [Reference: Geometries](../digi21.base/geometry.md)
