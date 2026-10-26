# Filtrar curvas (finas y maestras)
<!-- id: filtrar -->

Archivo: `filtrar.py` · orden `FILTRAR` con parámetros: código de maestra, código de fina, equidistancia
y, de forma opcional, intervalo de maestras.

La orden reproduce el antiguo programa **FILTRAR** de Digi para MS-DOS. Para una equidistancia dada:

1. **Elimina** las curvas cuya cota no es múltiplo de la equidistancia (por ejemplo, con las cotas Z y la equidistancia expresadas en metros, una curva en Z = 100,5 cuando la
   equidistancia es 1).
2. **Reasigna** el código de curva fina o maestra según la cota.

## Cómo se usa

Escribe en la línea de comandos el nombre de la orden, el código de maestra, el código de fina y la
equidistancia. Por ejemplo, para filtrar a escala 1:1000 (equidistancia 1) unas curvas con código de
maestra `020124` y código de fina `020123`:

```
FILTRAR=020124 020123 1
```

El cuarto parámetro, opcional, es el intervalo de maestras: cada cuántas curvas hay una maestra. Si no se
indica, vale 5. Por ejemplo, para una maestra cada 4 curvas:

```
FILTRAR=020124 020123 1 4
```

La equidistancia admite la coma o el punto como separador decimal y tiene que ser mayor que cero. El
intervalo de maestras tiene que ser un número entero mayor que cero. Si no se indican tres o cuatro
parámetros, o si un número no es válido, la orden emite el sonido de error y muestra un cuadro con el
motivo y la forma de uso.

## El código

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

## Cómo funciona

- **Comprobación de los parámetros** (las cuatro últimas instrucciones del guion):
  - `argv` tiene que tener tres o cuatro elementos.
  - La equidistancia (`argv[2]`) tiene que ser un número mayor que cero. La función `numero` sustituye la
    coma por un punto y la convierte con `float`; si la conversión falla, devuelve `None`.
  - El intervalo de maestras (`argv[3]`), si está, tiene que estar formado solo por dígitos
    (`str.isdigit`) y ser distinto de cero.
  - Si una comprobación falla, la función `error` emite el sonido de error y muestra el motivo y la forma
    de uso con [`digi3d.show_info`](../../referencia/digi3d/functions.md).
  - Si todas se cumplen, el guion llama a `filtrar` con el intervalo de maestras indicado o, si no hay
    cuarto parámetro, con 5.
- **La matemática de las curvas** (las tres funciones `es_*`):
  - `es_curva_fina_o_maestra`: comprueba si la cota es múltiplo de la equidistancia.
  - `es_maestra`: además, la cota es múltiplo de `intervalo_maestras` × equidistancia.
  - `es_fina`: comprueba si la cota es múltiplo de la equidistancia pero **no** corresponde a una curva maestra.
  - El `factorEscala` multiplica los valores por 10^3 después de redondear la cota a tres decimales, y la
    comparación usa una tolerancia de `1e-5`. Así el módulo (`%`) no depende de los errores de redondeo de
    los números decimales. La equidistancia del archivo de dibujo se puede consultar también con
    [`view.equidistance`](../../referencia/digi3d/drawing-view.md).
- **Clasificación por filtros**: a partir de `curvasNivel` (las geometrías no borradas con el código de
  maestra o el de fina), `filtrar` obtiene con `list(filter(...))` las curvas válidas y no válidas para la
  escala, las maestras y las finas y, de las maestras y las finas, las que hay que recodificar: las que aún
  no tienen el código correcto.
- **Aplicar cambios**: por cada curva a recodificar, `creaClonCambiandoCodigo` crea un clon con el código
  nuevo (`digi3d.FeatureCode(cadena)`). El clon tiene un único código, el nuevo, sin tabla ni registro.
  `filtrar` añade todos los clones y borra las curvas originales y las no válidas para la escala.
- La cota de cada curva se toma de su primer vértice (`entidad[0][2]`), así que el guion supone que todos
  los vértices de una curva tienen la misma Z.

## Véase también

- [Eliminar curvas por equidistancia](elimina-curvas-por-equidistancia.md) — versión más sencilla
- [DrawingView](../../referencia/digi3d/drawing-view.md) — `equidistance`
- [FeatureCode](../../referencia/digi21.base/featurecode.md) · [Line](../../referencia/digi21.base/line.md)
