# Geometry has no errors but a warning is shown
<!-- id: la-geometria-no-tiene-errores-pero-mostrar-una-advertencia-al-usuario -->
<!-- origen: 96e2fe8b73b74bc84aaf44d9cbec8cf8453ec63d -->

Return `digi3d.GeometryWarning` to warn without preventing storage:

```python
GeometryWarning(message)
```

* During digitizing, displays a balloon and saves the geometry. Identical messages from multiple controls of the same code appear once.
* On demand, adds a warning task to the task pane.

A warning stops code analysis like an error: subsequent **Quality controls to apply** lines do not run.

## Example

```python
@quality_control()
def avisa_si_tiene_muchos_vertices(geometry, adding_geometry, code_index, maximo):
    'Muestra una advertencia si la geometría tiene más vértices que el valor indicado'
    if len(geometry) > int(maximo):
        return digi3d.GeometryWarning('La geometría tiene más de {} vértices'.format(maximo))
```
