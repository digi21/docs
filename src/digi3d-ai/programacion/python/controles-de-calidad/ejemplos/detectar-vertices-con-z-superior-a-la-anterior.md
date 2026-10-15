# Detectar vértices con Z superior a la del anterior vértice
<!-- id: detectar-vertices-con-z-superior-a-la-anterior -->

La función `debe_tener_coordenadas_z_decrecientes_moderado` del repositorio [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D) comunica un error si un vértice tiene la coordenada Z superior a la del vértice anterior. Sirve, por ejemplo, para un río digitalizado desde el nacimiento hacia la desembocadura.

```python
@quality_control()
def debe_tener_coordenadas_z_decrecientes_moderado(geometry, adding_geometry, code_index):
    'Comunica un error si se localiza un vértice cuya coordenada Z sea superior a la coordenada Z del vértice anterior.'
    zPrevia = geometry[0][2]

    for coordenada in geometry:
        zActual = coordenada[2]

        if zActual > zPrevia:
            return digi3d.GeometryError("Vértice con la Z superior al anterior", coordenada)

        zPrevia = zActual
```

* `geometry[0]` es la tupla `(x, y, z)` del primer vértice, y `geometry[0][2]` su Z.
* `for coordenada in geometry` recorre los vértices en orden.
* El error lleva las coordenadas del vértice que lo provoca: al digitalizar, **Almacenar la geometría** desplaza la vista a ese vértice; bajo demanda, la tarea del panel de tareas lleva a él.
* La función devuelve el primer vértice erróneo. Un vértice con la misma Z que el anterior no es un error; la función `debe_tener_coordenadas_z_decrecientes` del mismo archivo sí lo considera error.

## Asignación al código

La función no tiene parámetros adicionales. En la propiedad **Controles de calidad a aplicar** del código, la línea es:

```
debe_tener_coordenadas_z_decrecientes_moderado
```