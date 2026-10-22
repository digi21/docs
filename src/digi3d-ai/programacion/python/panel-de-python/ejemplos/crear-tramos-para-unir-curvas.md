# Unir curvas de nivel cercanas
<!-- id: crear-tramos-para-unir-curvas -->

Archivo: `crear_tramos_para_unir_curvas.py` · orden `CREAR_TRAMOS_PARA_UNIR_CURVAS` con dos parámetros:
el código de las curvas y la distancia máxima. Hay un [vídeo](https://youtu.be/9NV45QXFFvg) que explica el
guion.

Busca pares de curvas de nivel con el código indicado y la misma cota cuyos extremos estén a menos de la
distancia indicada, y dibuja una línea de dos vértices (un "tramo") que une esos extremos.

## Cómo se usa

Escribe en la línea de comandos el nombre de la orden, el código y la distancia. Por ejemplo, para unir
las curvas con código `020123` cuyos extremos están a menos de 10 unidades:

```
CREAR_TRAMOS_PARA_UNIR_CURVAS=020123 10
```

La distancia admite la coma o el punto como separador decimal. Si no se indican exactamente dos
parámetros, o si la distancia no es un número, la orden emite el sonido de error y muestra un cuadro con el
motivo y la forma de uso.

## El código

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

## Cómo funciona

- **Comprobación de los parámetros**: `argv[0]` es el código y `argv[1]` la distancia. Si `argv` no tiene
  exactamente dos elementos, o si la función `numero` no puede convertir la distancia en número, la
  función `error` emite el sonido de error y muestra el motivo y la forma de uso con
  [`digi3d.show_info`](../../referencia/digi3d/functions.md). `numero` sustituye la coma por un punto antes
  de llamar a `float`.
- `view.geographic_calculator` es la [calculadora geográfica](../../referencia/digi3d/geographic-calculator.md)
  de la ventana de dibujo. `calculate_distance_2d` calcula la distancia en planta según el sistema de
  coordenadas de la ventana.
- `crea_tramos` selecciona con `list(filter(...))` las geometrías no borradas cuyo primer código es el
  código indicado.
- **Acceso a los vértices**: `curva[0]` es el primer vértice y `curva[len(curva)-1]` el último; cada
  vértice es una tupla `(x, y, z)`. `len(curva)` es el número de vértices.
- `coordenadas_unir` decide si dos curvas se unen:
  - Descarta el par si la Z del primer vértice de las dos curvas es distinta.
  - Descarta el par si algún extremo de una curva coincide con algún extremo de la otra.
  - Prueba las combinaciones de extremos en este orden: origen-origen, origen-fin, fin-origen y fin-fin.
    Devuelve las dos coordenadas de la primera combinación cuya distancia es menor que `distancia`, o
    `None` si ninguna lo es.
- **Doble bucle** `i` / `j` (con `j` empezando en `i+1`): compara cada curva con las siguientes, así que
  cada par se evalúa una sola vez.
- Por cada par válido, el guion crea una [Line](../../referencia/digi21.base/line.md) de dos vértices con
  los códigos de la primera curva (`digi3d.Line(curva_a.codes, par_coordenadas)`) y la acumula.
- Al final, el guion añade todas las líneas (`view.add`) y redibuja la ventana. Si ha creado algún tramo,
  muestra un globo ([`show_ballon`](../../referencia/digi3d/functions.md)) con el número de tramos y emite
  el sonido de fin ([`music`](../../referencia/digi3d/functions.md)); si no ha creado ninguno, muestra el
  globo «No se ha añadido nada» y emite el sonido de error.

## Véase también

- [GeographicCalculator](../../referencia/digi3d/geographic-calculator.md) — `calculate_distance_2d`
- [Line](../../referencia/digi21.base/line.md)
- [Funciones del módulo](../../referencia/digi3d/functions.md) — `show_ballon`, `music`, `show_info`
