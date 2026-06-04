# Filtrar curvas (finas y maestras)

Archivo: `filtrar.py` · orden con parámetros.

Reproduce el antiguo programa **FILTRAR** de Digi para MS-DOS. Para una equidistancia dada:

1. **Elimina** las curvas cuya cota no encaja con la escala (p. ej. una curva en Z = 100,5 cuando la
   equidistancia es 1).
2. **Reasigna** el código de curva fina o maestra según la cota.

Se ejecuta (código de maestra, código de fina, equidistancia):

```
FILTRAR=020124 020123 1
```

## El código

```python
import digi3d

view = digi3d.current_view()

def TieneAlgunCódigo(entidad, códigos):
    códigosEntidad = { cod.code for cod in entidad.codes }
    return len(códigos.intersection(códigosEntidad)) > 0

def creaClonCambiandoCodigo(entidad, códigosNuevos):
    clon = entidad.clone()
    codes = [digi3d.FeatureCode(código) for código in códigosNuevos]
    clon.codes = tuple(codes)
    return clon

def es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
    return abs((round(coordenada_z, decimalesPrecision) * factorEscala) % (equidistancia * factorEscala)) < 1e-5

def es_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala, intervalo_maestras=5):
    if not es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
        return False
    return abs((round(coordenada_z, decimalesPrecision) * factorEscala) % (intervalo_maestras * equidistancia * factorEscala)) < 1e-5

def es_fina(coordenada_z, equidistancia, decimalesPrecision, factorEscala, intervalo_maestras=5):
    if not es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
        return False
    return abs((round(coordenada_z, decimalesPrecision) * factorEscala) % (intervalo_maestras * equidistancia * factorEscala)) >= 1e-5

if len(argv) < 3:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception('Número de parámetros incorrecto. Se esperaba [código de maestra] [código de fina] [equidistancia]')

códigoMaestra = { argv[0] }
códigoFina = { argv[1] }
códigosEntidadesAModificar = { argv[0], argv[1] }
equidistancia = float(argv[2])
decimalesPrecision = 3
factorEscala = pow(10, decimalesPrecision)

curvasNivel = list(filter(lambda e: not e.deleted and TieneAlgunCódigo(e, códigosEntidadesAModificar), view))
curvasNivelVálidasParaEscala = list(filter(lambda e: es_curva_fina_o_maestra(e[0][2], equidistancia, decimalesPrecision, factorEscala), curvasNivel))
curvasNivelNoVálidasParaEscala = list(filter(lambda e: not es_curva_fina_o_maestra(e[0][2], equidistancia, decimalesPrecision, factorEscala), curvasNivel))

curvasMaestras = list(filter(lambda e: es_maestra(e[0][2], equidistancia, decimalesPrecision, factorEscala), curvasNivelVálidasParaEscala))
curvasMaestrasAModificar = list(filter(lambda e: not TieneAlgunCódigo(e, códigoMaestra), curvasMaestras))

curvasFinas = list(filter(lambda e: es_fina(e[0][2], equidistancia, decimalesPrecision, factorEscala), curvasNivelVálidasParaEscala))
curvasFinasAModificar = list(filter(lambda e: not TieneAlgunCódigo(e, códigoFina), curvasFinas))

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
```

## Cómo funciona

- **La matemática de las curvas** (las tres funciones `es_*`):
  - `es_curva_fina_o_maestra`: la cota encaja con la escala si es múltiplo de la equidistancia.
  - `es_maestra`: además es múltiplo de `intervalo_maestras` × equidistancia (por defecto, una maestra
    cada 5 finas).
  - `es_fina`: encaja con la escala pero **no** es maestra.
  - El truco del `factorEscala` (multiplicar por 10^3 y comparar con una tolerancia `1e-5`) evita los
    errores de redondeo del módulo (`%`) con números decimales. La equidistancia "real" se puede
    consultar también con [`view.equidistance`](../guiones/drawing-view.md).
- **Clasificación por filtros**: a partir de `curvasNivel` se obtienen, encadenando `list(filter(...))`:
  las válidas/no válidas para la escala, las maestras y las finas, y de éstas las que hay que
  recodificar (las que aún no tienen el código correcto).
- **Aplicar cambios**: por cada curva a recodificar se crea un clon con el código nuevo
  (`creaClonCambiandoCodigo`, que usa `digi3d.FeatureCode(cadena)`), se añaden todas y se borran las
  originales y las no válidas para la escala.
- La cota de cada curva se toma de su primer vértice (`e[0][2]`), asumiendo que todos los vértices
  de una curva comparten Z.

## Véase también

- [Eliminar curvas por equidistancia](elimina-curvas-por-equidistancia.md) — versión más sencilla
- [DrawingView](../guiones/drawing-view.md) — `equidistance`
- [FeatureCode](../referencia/digi21.base/featurecode.md) · [Line](../referencia/digi21.base/line.md)
