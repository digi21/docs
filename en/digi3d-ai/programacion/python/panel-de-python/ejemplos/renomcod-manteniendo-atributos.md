# Renaming a code while retaining attributes
<!-- id: renomcod-manteniendo-atributos -->
<!-- origen: e224a656947dcfcb31641f5636d3971e52c95b55 -->

File: `renomcod_manteniendo_atributos.py` · command `RENOMCOD_MANTENIENDO_ATRIBUTOS` with source and destination codes.

Replaces a code **preserving its database table and record**. Standard `RENAMCOD` can lose them depending on the database connection or codes table configuration.

## Usage

1. Open the drawing **without a database connection**, preventing Digi3D.AI from attempting database storage.
2. Enter the command, source code and destination code. To rename `A` to `B`:

   ```
   RENOMCOD_MANTENIENDO_ATRIBUTOS=A B
   ```

Without exactly two parameters, plays the error sound and displays the reason and usage.

## Code

```python
import digi3d

view = digi3d.current_view()

USO = 'RENOMCOD_MANTENIENDO_ATRIBUTOS=[código origen] [código destino]'

def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))

def TieneElCódigo(entidad, código):
    """Indica si la entidad tiene el código.
    Argumentos:
        entidad: Entidad sobre la que realizar la consulta.
        código: nombre del código.
    Observaciones:
        Esta función devuelve verdadero si alguno de los códigos de la entidad tiene el nombre
        pasado por parámetro.
    """
    códigosEntidad = { cod.code for cod in entidad.codes }
    return len(códigosEntidad.intersection({código})) > 0

def creaClonCambiandoCodigo(entidad, códigoOrigen, códigoDestino):
    """Crea un clon de la entidad sustituyendo el código origen por el código destino.
    Argumentos:
        entidad: Entidad a clonar
        códigoOrigen: Código a sustituir
        códigoDestino: Código que lo sustituye, con la tabla y el registro del código origen
    Devuelve:
        Entidad clonada con el código destino
    """
    clon = entidad.clone()
    codes = []
    for código in entidad.codes:
        if código.code == códigoOrigen:
            nuevo = digi3d.FeatureCode(códigoDestino)
            nuevo.table = código.table
            nuevo.id = código.id
            codes.append(nuevo)
        else:
            codes.append(código)
    clon.codes = tuple(codes)
    return clon

def renombra(códigoOrigen, códigoDestino):
    entidadesRenombrar = list(filter(lambda entidad: TieneElCódigo(entidad, códigoOrigen), view))

    añadir = []
    for entidad in entidadesRenombrar:
        añadir.append(creaClonCambiandoCodigo(entidad, códigoOrigen, códigoDestino))

    view.add(añadir)
    view.delete(entidadesRenombrar)
    view.redraw()

if len(argv) != 2:
    error('Número de parámetros incorrecto.')
else:
    renombra(argv[0], argv[1])
```

## How it works

- **Parameters**: `argv[0]` is source code; `argv[1]` is destination. If `argv` lacks exactly two elements, `error` plays the error sound and displays the reason and usage with [`digi3d.show_info`](../../referencia/digi3d/functions.md).
- `TieneElCódigo` checks whether the geometry has the source code.
- **Recreates codes with the original table and identifier** (`creaClonCambiandoCodigo`): replaces each matching clone code and copies table and identifier:

  ```python
  nuevo = digi3d.FeatureCode(códigoDestino)
  nuevo.table = código.table
  nuevo.id = código.id
  ```

  [borra_atr](borra-atr.md) does the opposite: omits `table` and `id`, losing database links. Other geometry codes remain unchanged.
- `renombra` materializes selection with `list(...)` because it iterates twice: constructing clones (`añadir`) and deleting originals (`view.delete`). A `filter` without `list` is exhausted after one pass, leaving no geometries for `view.delete`.

> **API note**: `FeatureCode(code)` accepts only the code **string**; assign table and identifier afterwards using `.table` and `.id`.

## See also

- [FeatureCode](../../referencia/digi21.base/featurecode.md): `code`, `table`, `id`
- [Removing database links](borra-atr.md): opposite case
