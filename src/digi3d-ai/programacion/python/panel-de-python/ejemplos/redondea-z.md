# Redondear la cota Z de las curvas
<!-- id: redondea-z -->

Archivo: `redondea_z.py` · orden `REDONDEA_Z` con dos parámetros: el código de maestra y el código de
fina.

La orden redondea a entero la coordenada Z de todos los vértices de las curvas de nivel no borradas que tienen
alguno de los dos códigos indicados.

## Cómo se usa

Escribe en la línea de comandos el nombre de la orden, el código de maestra y el código de fina:

```
REDONDEA_Z=020124 020123
```

La orden trata los dos códigos de la misma forma, así que el orden de los parámetros no cambia el
resultado. Si no se indican exactamente dos parámetros, la orden emite el sonido de error y muestra un
cuadro con el motivo y la forma de uso.

## El código

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

## Cómo funciona

- **Parámetros**: una orden recibe sus parámetros en la tupla global `argv`. Si `argv` no tiene
  exactamente dos elementos, la función `error` emite el sonido de error con
  [`digi3d.music`](../../referencia/digi3d/functions.md) y muestra el motivo y la forma de uso con
  [`digi3d.show_info`](../../referencia/digi3d/functions.md).
- `TieneAlgunCódigo` construye el conjunto de códigos de la geometría
  (`{ cod.code for cod in entidad.codes }`) y comprueba si tiene intersección con los códigos buscados.
  `cod.code` es la cadena del [código](../../referencia/digi21.base/featurecode.md).
- **Las geometrías no se modifican; se sustituyen**: las geometrías cargadas son de solo lectura. Para
  cambiar una curva, el guion crea una **nueva** [Line](../../referencia/digi21.base/line.md) con las
  coordenadas modificadas y borra la original.
  - `for coordenada in curva` recorre los vértices; cada `coordenada` es una tupla `(x, y, z)`. El guion
    construye vértices nuevos con la Z redondeada (`round(coordenada[2])`).
  - `digi3d.Line(curva.codes, coordenadas)` crea la línea con los mismos códigos. La geometría nueva es
    siempre una línea, aunque la original sea de otro tipo.
  - `round` redondea los valores terminados en ,5 al entero par: 2,5 pasa a 2 y 3,5 pasa a 4.
- `redondea_curvas` materializa la selección con `list(...)` y aplica los cambios en bloque
  (`view.add(añadir)`, `view.delete(curvasNivel)`).

## Véase también

- [Line](../../referencia/digi21.base/line.md) · [FeatureCode](../../referencia/digi21.base/featurecode.md)
- [Funciones del módulo](../../referencia/digi3d/functions.md) — `music`, `show_info`
