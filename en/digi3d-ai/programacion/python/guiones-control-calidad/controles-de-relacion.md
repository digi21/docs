# Geometry relationship controls
<!-- id: controles-de-relacion -->
<!-- origen: b1db165cedb95df0812f40998d134abd7dbd2d64 -->

These [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) controls compare the analyzed geometry with nondeleted geometries having specified codes. Searches every loaded drawing and reference file. [Python quality control repository](README.md) explains installation and code assignment.

## Common parameters

| Parameter | Description |
| --- | --- |
| `código_o_etiqueta_areas_analizar`, `código_o_etiqueta_lineas_analizar`, `código_o_etiqueta_puntos_analizar` | Comparison geometry codes: accepts space-separated codes, `?` and `*` wildcards, and `#` tags. See [Codes, wildcards and tags](README.md#codes-wildcards-and-tags). |
| `mensaje` | Error text shown to the user. |

Here, **area** means polygon or plan-closed line (`closed_2d`); **line** means open or closed `Line`; **point** means `Point`. `Polygon` geometries do not count as lines.

Each control first checks the analyzed type. Types outside its name (`si_es_area_…`, `si_es_linea_…` or `si_es_punto_…`) produce no error.

Except `si_es_linea_no_puede_cruzar_linea`, all return [GeometryError](../referencia/digi3d/exceptions.md) with `mensaje`.

## Finding related geometries

Area, line and point controls use helpers returning `True` if any drawing geometry meets a condition. For example, `si_es_area_no_puede_solapar_otra_area`:

```python
def algun_area_con_codigo(geometría_analizando, código_o_etiqueta_areas_analizar, callback_condicion):
    return alguna_geometria(geometría_analizando, lambda g: es_area(g) and tiene_el_codigo_o_etiqueta(g, código_o_etiqueta_areas_analizar), callback_condicion)

@quality_control()
def si_es_area_no_puede_solapar_otra_area(geometry, adding_geometry, code_index, código_o_etiqueta_areas_analizar, mensaje):
    'Si la geometría que se está analizando es un área, comunica un error si se localiza en el archivo de dibujo un área que solape el área que se está analizando.'
    if not es_area(geometry):
        return

    poligono = como_poligono(geometry)
    if algun_area_con_codigo(geometry, código_o_etiqueta_areas_analizar, lambda área: poligono.overlaps(área)):
        return digi3d.GeometryError(mensaje)
```

Conditions use [Geometry](../referencia/digi21.base/geometry.md) relationship methods: `adjacent`, `within`, `completely_within`, `disjoint`, `equals`, `touches`, `overlaps`, `crosses`, `terminates_within`, `endpoint_touches`, `endpoint_touches_interior`, `coincident` and `coincident_and_terminates`. Each supports specific type combinations; unsupported ones raise `TypeError: La relacion '…' no esta definida para esa combinacion
de tipos de geometria.`. These controls use only supported combinations. Area controls convert closed lines using `como_poligono`, returning a polygon without holes from the line's vertices.

The helper excludes self-comparison. See [The analyzed geometry is not compared with itself](README.md#the-analyzed-geometry-is-not-compared-with-itself).

## Analyzed geometry is an area

| Control | Error if |
| --- | --- |
| `si_es_area_debe_ser_adyacente_area` | No area satisfies `como_poligono(área).adjacent(como_poligono(geometry))`. |
| `si_es_area_debe_estar_completamente_dentro_de_area` | No area satisfies `como_poligono(geometry).completely_within(área)`. |
| `si_es_area_debe_estar_dentro_de_area` | No area satisfies `within` or `completely_within` with `como_poligono(geometry)` and `como_poligono(área)`: the analyzed geometry is not inside, either touching the boundary at two or more vertices or without touching it. |
| `si_es_area_debe_ser_estar_separado_de_area` | An area satisfies `not como_poligono(área).disjoint(como_poligono(geometry))`. |
| `si_es_area_debe_ser_igual_a_otra_area` | No area satisfies `como_poligono(área).equals(geometry)`. |
| `si_es_area_debe_unirse_con_otra_area` | No area satisfies `como_poligono(área).touches(como_poligono(geometry))`. |
| `si_es_area_debe_solapar_otra_area` | No area satisfies `como_poligono(geometry).overlaps(área)`. |
| `si_es_area_no_puede_solapar_otra_area` | An area satisfies `como_poligono(geometry).overlaps(área)`. |

All convert closed lines with `como_poligono`, so they behave like polygons without holes sharing the same vertices. Without conversion, `digi21.base` applies line relationships, and `completely_within`, `overlaps` and `equals` raise `TypeError` for some combinations. For example, areas sharing only a side do not overlap, and an area inside another is not disjoint, whether polygons or closed lines.

## Analyzed geometry is a line

| Control | Error if |
| --- | --- |
| `si_es_linea_debe_ser_adyacente_a_area` | No area satisfies `geometry.adjacent(área)`. |
| `si_es_linea_debe_estar_completamente_dentro_de_area` | No area satisfies `geometry.within(área)`. Uses the same condition as “within”, rather than `completely_within`. |
| `si_es_linea_debe_cruzar_area` | No area satisfies `geometry.crosses(área)`. |
| `si_es_linea_debe_cruzar_linea` | No line satisfies `geometry.crosses(línea)`. |
| `si_es_linea_debe_estar_separado_de_area` | An area satisfies `not geometry.disjoint(área)`. |
| `si_es_linea_debe_estar_separado_de_linea` | A line satisfies `not geometry.disjoint(línea)`. |
| `si_es_linea_debe_ser_igual_a_linea` | No line satisfies `geometry.equals(línea)`. |
| `si_es_linea_debe_unirse_con_area` | No area satisfies `geometry.touches(área)`. |
| `si_es_linea_debe_unirse_con_linea` | No line satisfies `geometry.touches(línea)`. |
| `si_es_linea_debe_solapar_linea` | No line satisfies `geometry.overlaps(línea)`. |
| `si_es_linea_debe_terminar_dentro_de_area` | No area satisfies `geometry.terminates_within(área)`. |
| `si_es_linea_debe_terminar_en_borde_area` | No area satisfies `geometry.endpoint_touches(área)`. |
| `si_es_linea_debe_terminar_en_extremo_de_linea` | No line satisfies `geometry.endpoint_touches(línea)`. |
| `si_es_linea_debe_terminar_en_linea` | No line satisfies `geometry.endpoint_touches_interior(línea)`: the analyzed endpoint touches the other line away from its endpoints. |
| `si_es_linea_solo_puede_continuar_con_lineas_con_codigo` | A line **without** the parameter's codes satisfies `geometry.endpoint_touches(línea)`. |

### si_es_linea_no_puede_cruzar_linea

Compares the analyzed line against nondeleted `Line` geometries with matching codes and overlapping plan bounding boxes. Skips other types because `cross_vertices` accepts only two lines. Each crossing produces [GeometryRelationError](../referencia/digi3d/exceptions.md) with the other geometry, `mensaje` and crossing vertex coordinates. Real-time analysis (`adding_geometry` is `True`) returns only the first crossing. Also excludes self-comparison.

```python
for candidato in candidatos:
    # cross_vertices accepts only two Line geometries
    if type(candidato) is not digi3d.Line:
        continue

    if candidato == geometry:
        continue

    vertices_de_cruce = geometry.cross_vertices(candidato, adding_geometry)
    if len(vertices_de_cruce) == 0:
        continue

    if adding_geometry:
        return digi3d.GeometryRelationError(candidato, mensaje, geometry[vertices_de_cruce[0]])

    for vertice in vertices_de_cruce:
        errores_detectados.append(digi3d.GeometryRelationError(candidato, mensaje, geometry[vertice]))
```

## Analyzed geometry is a point

| Control | Error if |
| --- | --- |
| `si_es_punto_debe_coincidir_con_area` | No area satisfies `geometry.coincident(área)`. |
| `si_es_punto_debe_coincidir_con_extremo_linea` | No line satisfies `geometry.coincident_and_terminates(línea)`: the point matches no line endpoint. |
| `si_es_punto_debe_coincidir_con_linea` | No line satisfies `geometry.coincident(línea)`. |
| `si_es_punto_debe_coincidir_con_punto` | No point satisfies `geometry.coincident(punto)`. |
| `si_es_punto_debe_estar_separado_de_area` | An area satisfies `not geometry.disjoint(área)`. |
| `si_es_punto_debe_estar_separado_de_linea` | A line satisfies `not geometry.disjoint(línea)`. |
| `si_es_punto_debe_estar_separado_de_punto` | A point satisfies `not geometry.disjoint(punto)`. |
| `si_es_punto_debe_estar_en_el_interior_de_area` | No area satisfies `geometry.within(área)`. |

## See also

* [Python quality control repository](README.md)
* [Geometry](../referencia/digi21.base/geometry.md): relationship methods.
* [Geometry relationships](../aplicaciones-de-consola/ejemplos/relaciones-entre-geometrias.md)
