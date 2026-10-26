# Controles de tipo y medidas
<!-- id: controles-de-tipo-y-medidas -->

Estos controles de calidad de
[guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) comprueban
el tipo de la geometría analizada, su área, su perímetro, sus dimensiones en planta y su distancia a otros
puntos. La página [Repositorio de controles de calidad en Python](README.md) explica cómo se instala el
archivo y cómo se asigna un control a un código.

## Tipo de geometría

Estos controles no tienen parámetros propios. Devuelven un [GeometryError](../referencia/digi3d/exceptions.md)
si la geometría no es del tipo indicado. El mensaje incluye el primer código de la geometría.

| Control | Da error si la geometría no es |
|---|---|
| `debe_ser_area` | Un polígono o una línea cerrada en planta. |
| `debe_ser_complejo` | Un complejo. |
| `debe_ser_linea` | Una geometría de tipo `Line`. Un polígono da error. |
| `debe_ser_poligono` | Un polígono. |
| `debe_ser_punto` | Un punto. |
| `debe_ser_texto` | Un texto. |

```python
@quality_control()
def debe_ser_punto(geometry, adding_geometry, code_index):
    'Comunica un error si la geometría no es de tipo Punto'
    if type(geometry) is not digi3d.Point:
        return digi3d.GeometryError('Las geometrías con el código {} deben ser de tipo Punto'.format(geometry.codes[0].code))
```

## Área y perímetro

Estos controles calculan el área y el perímetro con la
[calculadora geográfica](../referencia/digi3d/geographic-calculator.md) de la ventana de dibujo. Los
controles pasan la geometría en lugar de una lista de coordenadas, y la calculadora recorre sus vértices.
Según los comentarios del código, la calculadora devuelve el
resultado en metros o metros cuadrados también cuando el sistema de coordenadas de la ventana es geográfico.

| Control | Parámetros | Da error si |
|---|---|---|
| `debe_tener_area_igual_o_mayor` | `area_minima` | La geometría es una línea o un polígono y el valor absoluto de su área es menor que `area_minima`. No comprueba si la línea está cerrada. |
| `debe_tener_perimetro_mayor_o_igual` | `perimetro` | El perímetro en planta es menor que `perimetro`. |
| `debe_tener_perimetro_mayor` | `perimetro` | El perímetro en planta es menor o igual que `perimetro`. |

```python
if abs(digi3d.current_view().geographic_calculator.calculate_area(geometry)) < area_minima:
    return digi3d.GeometryError('Las geometrías con el código {} deben tener un área mayor o igual que {}'.format(geometry.codes[0].code, area_minima))
```

Escribe `area_minima` y `perimetro` como números. El control compara el valor sin convertirlo: un texto
produce un `TypeError`.

## Dimensiones en planta

`debe_tener_ancho_y_alto_mayor_o_igual_valor_o_linea(ancho, alto)` calcula las dimensiones de la caja
envolvente en planta de la geometría. La dimensión menor tiene que ser mayor o igual que `ancho` y la mayor,
mayor o igual que `alto`. Si la dimensión menor es inferior a `ancho` o la mayor es inferior a `alto`, el control devuelve un `GeometryError` con los valores de `ancho` y
`alto` y un mensaje que indica que la geometría debería haberse digitalizado como una línea.

```python
ancho_geometria = geometry.max[0] - geometry.min[0]
alto_geometria = geometry.max[1] - geometry.min[1]

if min(ancho_geometria, alto_geometria) >= ancho and max(ancho_geometria, alto_geometria) >= alto:
    return
```

## Distancia mínima entre puntos

`no_puede_estar_a_menor_distancia_que(código_o_etiqueta_puntos_analizar, distancia)` solo actúa si la
geometría analizada es un punto. Recorre las geometrías no borradas que tienen los códigos del parámetro,
omite la geometría analizada y calcula la distancia en planta entre el punto y cada vértice de cada
geometría con la calculadora geográfica. Las geometrías con algún vértice a menos de `distancia` se añaden
a la lista de error. En tiempo real, el control se detiene en la primera geometría que tiene un vértice a una distancia del punto analizado menor que `distancia`.

Si la lista no está vacía, el control devuelve un
[GeometryRelationError](../referencia/digi3d/exceptions.md) con la lista y el mensaje «Este punto está muy
cerca de estos puntos».

```python
for otra_geometria in que_tengan_el_codigo_o_etiqueta(no_eliminadas(v), código_o_etiqueta_puntos_analizar):
    if otra_geometria == geometry:
        continue

    if distancia_menor_que(geometry, otra_geometria, calculadora, distancia):
        lista_de_puntos_cercanos.append(otra_geometria)

        if adding_geometry:
            break
```

El parámetro `código_o_etiqueta_puntos_analizar` admite comodines y etiquetas. Consulta
[Códigos, comodines y etiquetas](README.md#códigos-comodines-y-etiquetas). El control no filtra por tipo:
una línea con esos códigos también cuenta si alguno de sus vértices está cerca.

## Véase también

* [Repositorio de controles de calidad en Python](README.md)
* [GeographicCalculator](../referencia/digi3d/geographic-calculator.md)
* [Excepciones](../referencia/digi3d/exceptions.md)
