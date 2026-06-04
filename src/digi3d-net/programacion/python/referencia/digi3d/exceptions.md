# Excepciones

Módulo: `digi3d`

Excepciones para informar de errores y advertencias, sobre todo en los **guiones de
control de calidad**: el guion las lanza (`raise`) para indicar que la geometría que se
está analizando tiene un problema.

## GeometryError

Error detectado en la geometría que se está analizando.

```python
GeometryError(message)
GeometryError(message, coordinates)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `message` | `str` | Descripción del error. |
| `coordinates` | `tuple` | Coordenadas `(x, y, z)` del error (opcional). |

## GeometryRelationError

Error en la relación entre la geometría analizada y otra(s).

```python
GeometryRelationError(otherGeometry, message)
GeometryRelationError(otherGeometry, message, coordinates)
GeometryRelationError(geometries, message)
GeometryRelationError(geometries, message, coordinates)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `otherGeometry` | `Geometry` | La otra geometría implicada. |
| `geometries` | `list[Geometry]` | Varias geometrías implicadas. |
| `message` | `str` | Descripción del error. |
| `coordinates` | `tuple` | Coordenadas `(x, y, z)` del error (opcional). |

## GeometryWarning

Advertencia (no error) relacionada con la geometría que se está analizando.

```python
GeometryWarning(message)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `message` | `str` | Descripción de la advertencia. |

## DatabaseFieldError

Error en un campo de base de datos de un código de la geometría.

```python
DatabaseFieldError(message, codeIndex, field)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `message` | `str` | Descripción del error. |
| `codeIndex` | `int` | Índice del código afectado. |
| `field` | `str` | Nombre del campo afectado. |

## Ejemplo

```python
import digi3d

def control(geometry):
    if not geometry.closed:
        raise digi3d.GeometryError("La parcela no está cerrada", geometry.first_vertex)
```

## Véase también

- [Referencia: Geometrías](../digi21.base/geometry.md)
