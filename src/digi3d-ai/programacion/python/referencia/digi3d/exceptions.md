# Excepciones
<!-- id: exceptions -->

Módulo: `digi3d`

Tipos para informar de errores y advertencias en los [controles de calidad](../../controles-de-calidad/README.md). La función de control de calidad los **devuelve** con `return` (uno, o una lista de ellos) para indicar que la geometría que se está analizando tiene un problema. No derivan de `BaseException`, así que `raise` no los admite.

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

## Véase también

- [Referencia: Geometrías](../digi21.base/geometry.md)
