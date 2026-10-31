# Errors between geometries
<!-- id: errores-entre-dos-o-mas-geometrias -->
<!-- origen: 9636fce63bca247232afcbe2ea0198bddce1ea41 -->

Return `digi3d.GeometryRelationError` when the analyzed geometry's relationship with others fails a control, such as two crossing lines:

```python
GeometryRelationError(otherGeometry, message)
GeometryRelationError(otherGeometry, message, coordinates)
GeometryRelationError(geometries, message)
GeometryRelationError(geometries, message, coordinates)
```

| Argument | Description |
| :--- | :--- |
| `otherGeometry` | The other geometry involved. |
| `geometries` | List of other involved geometries. |
| `message` | Error description. |
| `coordinates` | `(x, y, z)` tuple identifying the error position. |

* During digitizing, treats `GeometryRelationError` like `GeometryError`, opening **Quality control error**.
* On demand, adds an error task with a subtask for the analyzed geometry and each related geometry. With error coordinates, double-clicking the parent task moves there.

Find other geometries by iterating the drawing window through `digi3d.current_view()`.

## Example

From [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D). `no_eliminadas`, `cuyas_maximas_minimas_solapen_con` and `que_tengan_el_codigo_o_etiqueta` are `guiones.py` helpers. For an analyzed line with crossings, `si_es_linea_no_puede_cruzar_linea` returns the first crossing as `GeometryRelationError` during digitizing, or a list of `GeometryRelationError` for all detected crossings on demand:

```python
@quality_control()
def si_es_linea_no_puede_cruzar_linea(geometry, adding_geometry, code_index, código_o_etiqueta_lineas_analizar, mensaje):
    'Si la geometría que se está analizando es una línea, comunica un error si esta se cruza con otra línea.'
    if type(geometry) is not digi3d.Line:
        return

    candidatos = no_eliminadas(digi3d.current_view())
    candidatos = cuyas_maximas_minimas_solapen_con(candidatos, geometry)
    candidatos = que_tengan_el_codigo_o_etiqueta(candidatos, código_o_etiqueta_lineas_analizar)

    errores_detectados = []

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

    if len(errores_detectados) == 0:
        return

    return errores_detectados  
```
