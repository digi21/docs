# La geometría no tiene errores pero mostrar una advertencia al usuario
<!-- id: la-geometria-no-tiene-errores-pero-mostrar-una-advertencia-al-usuario -->

Para avisar al usuario sin impedir que la geometría se guarde, la función devuelve un `digi3d.GeometryWarning`:

```python
GeometryWarning(message)
```

* Al digitalizar, Digi3D.AI muestra el mensaje en un globo y guarda la geometría. Si varios controles del mismo código devuelven el mismo mensaje, el globo lo muestra una vez.
* Bajo demanda, Digi3D.AI añade una tarea de tipo advertencia al panel de tareas.

Una advertencia termina el análisis del código, igual que un error: Digi3D.AI no ejecuta los controles de las líneas siguientes de **Controles de calidad a aplicar**.

## Ejemplo

```python
@quality_control()
def avisa_si_tiene_muchos_vertices(geometry, adding_geometry, code_index, maximo):
    'Muestra una advertencia si la geometría tiene más vértices que el valor indicado'
    if len(geometry) > int(maximo):
        return digi3d.GeometryWarning('La geometría tiene más de {} vértices'.format(maximo))
```