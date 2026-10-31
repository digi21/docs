# Connecting nearby contours
<!-- id: crear-tramos-para-unir-curvas -->
<!-- origen: 289baf3ed696a7ef6c41dbd8c59dd0ff98200eb5 -->

File: `crear_tramos_para_unir_curvas.py` · command `CREAR_TRAMOS_PARA_UNIR_CURVAS` with two parameters: contour code and maximum distance. A [video](https://youtu.be/9NV45QXFFvg) explains the script.

Finds contour pairs with the specified code and elevation whose endpoints are closer than the specified distance, drawing a two-vertex line segment connecting those endpoints.

## Usage

Enter the command, code and distance. For code `020123` with endpoints less than 10 units apart:

```
CREAR_TRAMOS_PARA_UNIR_CURVAS=020123 10
```

Distance accepts comma or period decimal separators. Without exactly two parameters or with a nonnumeric distance, plays the error sound and displays the reason and usage.

## Code

```python
import digi3d

USO = 'CREAR_TRAMOS_PARA_UNIR_CURVAS=[código] [distancia]'

view = digi3d.current_view()
calculadora = view.geographic_calculator


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


def coordenadas_unir(curva_a, curva_b, distancia):
    coordenada_origen_a = curva_a[0]
    coordenada_fin_a = curva_a[len(curva_a)-1]
    coordenada_origen_b= curva_b[0]
    coordenada_fin_b = curva_b[len(curva_b)-1]

    if coordenada_origen_a[2] != coordenada_origen_b[2]:
        return None

    if coordenada_origen_a == coordenada_origen_b or coordenada_origen_a == coordenada_fin_b or coordenada_fin_a == coordenada_origen_b or coordenada_fin_a == coordenada_fin_b:
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


def crea_tramos(codigo, distancia):
    curvas = list(filter(lambda entidad: not entidad.deleted and entidad.codes[0].code == codigo, view))

    anadir = []

    for i in range(len(curvas)):
        curva_a = curvas[i]

        for j in range(i+1, len(curvas)):
            curva_b = curvas[j]

            par_coordenadas = coordenadas_unir(curva_a, curva_b, distancia)

            if par_coordenadas is None:
                continue

            linea_anadir = digi3d.Line(curva_a.codes, par_coordenadas)
            anadir.append(linea_anadir)

    view.add(anadir)
    view.redraw()

    if len(anadir) > 0:
        digi3d.show_ballon('Juntar curvas', 'Se han creado {} tramos nuevos'.format(len(anadir)))
        digi3d.music(digi3d.MusicType.End)
    else:
        digi3d.show_ballon('Juntar curvas', 'No se ha añadido nada')
        digi3d.music(digi3d.MusicType.Error)


if len(argv) != 2:
    error('Número de parámetros incorrecto.')
elif numero(argv[1]) is None:
    error('La distancia «{}» no es un número.'.format(argv[1]))
else:
    crea_tramos(argv[0], numero(argv[1]))
```

## How it works

- **Parameter validation**: `argv[0]` is the code; `argv[1]` is distance. If `argv` lacks exactly two elements or `numero` cannot convert distance, `error` plays the error sound and displays the reason and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md). `numero` replaces comma with period before `float`.
- `view.geographic_calculator` is the drawing window's [geographic calculator](../../referencia/digi3d/geographic-calculator.md). `calculate_distance_2d` calculates plan distance according to its coordinate system.
- `crea_tramos` uses `list(filter(...))` to select nondeleted geometries whose first code matches.
- **Vertex access**: `curva[0]` is the first and `curva[len(curva)-1]` the last; each is an `(x, y, z)` tuple. `len(curva)` counts vertices.
- `coordenadas_unir` determines whether two contours connect:
  - Rejects different first-vertex Z values.
  - Rejects pairs sharing any endpoint.
  - Tries start–start, start–end, end–start, end–end, returning the first coordinate pair closer than `distancia`, or `None` if none qualifies.
- **Nested loops** `i` / `j`, with `j` starting at `i+1`, compare each contour with subsequent ones, testing each pair once.
- Creates a two-vertex [Line](../../referencia/digi21.base/line.md) for each accepted pair using the first contour's codes (`digi3d.Line(curva_a.codes, par_coordenadas)`), collecting the lines.
- Finally adds them all (`view.add`) and redraws. If segments were created, shows their count in a balloon ([`show_ballon`](../../referencia/digi3d/functions.md)) and plays the end sound ([`music`](../../referencia/digi3d/functions.md)); otherwise displays “Nothing was added” and plays the error sound.

## See also

- [GeographicCalculator](../../referencia/digi3d/geographic-calculator.md): `calculate_distance_2d`
- [Line](../../referencia/digi21.base/line.md)
- [Module functions](../../referencia/digi3d/functions.md): `show_ballon`, `music`, `show_info`
