# Text

Módulo: [digi21.base](README.md)

Un texto situado en unas coordenadas. Hereda de [Geometry](geometry.md).

```python
Text(text, coordinates, codes=(), rotation=0.0, text_height=1.0,
     text_justification=TextJustification.SW)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `text` | `str` | Cadena de texto. |
| `coordinates` | `tuple` | Coordenadas `(x, y, z)`. |
| `codes` | iterable | Códigos. |
| `rotation` | `float` | Rotación. |
| `text_height` | `float` | Altura del texto. |
| `text_justification` | [TextJustification](textjustification.md) | Justificación. |

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `text` | `str` | L/E | Cadena de texto. |
| `height` | `float` | L/E | Altura del texto. |
| `rotation` | `float` | L/E | Rotación del texto. |
| `justification` | [TextJustification](textjustification.md) | L/E | Justificación del texto. |

Hereda además todas las propiedades y métodos de [Geometry](geometry.md).

## Ejemplo

```python
from digi21.base import Text, TextJustification

t = Text("Calle Mayor", (50, 60, 0), codes=["ROT"],
         text_height=2.5, text_justification=TextJustification.C)
```

## Véase también

- [TextJustification](textjustification.md)
- [Geometry](geometry.md)
