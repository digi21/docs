# Errors in the analyzed geometry
<!-- id: errores-de-la-geometria-que-se-esta-analizando -->
<!-- origen: a7f0276538601d06b9d3a7001b7a30ac09a7da1b -->

Return `digi3d.GeometryError` when the analyzed geometry fails the control:

```python
GeometryError(message)
GeometryError(message, coordinates)
```

| Argument | Description |
| :--- | :--- |
| `message` | Error description. |
| `coordinates` | `(x, y, z)` tuple identifying the error position, for example the offending vertex. |

* During digitizing, opens **Quality control error** with the message. **Store the geometry** saves it and moves the view to error coordinates if supplied. **Do not store the geometry** discards it.
* On demand, adds an error task. With coordinates, navigates there; otherwise frames the geometry. For a point, navigates to its coordinate.

## Example

From [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D): reports the first vertex whose Z is below the previous vertex's Z, with that vertex's coordinates:

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
