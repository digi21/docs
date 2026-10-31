# Type and measurement controls
<!-- id: controles-de-tipo-y-medidas -->
<!-- origen: fa0801082240be7caa7771f33780195657716954 -->

These [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) controls check geometry type, area, perimeter, plan dimensions and distance to other points. [Python quality control repository](README.md) explains installation and code assignment.

## Geometry type

No additional parameters. Return [GeometryError](../referencia/digi3d/exceptions.md) for an incorrect type, including the geometry's first code in the message.

| Control | Error unless geometry is |
| --- | --- |
| `debe_ser_area` | A polygon or plan-closed line. |
| `debe_ser_complejo` | A complex. |
| `debe_ser_linea` | `Line`. Polygons fail. |
| `debe_ser_poligono` | A polygon. |
| `debe_ser_punto` | A point. |
| `debe_ser_texto` | A text. |

```python
@quality_control()
def debe_ser_punto(geometry, adding_geometry, code_index):
    'Comunica un error si la geometría no es de tipo Punto'
    if type(geometry) is not digi3d.Point:
        return digi3d.GeometryError('Las geometrías con el código {} deben ser de tipo Punto'.format(geometry.codes[0].code))
```

## Area and perimeter

Use the drawing window's [geographic calculator](../referencia/digi3d/geographic-calculator.md), passing the geometry instead of a coordinate list; the calculator iterates vertices. According to code comments, results use meters or square meters even for geographic coordinate systems.

| Control | Parameters | Error if |
| --- | --- | --- |
| `debe_tener_area_igual_o_mayor` | `area_minima` | A line or polygon has absolute area below `area_minima`. Does not check line closure. |
| `debe_tener_perimetro_mayor_o_igual` | `perimetro` | Plan perimeter is below `perimetro`. |
| `debe_tener_perimetro_mayor` | `perimetro` | Plan perimeter is at or below `perimetro`. |

```python
if abs(digi3d.current_view().geographic_calculator.calculate_area(geometry)) < area_minima:
    return digi3d.GeometryError('Las geometrías con el código {} deben tener un área mayor o igual que {}'.format(geometry.codes[0].code, area_minima))
```

Enter `area_minima` and `perimetro` as numbers. Comparison performs no conversion: text produces `TypeError`.

## Plan dimensions

`debe_tener_ancho_y_alto_mayor_o_igual_valor_o_linea(ancho, alto)` calculates plan bounding box dimensions. The smaller must be at least `ancho`, the larger at least `alto`. If the smaller is below `ancho` or larger below `alto`, returns `GeometryError` including `ancho` and `alto`, indicating the geometry should have been digitized as a line.

```python
ancho_geometria = geometry.max[0] - geometry.min[0]
alto_geometria = geometry.max[1] - geometry.min[1]

if min(ancho_geometria, alto_geometria) >= ancho and max(ancho_geometria, alto_geometria) >= alto:
    return
```

## Minimum point distance

`no_puede_estar_a_menor_distancia_que(código_o_etiqueta_puntos_analizar, distancia)` applies only to points. Iterates nondeleted geometries with matching codes, skipping the analyzed geometry, and calculates plan distance from the point to every vertex with the geographic calculator. Geometries with a vertex closer than `distancia` join the error list. Real-time analysis stops at the first geometry with a vertex closer than `distancia`.

A nonempty list produces [GeometryRelationError](../referencia/digi3d/exceptions.md) with that list and “This point is very close to these points”.

```python
for otra_geometria in que_tengan_el_codigo_o_etiqueta(no_eliminadas(v), código_o_etiqueta_puntos_analizar):
    if otra_geometria == geometry:
        continue

    if distancia_menor_que(geometry, otra_geometria, calculadora, distancia):
        lista_de_puntos_cercanos.append(otra_geometria)

        if adding_geometry:
            break
```

`código_o_etiqueta_puntos_analizar` accepts wildcards and tags; see [Codes, wildcards and tags](README.md#codes-wildcards-and-tags). Does not filter by type: a line also counts if one of its vertices is close.

## See also

* [Python quality control repository](README.md)
* [GeographicCalculator](../referencia/digi3d/geographic-calculator.md)
* [Exceptions](../referencia/digi3d/exceptions.md)
