# Detecting vertices with Z above the previous vertex
<!-- id: detectar-vertices-con-z-superior-a-la-anterior -->
<!-- origen: 90fa91d4d8b403c4d5b5bce656a2af71380ac2dd -->

`debe_tener_coordenadas_z_decrecientes_moderado` in [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D) reports an error if a vertex's Z exceeds the previous vertex's Z. Use it, for example, for a river digitized from source to mouth.

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

* `geometry[0]` is the first vertex's `(x, y, z)` tuple; `geometry[0][2]` is its Z.
* `for coordenada in geometry` iterates vertices in order.
* The error contains the offending vertex's coordinates. During digitizing, **Store the geometry** moves the view there; on demand, double-clicking the task moves to the error coordinates.
* Returns the first erroneous vertex. Equal Z is allowed; `debe_tener_coordenadas_z_decrecientes` in the same file treats it as an error.

## Assigning to a code

No additional parameters. Enter this line in the code's **Quality controls to apply**:

```
debe_tener_coordenadas_z_decrecientes_moderado
```
