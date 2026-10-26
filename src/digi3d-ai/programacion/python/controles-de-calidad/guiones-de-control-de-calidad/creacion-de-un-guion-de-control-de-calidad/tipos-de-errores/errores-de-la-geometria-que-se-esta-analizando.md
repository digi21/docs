# Errores de la geometría que se está analizando
<!-- id: errores-de-la-geometria-que-se-esta-analizando -->

Para comunicar que la geometría analizada no cumple el control, la función devuelve un `digi3d.GeometryError`:

```python
GeometryError(message)
GeometryError(message, coordinates)
```

| Argumento | Descripción |
| :--- | :--- |
| `message` | Descripción del error. |
| `coordinates` | Tupla `(x, y, z)` con la posición del error, por ejemplo el vértice que lo provoca. |

* Al digitalizar, Digi3D.AI abre el cuadro de diálogo **Error de control de calidad** con el mensaje. La opción **Almacenar la geometría** guarda la geometría y, si el error tiene coordenadas, desplaza la vista a esas coordenadas. La opción **No almacenar la geometría** descarta la geometría.
* Bajo demanda, Digi3D.AI añade una tarea de error al panel de tareas. Con coordenadas, la tarea lleva a esas coordenadas; sin coordenadas, encuadra la geometría. En un punto, la tarea lleva a la coordenada del punto.

## Ejemplo

El ejemplo procede del repositorio [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D). La función informa del primer vértice cuya Z es inferior a la del vértice anterior, con las coordenadas de ese vértice:

```python
@quality_control()
def debe_tener_coordenadas_z_crecientes_moderado(geometry, adding_geometry, code_index):
    'Comunica un error si se localiza un vértice cuya coordenada Z sea inferior a la coordenada Z del vértice anterior.'
    zPrevia = geometry[0][2]

    for coordenada in geometry:
        zActual = coordenada[2]

        if zActual < zPrevia:
            return digi3d.GeometryError("Vértice con la Z inferior al anterior", coordenada)

        zPrevia = zActual
```