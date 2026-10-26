# Transformar complejos en puntos
<!-- id: transforma-complejo-a-punto -->

Archivo: `transforma_complejo_a_punto.py` · orden `TRANSFORMA_COMPLEJO_A_PUNTO` con uno o varios
parámetros: los códigos de las geometrías a transformar.

La orden convierte las geometrías no borradas de tipo **Complejo** cuyo primer código es uno de los indicados en geometrías de
tipo **Punto**, situadas en el centro de la caja envolvente del complejo. Se desarrolló para corregir
archivos DGN que se habían importado con los puntos como complejos.

## Cómo se usa

Escribe en la línea de comandos el nombre de la orden y uno o varios códigos separados por espacios. Por
ejemplo, para transformar los complejos de los códigos `BAI_VEG_03_PT` y `VEG_03_PT`:

```
TRANSFORMA_COMPLEJO_A_PUNTO=BAI_VEG_03_PT VEG_03_PT
```

Si no se indica ningún código, la orden emite el sonido de error y muestra un cuadro con el motivo y la
forma de uso.

## El código

```python
import digi3d

USO = 'TRANSFORMA_COMPLEJO_A_PUNTO=[código] [código...]'

vista = digi3d.current_view()


def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))


def transforma_complejo_a_punto(codigo):
    eliminar = list(filter(lambda g: not g.deleted and type(g) is digi3d.Complex and g.codes[0].code == codigo, vista))
    for entidad in eliminar:
        centro = ((entidad.min[0] + entidad.max[0])/2, (entidad.min[1] + entidad.max[1])/2, (entidad.min[2] + entidad.max[2])/2)
        punto = digi3d.Point(centro, entidad.codes, 0, (1.0, 1.0, 1.0))
        vista.add(punto)
        vista.delete(entidad)


if len(argv) == 0:
    error('Falta el código de las geometrías a transformar.')
else:
    for codigo in argv:
        transforma_complejo_a_punto(codigo)
    vista.redraw()
```

## Cómo funciona

- `digi3d.current_view()` devuelve la [ventana de dibujo](../../referencia/digi3d/drawing-view.md) activa.
- **Parámetros**: cada elemento de `argv` es un código. Si `argv` está vacío, la función `error` emite el
  sonido de error y muestra el motivo y la forma de uso con
  [`digi3d.show_info`](../../referencia/digi3d/functions.md). Si `argv` no está vacío, el guion llama a
  `transforma_complejo_a_punto` una vez por código y redibuja la ventana al final.
- **Selección con `filter`**: `transforma_complejo_a_punto` recorre `vista` (todas las geometrías
  cargadas) y selecciona las que cumplen tres condiciones: que no estén borradas (`not g.deleted`), que
  sean complejos (`type(g) is digi3d.Complex`) y que su primer código sea el código indicado
  (`g.codes[0].code == codigo`).
  - `g.codes` es la lista de [códigos](../../referencia/digi21.base/featurecode.md) de la geometría;
    `.code` es la cadena del código.
  - El `filter` se envuelve en `list(...)` porque el bucle añade y borra geometrías, y la vista no se debe
    modificar mientras un `filter` la recorre de forma perezosa. `list()` materializa la selección antes
    de modificar la vista.
- **Centro del complejo**: `entidad.min` y `entidad.max` son las coordenadas mínima y máxima de la caja
  envolvente; su punto medio es el centro.
- **Crear el punto**: el guion crea el punto con `digi3d.Point(coordenadas, códigos, rotación, escala)`. El guion pasa
  `entidad.codes` para que el punto tenga los mismos códigos que el complejo.
- `vista.add(punto)` añade el punto y `vista.delete(entidad)` elimina el complejo original.
- `vista.redraw()` regenera la ventana para mostrar los cambios.

## Véase también

- [Point](../../referencia/digi21.base/point.md) · [Complex](../../referencia/digi21.base/complex.md)
- [DrawingView](../../referencia/digi3d/drawing-view.md) — `add`, `delete`, `redraw`
