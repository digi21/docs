# Errores entre dos o más geometrías
<!-- id: errores-entre-dos-o-mas-geometrias -->

Para comunicar que la relación de la geometría analizada con otras geometrías no cumple el control (por ejemplo, que dos líneas se cruzan), la función devuelve un `digi3d.GeometryRelationError`:

```python
GeometryRelationError(otherGeometry, message)
GeometryRelationError(otherGeometry, message, coordinates)
GeometryRelationError(geometries, message)
GeometryRelationError(geometries, message, coordinates)
```

| Argumento | Descripción |
| :--- | :--- |
| `otherGeometry` | La otra geometría que interviene en el error. |
| `geometries` | Lista de las otras geometrías que intervienen. |
| `message` | Descripción del error. |
| `coordinates` | Tupla `(x, y, z)` con la posición del error. |

* Al digitalizar, Digi3D.AI trata un `GeometryRelationError` como un `GeometryError`: abre el cuadro de diálogo **Error de control de calidad**.
* Bajo demanda, Digi3D.AI añade una tarea de error al panel de tareas con una subtarea para la geometría analizada y otra para cada geometría relacionada. Si el error tiene coordenadas, al hacer doble clic en la tarea principal, Digi3D.AI desplaza la vista a las coordenadas del error.

Para localizar las otras geometrías, la función recorre la ventana de dibujo con `digi3d.current_view()`.

## Ejemplo

El ejemplo procede del repositorio [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D). `no_eliminadas`, `cuyas_maximas_minimas_solapen_con` y `que_tengan_el_codigo_o_etiqueta` son funciones auxiliares del archivo `guiones.py`. Si la geometría analizada es una línea y hay cruces, `si_es_linea_no_puede_cruzar_linea` devuelve un `GeometryRelationError` para el primer cruce al digitalizar, o una lista de `GeometryRelationError` con los cruces detectados bajo demanda:

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
        # cross_vertices solo admite dos geometrías de tipo Line
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