# Z coordinate controls
<!-- id: controles-de-coordenada-z -->
<!-- origen: 546a979ef8ae0e9c5eaa406737bfeb432a225d60 -->

These [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) controls check vertex Z. [Python quality control repository](README.md) explains installation and code assignment.

All return [GeometryError](../referencia/digi3d/exceptions.md) with the failing vertex's coordinates, except the two index/intermediate contour checks, which supply no coordinates.

## Z progression along a geometry

No additional parameters. Return the first failing vertex.

| Control | Error if a vertex has |
| --- | --- |
| `debe_tener_todos_los_vertices_con_la_misma_coordenada_z` | Z different from the first vertex. |
| `debe_tener_coordenadas_z_crecientes` | Z at or below the previous vertex. |
| `debe_tener_coordenadas_z_crecientes_moderado` | Z below the previous vertex. |
| `debe_tener_coordenadas_z_decrecientes` | Z at or above the previous vertex. |
| `debe_tener_coordenadas_z_decrecientes_moderado` | Z above the previous vertex. |

`debe_tener_todos_los_vertices_con_la_misma_coordenada_z` first compares geometry minimum and maximum Z with `digi3d.same_coordinates`, using configured tolerance. Equal values pass. Otherwise finds the first vertex whose Z differs exactly from the first vertex's Z.

```python
@quality_control()
def debe_tener_todos_los_vertices_con_la_misma_coordenada_z(geometry, adding_geometry, code_index):
    'Comunica un error si localiza un vértice con la coordenada Z distinta de la del primer vértice'
    if digi3d.same_coordinates(geometry.min[2], geometry.max[2]):
        return

    zInicial = geometry[0][2]
    for coordenada in geometry:
        if coordenada[2] != zInicial:
            return digi3d.GeometryError('Las geometrías con este código deben tener todos los vértices con la misma coordenada Z', coordenada)
```

## Index and intermediate contours

Read `equidistance` from the drawing window, corresponding to [EQUIDISTANCE](../../../referencia/ventana-de-dibujo/variables/e/equidistancia.md). Every fifth contour is an index contour.

| Control | Error if first-vertex Z |
| --- | --- |
| `la_coordenada_z_del_primer_vertice_debe_ser_el_de_una_curva_maestra` | Is not a multiple of five times the interval. Message: “Not an index contour”. |
| `la_coordenada_z_del_primer_vertice_debe_ser_el_de_una_curva_fina` | Is not a multiple of the interval, or is a multiple of five times it. Message: “Not an intermediate contour”. |

Uses `%` without tolerance. Decimal intervals such as 0.1 can yield a nonzero remainder due to floating-point rounding.

```python
def es_maestra(coordenada_z, equidistancia, intervalo_maestras=5):
    if not es_curva_fina_o_maestra(coordenada_z, equidistancia):
        return False

    return 0 == coordenada_z % (intervalo_maestras * equidistancia)
```

## Difference from the digital terrain model

Project each vertex to terrain using [drawing window](../referencia/digi3d/drawing-view.md) method `project`, skipping unprojectable vertices. `distancia` is the permitted Z difference in drawing Z units. Return the first failing vertex.

| Control | Error if |
| --- | --- |
| `marcar_error_si_diferencia_z_al_proyectar_mdt_superior_a` | Absolute projected-to-vertex Z difference exceeds `distancia`. |
| `marcar_error_si_diferencia_z_al_proyectar_mdt_inferior_a` | Absolute difference is below `distancia`. |
| `marcar_error_si_diferencia_z_de_zetas_absolutas_al_proyectar_mdt_es_superior_a_valor` | Absolute difference between integer-truncated Z values exceeds `distancia`. |
| `marcar_error_si_diferencia_z_de_zetas_absolutas_al_proyectar_mdt_es_interior_a_valor` | Absolute difference between integer-truncated Z values is below `distancia`. |

The last two apply `int()` to each Z before subtraction.

```python
for coordenada in geometry:
    z_proyectada = v.project(coordenada)

    if z_proyectada is None:
        continue

    distancia_calculada = abs(z_proyectada - coordenada[2])
    if distancia_calculada > distancia:
        return digi3d.GeometryError('Vértice de la geometría con una diferencia en Z con respecto al MDT de: {} que es superior a: {}'.format(distancia_calculada, distancia), coordenada)
```

## Z difference where lines touch

`al_tocar_lineas_debe_haber_una_diferencia_de_z_…` controls take:

| Parameter | Description |
| --- | --- |
| `código_o_etiqueta_analizar` | Comparison geometry codes, accepting wildcards and tags. See [Codes, wildcards and tags](README.md#codes-wildcards-and-tags). |
| `tolerancia` | Z difference for comparison. |

Select nondeleted matching geometries with overlapping plan bounding boxes. `digi3d.get_intersections` returns analyzed geometry vertices coinciding in plan with another geometry's vertex. Segment crossings without common vertices do not count. At each contact, calculate the absolute difference between coincident vertices' Z values.

| Control | Error if difference is |
| --- | --- |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_inferior_a` | At or above `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_inferior_o_igual_a` | Above `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_superior_a` | At or below `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_superior_o_igual_a` | Below `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_igual_a` | Different from `tolerancia`. |

On demand, all five return a list of `GeometryError` for failing contacts, with analyzed vertex coordinates. Real-time analysis returns only the first error.

```python
intersecciones = digi3d.get_intersections(geometry, candidatos)
for coordenadas_interseccion in intersecciones:
    geometrias_que_llegan_a_esta_interseccion = intersecciones[coordenadas_interseccion]
    vertice_geometria_analizando = geometrias_que_llegan_a_esta_interseccion[geometry]
    coordenada_de_geometria_analizando = geometry[vertice_geometria_analizando]
    coordenada_z_comparar = coordenada_de_geometria_analizando[2]

    for otra_geometria in geometrias_que_llegan_a_esta_interseccion:
        if otra_geometria == geometry:
            continue

        vertice_otra_geometria = geometrias_que_llegan_a_esta_interseccion[otra_geometria]
        coordenada_z_otra_geometria = otra_geometria[vertice_otra_geometria][2]

        diferenciaZ = abs(coordenada_z_otra_geometria - coordenada_z_comparar)
        if diferenciaZ >= tolerancia:
            errores_detectados.append(digi3d.GeometryError("Las geometrías se tocan con una diferencia en la coordenada Z de {} (superior o igual a {})".format(diferenciaZ, tolerancia), coordenada_de_geometria_analizando))

            if adding_geometry:
                return errores_detectados

return errores_detectados
```

## See also

* [Python quality control repository](README.md)
* [DrawingView](../referencia/digi3d/drawing-view.md): `project` and `equidistance`.
* [digi3d module functions](../referencia/digi3d/functions.md): `get_intersections` and `same_coordinates`.
