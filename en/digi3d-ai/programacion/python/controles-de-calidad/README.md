# Quality controls
<!-- id: controles-de-calidad -->
<!-- origen: cfc56072728fae4f348721948016febea813d8e5 -->

A **quality control** is a Python function checking whether a geometry meets a rule and reporting an error or warning if it does not. Digi3D.AI runs them on each code's geometries according to the codes table.

A repository provides many ready-to-use controls: [**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D).

## When they run

- **On demand**: **Quality control → Analyze quality control** runs each geometry code's enabled controls. Errors appear in the [task pane](../referencia/digi3d/tasks.md).
- **In real time**: with **Analyze quality control when an entity is finished** enabled, every digitized geometry is checked **before storage**, and failures display dialogs.

> Controls run only when **assigned** in the codes table. A code without assigned controls generates no checks.

## Assigning controls to a code

In the **Codes Table Editor**, under [Python environment](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md), paste control functions or use **Download the latest version from GitHub**. [Update tables from earlier Digi3D versions](../../../usuarios-de-versiones-anteriores/actualizar-guiones-python.md). Then add controls to each code's **Quality controls to apply**, specifying their parameters.

## Declaring a quality control

A function is recognized as a quality control if:

1. It has **`@quality_control()`**, supplied by Digi3D.AI's environment.
2. It takes at least `geometry`, `adding_geometry` and `code_index`. **Additional** parameters become configurable values requested when assigning it to a code (codes, distances, messages, etc.).
3. Its *docstring* starts with a **description**, shown in the codes table editor.

| Parameter | Description |
| --- | --- |
| `geometry` | The [geometry](../referencia/digi21.base/geometry.md) being analyzed. |
| `adding_geometry` | `True` for **real-time** analysis (just drawn, not yet in the file).<br>`False` for **on-demand** analysis from the menu. |
| `code_index` | Index of the geometry code being analyzed; a geometry can have several codes. |

Behavior can depend on `adding_geometry`: real-time checks usually need only the **first** error (an interactive control could even propose replacement geometry), whereas on-demand checks should return **all** errors.

## Reporting results

- If the geometry **passes**, returns `None`, through a bare `return` or by finishing without `return`.
- If it **fails**, returns an [error or warning](../referencia/digi3d/exceptions.md): `GeometryError`, `GeometryRelationError`, `GeometryWarning` or `DatabaseFieldError`. Return a **list** to report multiple problems.

## Example

```python
import digi3d

def es_area(g):
    'Verdadero si la geometría es un área (polígono o línea cerrada)'
    return type(g) is digi3d.Polygon or (type(g) is digi3d.Line and g.closed_2d)

@quality_control()
def debe_ser_area(geometry, adding_geometry, code_index,
                  mensaje="La geometría debería ser un área"):
    'La geometría debe ser un área (polígono o línea cerrada en planta)'
    if not es_area(geometry):
        return digi3d.GeometryError(mensaje)
    # An area passes: finish without returning a value.

@quality_control()
def debe_tener_area_igual_o_mayor(geometry, adding_geometry, code_index, minima):
    'El área de la geometría debe ser igual o mayor que el valor indicado'
    if es_area(geometry) and abs(geometry.area) < float(minima):
        return digi3d.GeometryError(f"El área {abs(geometry.area):.2f} es menor que {minima}")
```

Assigned to the same code, these two controls check that its geometries are areas and that each area meets a minimum (for example, 100 m² when drawing coordinates are in meters).

## See also

- [Quality control examples](ejemplos/README.md): a ready-to-use collection.
- [Quality control scripts](guiones-de-control-de-calidad/README.md): when controls run, assignment to codes and behavior for each error type.
- [Exceptions](../referencia/digi3d/exceptions.md): error and warning types returned by controls.
- [Reference: `digi3d` module](../referencia/digi3d/README.md): the object used by controls.
- [Running scripts](../panel-de-python/ejecutar-guiones.md)
- Repository: [Guiones-Control-Calidad-Python-Digi3D](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D)
