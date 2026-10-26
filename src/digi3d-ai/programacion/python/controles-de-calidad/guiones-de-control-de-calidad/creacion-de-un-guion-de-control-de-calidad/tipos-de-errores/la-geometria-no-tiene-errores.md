# La geometría no tiene errores
<!-- id: la-geometria-no-tiene-errores -->

Si la geometría cumple el control, la función devuelve `None`: termina sin `return`, con `return` sin valor o con `return None`. Una lista vacía tiene el mismo efecto.

Digi3D.AI pasa entonces a la siguiente línea de la propiedad **Controles de calidad a aplicar** del código. Si no quedan líneas, la geometría se guarda (al digitalizar) o no genera ninguna tarea (bajo demanda).

## Ejemplo

El ejemplo procede del repositorio [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D). La función devuelve `None` en cuanto comprueba que la Z mínima y la máxima de la geometría coinciden:

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