# Text
<!-- id: text-2 -->

Módulo: [digi21.base](README.md)

Un texto situado en unas coordenadas. Hereda de [Geometry](geometry.md).

```python
Text(text, coordinates, codes=(), rotation=0.0, text_height=1.0,
     text_justification=TextJustification.SW, orientation=(1.0, 0.0, 0.0, 0.0))
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `text` | `str` | Cadena de texto. |
| `coordinates` | `tuple` | Coordenadas `(x, y, z)`. |
| `codes` | iterable | Códigos. |
| `rotation` | `float` | Rotación en grados, en sentido antihorario desde el eje X. |
| `text_height` | `float` | Altura del texto. |
| `text_justification` | [TextJustification](textjustification.md) | Justificación. |
| `orientation` | `tuple` | Orientación del texto en el espacio: un cuaternión `(w, x, y, z)`. El valor por defecto deja el texto en el plano XY. Consulta [Orientación en el espacio](#orientación-en-el-espacio). |

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `text` | `str` | L/E | Cadena de texto. |
| `height` | `float` | L/E | Altura del texto. |
| `rotation` | `float` | L/E | Rotación del texto, en grados, en sentido antihorario desde el eje X, alrededor del eje Z del mundo. Se aplica después de `orientation`. En versiones anteriores estaba en centésimas de grado. |
| `orientation` | `tuple` | L/E | Orientación del texto en el espacio: un cuaternión `(w, x, y, z)` que se aplica antes de `rotation`. Al asignar la propiedad, el cuaternión se normaliza. Consulta [Orientación en el espacio](#orientación-en-el-espacio). |
| `justification` | [TextJustification](textjustification.md) | L/E | Justificación del texto. |

Hereda además todas las propiedades y métodos de [Geometry](geometry.md).

## Orientación en el espacio

Un cuaternión (*quaternion*) de rotación es un grupo de cuatro números `(w, x, y, z)` que representa
una rotación en el espacio. La rotación de un ángulo θ alrededor de un eje con vector director
unitario `(ux, uy, uz)` es el cuaternión `(cos(θ/2), ux·sin(θ/2), uy·sin(θ/2), uz·sin(θ/2))`.

La rotación completa de un texto es Rz(`rotation`) · Q, donde Q es el cuaternión de `orientation` y
Rz(`rotation`) es un giro de `rotation` grados alrededor del eje Z del mundo. Q se aplica primero, en
el sistema local del texto, y Rz(`rotation`) se aplica a continuación sobre el resultado de Q. En el
sistema local del texto, el eje X sigue la línea base (la línea sobre la que se apoyan los
caracteres), el eje Y apunta hacia la parte superior de los caracteres y el eje Z apunta hacia el
lector.

| `orientation` | Posición del texto |
|---|---|
| `(1, 0, 0, 0)` | Plano XY. Es el valor por defecto: la rotación completa es solo el giro `rotation`. |
| `(cos 45°, sin 45°, 0, 0)` | Plano vertical, con la línea base horizontal: es la rotación de 90° alrededor del eje X. Con `rotation` = 0, la línea base sigue el eje X del mundo, la parte superior de los caracteres apunta hacia el semieje Z positivo y la cara legible del texto está orientada hacia el semieje Y negativo. Con otro valor de `rotation`, la línea base forma ese ángulo con el eje X en planta. |

Al asignar `orientation`, o al pasar el argumento `orientation` al constructor:

- El texto almacena el cuaternión normalizado: las cuatro componentes divididas por la norma
  √(w² + x² + y² + z²). Por eso `(1, 1, 0, 0)` equivale a `(cos 45°, sin 45°, 0, 0)`. Si la norma
  difiere de 1 en 10⁻¹² o menos, el texto almacena el cuaternión sin modificarlo.
- Si la norma es 0, infinita o NaN, el texto almacena `(1.0, 0.0, 0.0, 0.0)`. Es el caso de
  `(0, 0, 0, 0)` y de un cuaternión con alguna componente infinita o NaN.
- El valor de `rotation` no cambia. Asignar `rotation` tampoco cambia el valor de `orientation`.
- Si el texto pertenece al dibujo, la asignación lanza `ValueError`, como en el resto de propiedades:
  las geometrías del dibujo son de solo lectura.

`orientation` devuelve una tupla de cuatro `float`. En un texto creado sin el argumento
`orientation`, la propiedad devuelve `(1.0, 0.0, 0.0, 0.0)`. Los cuaterniones `q` y `-q` representan
la misma rotación, y `orientation` devuelve el cuaternión con el signo con el que se asignó. El clon
que devuelve `clone()` tiene la misma orientación que el original.

## Ejemplo

```python
from digi21.base import Text, TextJustification

t = Text("Calle Mayor", (50, 60, 0), codes=["ROT"],
         text_height=2.5, text_justification=TextJustification.C)
```

Este ejemplo crea un texto en un plano vertical, con la línea base a 30° del eje X en planta:

```python
from digi21.base import Text

# (1, 1, 0, 0) normalizado es (cos 45°, sin 45°, 0, 0): la rotación de 90° alrededor del eje X.
fachada = Text("Fachada", (50, 60, 12), codes=["ROT"], rotation=30.0,
               text_height=2.5, orientation=(1, 1, 0, 0))

print(fachada.orientation)   # (0.7071067811865475, 0.7071067811865475, 0.0, 0.0)
```

## Véase también

- [TextJustification](textjustification.md)
- [Geometry](geometry.md)
- Variable [TEXTO\_ORIENTADO\_CON\_CAMARA](/digi3d-ai/referencia/ventana-de-dibujo/variables/t/texto-orientado-con-camara.md): si está activa, las órdenes TEXTO, 1TEXTO, TEXTO\_EDITABLE, TEXTO\_R y TEXTO\_R\_EDITABLE orientan en el espacio los textos que insertan
