# Unir curvas de nivel cercanas

Archivo: `crear_tramos_para_unir_curvas.py` · guion para el [panel de Guiones Python](../guiones/README.md).
Hay un [vídeo](https://youtu.be/9NV45QXFFvg) que lo explica.

Busca pares de curvas de nivel del mismo código y la misma cota cuyos extremos estén a menos de
cierta distancia, y dibuja una pequeña línea (un "tramo") que los une.

## El código

```python
import digi3d

view = digi3d.current_view()
calculadora = view.geographic_calculator

curvas = list(filter(
    lambda entidad: not entidad.deleted and entidad.codes[0].code == '020123',
    view))

def coordenadas_unir(curva_a, curva_b, distancia):
    coordenada_origen_a = curva_a[0]
    coordenada_fin_a = curva_a[len(curva_a) - 1]
    coordenada_origen_b = curva_b[0]
    coordenada_fin_b = curva_b[len(curva_b) - 1]

    if coordenada_origen_a[2] != coordenada_origen_b[2]:
        return None

    if (coordenada_origen_a == coordenada_origen_b or coordenada_origen_a == coordenada_fin_b
            or coordenada_fin_a == coordenada_origen_b or coordenada_fin_a == coordenada_fin_b):
        return None

    if calculadora.calculate_distance_2d(coordenada_origen_a, coordenada_origen_b) < distancia:
        return [coordenada_origen_a, coordenada_origen_b]
    if calculadora.calculate_distance_2d(coordenada_origen_a, coordenada_fin_b) < distancia:
        return [coordenada_origen_a, coordenada_fin_b]
    if calculadora.calculate_distance_2d(coordenada_fin_a, coordenada_origen_b) < distancia:
        return [coordenada_fin_a, coordenada_origen_b]
    if calculadora.calculate_distance_2d(coordenada_fin_a, coordenada_fin_b) < distancia:
        return [coordenada_fin_a, coordenada_fin_b]

    return None

anadir = []
for i in range(len(curvas)):
    curva_a = curvas[i]
    for j in range(i + 1, len(curvas)):
        curva_b = curvas[j]
        par_coordenadas = coordenadas_unir(curva_a, curva_b, 10)
        if par_coordenadas is None:
            continue
        anadir.append(digi3d.Line(curva_a.codes, par_coordenadas))

view.add(anadir)
view.redraw()

if len(anadir) > 0:
    digi3d.show_ballon('Juntar curvas', 'Se han creado {} tramos nuevos'.format(len(anadir)))
    digi3d.music(digi3d.MusicType.End)
else:
    digi3d.show_ballon('Juntar curvas', 'No se ha añadido nada')
    digi3d.music(digi3d.MusicType.Error)
```

## Cómo funciona

- `view.geographic_calculator` es la [calculadora geográfica](../guiones/geographic-calculator.md):
  calcula distancias reales (sobre el sistema de coordenadas), no euclídeas en bruto.
- Se seleccionan las curvas del código `'020123'` con `list(filter(...))`.
- **Acceso a los vértices**: `curva[0]` es el primer vértice y `curva[len(curva) - 1]` el último;
  cada uno es una tupla `(x, y, z)`. `len(curva)` es el número de vértices.
- `coordenadas_unir` decide si dos curvas se deben unir:
  - Misma cota (`coordenada_origen_a[2] != coordenada_origen_b[2]` → no).
  - Que no compartan ya un extremo.
  - Que algún par de extremos esté a menos de `distancia` (con
    `calculate_distance_2d`). Devuelve las dos coordenadas a unir, o `None`.
- **Doble bucle** `i` / `j` (con `j` empezando en `i + 1`) para comparar cada curva con las demás sin
  repetir pares.
- Por cada par válido se crea una [Line](../referencia/digi21.base/line.md) con dos vértices
  (`digi3d.Line(curva_a.codes, par_coordenadas)`) y se acumula.
- Al final se añaden todas (`view.add`), se redibuja y se avisa al usuario con un globo
  ([`show_ballon`](../guiones/functions.md)) y un sonido ([`music`](../guiones/functions.md)).

## Véase también

- [GeographicCalculator](../guiones/geographic-calculator.md) — `calculate_distance_2d`
- [Line](../referencia/digi21.base/line.md)
- [Funciones del módulo](../guiones/functions.md) — `show_ballon`, `music`
