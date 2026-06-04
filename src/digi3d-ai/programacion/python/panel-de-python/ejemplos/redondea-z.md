# Redondear la cota Z de las curvas

Archivo: `redondea_z.py` · orden con parámetros.

Redondea al entero más próximo la coordenada Z de todas las curvas de nivel que tengan alguno de
los códigos indicados. Se ejecuta como una orden:

```
REDONDEA_Z=020124 020123
```

(el primer parámetro es el código de maestra y el segundo el de fina, pero en realidad sirve
cualquier conjunto de códigos de curva).

## El código

```python
import digi3d

view = digi3d.current_view()

def TieneAlgunCódigo(entidad, códigos):
    códigosEntidad = { cod.code for cod in entidad.codes }
    return len(códigos.intersection(códigosEntidad)) > 0

def redondea_z(curva):
    coordenadas = []
    for coordenada in curva:
        coordenadas.append((coordenada[0], coordenada[1], round(coordenada[2])))
    return digi3d.Line(curva.codes, coordenadas)

if len(argv) < 2:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception('Número de parámetros incorrecto. Se esperaba [código de maestra] [código de fina]')

códigosEntidadesAModificar = { argv[0], argv[1] }

curvasNivel = list(filter(
    lambda entidad: not entidad.deleted and TieneAlgunCódigo(entidad, códigosEntidadesAModificar),
    view))

añadir = [redondea_z(entidad) for entidad in curvasNivel]

view.add(añadir)
view.delete(curvasNivel)
view.redraw()
```

## Cómo funciona

- **Parámetros**: una orden recibe sus argumentos en la lista global `argv`. Aquí esperamos al menos
  dos códigos; si no llegan, hacemos sonar un aviso de error (`digi3d.music`) y lanzamos una
  excepción para abortar.
- `TieneAlgunCódigo` construye el conjunto de códigos de la geometría
  (`{ cod.code for cod in entidad.codes }`) y comprueba si interseca con los códigos buscados.
  `cod.code` es la cadena del [código](../../referencia/digi21.base/featurecode.md).
- **Las geometrías no se modifican; se clonan**: las geometrías cargadas son de solo lectura. Para
  "cambiar" una curva se crea una **nueva** [Line](../../referencia/digi21.base/line.md) con las
  coordenadas modificadas y se borra la original.
  - `for coordenada in curva` recorre los vértices; cada `coordenada` es una tupla `(x, y, z)`.
    Construimos vértices nuevos con la Z redondeada (`round(coordenada[2])`).
  - `digi3d.Line(curva.codes, coordenadas)` crea la línea conservando los códigos.
- Se materializa la selección con `list(...)` y se aplican los cambios en bloque
  (`view.add(añadir)`, `view.delete(curvasNivel)`), que es más eficiente que de una en una.

## Véase también

- [Line](../../referencia/digi21.base/line.md) · [FeatureCode](../../referencia/digi21.base/featurecode.md)
- [Funciones del módulo](../../referencia/digi3d/functions.md) — `music`
