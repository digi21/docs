# Geometry has no errors
<!-- id: la-geometria-no-tiene-errores -->
<!-- origen: 1bf6c9e7df3ee7004e1fc4bd135ec995b2bcd938 -->

If the geometry passes, return `None`: finish without `return`, use a bare `return`, or `return None`. An empty list has the same effect.

Digi3D.AI proceeds to the next **Quality controls to apply** line. With no remaining lines, saves the geometry during digitizing or generates no task on demand.

## Example

From [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D): returns `None` once the geometry's minimum and maximum Z match:

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
