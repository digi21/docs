# Filtering intermediate and index contours
<!-- id: filtrar -->
<!-- origen: 0463185c2f50813d75db808452a3245404a8a6cb -->

File: `filtrar.py` · command `FILTRAR` with index contour code, intermediate contour code, contour interval and optional index contour interval.

Reproduces Digi for MS-DOS's **FILTRAR**. For a given contour interval:

1. **Deletes** contours whose elevation is not a multiple of the interval (for example, Z = 100.5 with interval 1, both in meters).
2. **Reassigns** intermediate or index contour codes according to elevation.

## Usage

Enter the command, index contour code, intermediate contour code and contour interval. For scale 1:1000 (interval 1), index code `020124` and intermediate code `020123`:

```
FILTRAR=020124 020123 1
```

The optional fourth parameter specifies how many contours occur per index contour. Defaults to 5. For an index contour every 4 contours:

```
FILTRAR=020124 020123 1 4
```

Contour interval accepts comma or period decimal separators and must be positive. Index contour interval must be a positive integer. Without three or four parameters, or with an invalid number, plays the error sound and displays the reason and usage.

## Code

```python
import digi3d

view = digi3d.current_view()

USO = 'FILTRAR=[código de maestras] [código de finas] [equidistancia] [intervalo de maestras, opcional]'

def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))

def numero(texto):
    """Convierte el parámetro en un número; admite la coma como separador decimal. Devuelve None si no es un número."""
    try:
        return float(texto.replace(',', '.'))
    except ValueError:
        return None

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

def creaClonCambiandoCodigo(entidad, códigosNuevos):
    """Crea un clon de la entidad sustituyendo sus códigos por los indicados.

    Argumentos:
        entidad: Entidad a clonar

        códigosNuevos: Códigos que sustituirán a los de la entidad clonada

    Devuelve:
        Entidad clonada con los códigos nuevos
    """
    clon = entidad.clone()
    codes = []
    for código in códigosNuevos:
        codes.append(digi3d.FeatureCode(código))
    clon.codes = tuple(codes)
    return clon

def es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
    return abs((round(coordenada_z, decimalesPrecision) * factorEscala) % (equidistancia * factorEscala)) < 1e-5

def es_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala, intervalo_maestras=5):
    'Devuelve verdadero si la coordenada Z pasada por parámetro corresponde a la de una curva de nivel maestra para una equidistancia de curvas y un determinado intervalo de curvas de nivel'
    if not es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
        return False

    return abs((round(coordenada_z,decimalesPrecision) * factorEscala) % (intervalo_maestras * equidistancia * factorEscala)) < 1e-5

def es_fina(coordenada_z, equidistancia, decimalesPrecision, factorEscala, intervalo_maestras=5):
    'Devuelve verdadero si la coordenada Z pasada por parámetro corresponde a la de una curva de nivel fina para una equidistancia de curvas y un determinado intervalo de curvas de nivel'
    if not es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
        return False

    return abs ((round(coordenada_z,decimalesPrecision) * factorEscala) % (intervalo_maestras * equidistancia * factorEscala) >= 1e-5)

def filtrar(códigoMaestra, códigoFina, equidistancia, intervalo_maestras):
    códigosEntidadesAModificar = códigoMaestra | códigoFina
    decimalesPrecision = 3
    factorEscala = pow(10, decimalesPrecision)

    curvasNivel = list(filter(lambda entidad: not entidad.deleted and TieneAlgunCódigo(entidad, códigosEntidadesAModificar), view))
    curvasNivelVálidasParaEscala = list(filter(lambda entidad: es_curva_fina_o_maestra(entidad[0][2], equidistancia, decimalesPrecision, factorEscala), curvasNivel))
    curvasNivelNoVálidasParaEscala = list(filter(lambda entidad: not es_curva_fina_o_maestra(entidad[0][2], equidistancia, decimalesPrecision, factorEscala), curvasNivel))

    curvasMaestras = list(filter(lambda entidad: es_maestra(entidad[0][2], equidistancia, decimalesPrecision, factorEscala, intervalo_maestras), curvasNivelVálidasParaEscala))
    curvasMaestrasAModificar = list(filter(lambda entidad: not TieneAlgunCódigo(entidad, códigoMaestra), curvasMaestras))

    curvasFinas = list(filter(lambda entidad: es_fina(entidad[0][2], equidistancia, decimalesPrecision, factorEscala, intervalo_maestras), curvasNivelVálidasParaEscala))
    curvasFinasAModificar = list(filter(lambda entidad: not TieneAlgunCódigo(entidad, códigoFina), curvasFinas))

    añadir = []
    for entidad in curvasMaestrasAModificar:
        añadir.append(creaClonCambiandoCodigo(entidad, códigoMaestra))

    for entidad in curvasFinasAModificar:
        añadir.append(creaClonCambiandoCodigo(entidad, códigoFina))

    view.add(añadir)
    view.delete(curvasMaestrasAModificar)
    view.delete(curvasFinasAModificar)
    view.delete(curvasNivelNoVálidasParaEscala)
    view.redraw()

if len(argv) not in (3, 4):
    error('Número de parámetros incorrecto.')
elif numero(argv[2]) is None or numero(argv[2]) <= 0:
    error('La equidistancia «{}» no es un número mayor que cero.'.format(argv[2]))
elif len(argv) == 4 and (not argv[3].isdigit() or int(argv[3]) == 0):
    error('El intervalo de maestras «{}» no es un número entero mayor que cero.'.format(argv[3]))
else:
    filtrar({argv[0]}, {argv[1]}, numero(argv[2]), int(argv[3]) if len(argv) == 4 else 5)
```

## How it works

- **Parameter validation** (the script's last four statements):
  - `argv` must contain three or four elements.
  - Contour interval (`argv[2]`) must be positive. `numero` replaces comma with period and converts using `float`, returning `None` on failure.
  - Index contour interval (`argv[3]`), if supplied, must contain digits only (`str.isdigit`) and be nonzero.
  - Failed validation makes `error` play the error sound and display the reason and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md).
  - If all pass, calls `filtrar` with the specified index contour interval or 5 if omitted.
- **Contour mathematics** (the three `es_*` functions):
  - `es_curva_fina_o_maestra`: elevation is a multiple of the contour interval.
  - `es_maestra`: elevation is also a multiple of `intervalo_maestras` × contour interval.
  - `es_fina`: elevation is a multiple of the interval but **not** an index contour.
  - `factorEscala` multiplies values by 10^3 after rounding elevation to three decimal places; comparison uses `1e-5` tolerance. Thus modulo (`%`) avoids dependence on decimal rounding errors. Query the drawing file's interval with [`view.equidistance`](../../referencia/digi3d/drawing-view.md).
- **Filter classification**: starting with `curvasNivel` (nondeleted geometries with either code), `filtrar` uses `list(filter(...))` for scale-valid and invalid contours, index and intermediate contours, then those needing recoding because their codes are incorrect.
- **Applying changes**: `creaClonCambiandoCodigo` clones each contour needing recoding with a new code (`digi3d.FeatureCode(cadena)`). Each clone has only that code, without table or record. `filtrar` adds clones and deletes originals and scale-invalid contours.
- Elevation comes from the first vertex (`entidad[0][2]`), assuming all vertices share Z.

## See also

- [Deleting contours by interval](elimina-curvas-por-equidistancia.md): simpler version
- [DrawingView](../../referencia/digi3d/drawing-view.md): `equidistance`
- [FeatureCode](../../referencia/digi21.base/featurecode.md) · [Line](../../referencia/digi21.base/line.md)
