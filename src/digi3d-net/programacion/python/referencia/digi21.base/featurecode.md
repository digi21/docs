# FeatureCode

Módulo: [digi21.base](README.md)

Representa un código de Digi3D.NET: la cadena del código, la tabla de base de datos
asociada, su identificador, sus atributos y su visibilidad.

```python
FeatureCode(code)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `code` | `str` | Cadena del código (por ejemplo `'EDIF'`). |

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `code` | `str` | L | Cadena del código. |
| `table` | `int` | L/E | Número de tabla de base de datos asociada al código. |
| `digitab_index` | `int` | L/E | Índice del nodo correspondiente en la `digi.tab` activa. |
| `force_record` | `bool` | L/E | Fuerza el uso de este registro. |
| `id` | `int` \| `str` | L/E | Identificador: `int` (número de registro) o `str` (GUID con formato `'{...}'`). |
| `id_as_string` | `str` | L | El identificador como cadena. |
| `attributes` | `dict` | L/E | Diccionario `{str: valor}` con los atributos de base de datos. |
| `visible` | `bool` | L/E | Visibilidad en la ventana de dibujo. Solo se puede asignar si el código tiene un índice de `digi.tab` asignado. |
| `visible_in_photogrammetric_window` | `bool` | L/E | Visibilidad en la ventana fotogramétrica. |

## Propiedad estática

| Propiedad | Tipo | Descripción |
|---|---|---|
| `unknown_codes_visible` | `bool` | Indica si los códigos desconocidos (que no están en la `digi.tab`) se consideran visibles. |

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `is_id_unassigned()` | `bool` | Indica si el identificador está sin asignar. |
| `has_assigned_table()` | `bool` | Indica si el código tiene una tabla asignada. |
| `matches(pattern)` | `bool` | Indica si el código encaja con un patrón, admitiendo los comodines `*` y `?`. |
| `compose(with_wildcards)` | `str` | Compone la cadena del código combinándolo con otro que puede contener comodines. |

El operador de igualdad (`==`) compara dos códigos.

## Ejemplo

```python
from digi21.base import FeatureCode

code = FeatureCode("PARC")
code.table = 1
code.attributes = {"referencia": "12345", "superficie": 320.5}

if code.matches("PAR*"):
    print(code.code, code.attributes["referencia"])
```

## Véase también

- [DigiTab](digitab.md) — tabla de códigos.
- [Geometry](geometry.md) — propiedad `codes` y métodos `has_code`, `add_code`, `remove_code`.
