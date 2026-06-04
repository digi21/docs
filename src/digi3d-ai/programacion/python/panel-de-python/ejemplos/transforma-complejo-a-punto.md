# Transformar complejos en puntos

Archivo: `transforma_complejo_a_punto.py` · guion para el [panel de Guiones Python](../README.md).

Convierte las geometrías de tipo **Complejo** que tengan ciertos códigos en geometrías de tipo
**Punto**, situadas en el centro del complejo. Se desarrolló para arreglar archivos DGN que se
habían importado con los puntos agrupados como complejos.

## El código

```python
import digi3d

vista = digi3d.current_view()

def transforma_complejo_a_punto(codigo):
    eliminar = list(filter(
        lambda g: not g.deleted and type(g) is digi3d.Complex and g.codes[0].code == codigo,
        vista))

    for entidad in eliminar:
        centro = ((entidad.min[0] + entidad.max[0]) / 2,
                  (entidad.min[1] + entidad.max[1]) / 2,
                  (entidad.min[2] + entidad.max[2]) / 2)
        punto = digi3d.Point(centro, entidad.codes, 0, (1.0, 1.0, 1.0))
        vista.add(punto)
        vista.delete(entidad)

transforma_complejo_a_punto('BAI_VEG_03_PT')
transforma_complejo_a_punto('VEG_03_PT')
vista.redraw()
```

## Cómo funciona

- `digi3d.current_view()` devuelve la [ventana de dibujo](../../referencia/digi3d/drawing-view.md) activa, el
  objeto sobre el que trabajamos.
- **Selección con `filter`**: recorremos `vista` (todas las geometrías cargadas) y nos quedamos con
  las que cumplen tres condiciones: que no estén borradas (`not g.deleted`), que sean complejos
  (`type(g) is digi3d.Complex`) y que su primer código coincida (`g.codes[0].code == codigo`).
  - `g.codes` es la lista de [códigos](../../referencia/digi21.base/featurecode.md) de la geometría;
    `.code` es la cadena del código.
  - Envolvemos el `filter` en `list(...)` **a propósito**: vamos a añadir y borrar geometrías dentro
    del bucle, y no se debe modificar la vista mientras se la está recorriendo de forma perezosa.
    `list()` materializa la selección antes de tocar nada.
- **Centro del complejo**: `entidad.min` y `entidad.max` son las coordenadas mínima y máxima
  (cajas envolventes); su punto medio es el centro.
- **Crear el punto**: `digi3d.Point(coordenadas, códigos, rotación, escala)`. Reutilizamos
  `entidad.codes` para conservar los códigos del complejo.
- `vista.add(punto)` lo añade y `vista.delete(entidad)` elimina el complejo original.
- `vista.redraw()` regenera la ventana para que se vean los cambios.

## Véase también

- [Point](../../referencia/digi21.base/point.md) · [Complex](../../referencia/digi21.base/complex.md)
- [DrawingView](../../referencia/digi3d/drawing-view.md) — `add`, `delete`, `redraw`
