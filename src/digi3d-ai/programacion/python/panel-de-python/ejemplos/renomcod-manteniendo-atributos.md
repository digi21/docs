# Renombrar un código manteniendo sus atributos
<!-- id: renomcod-manteniendo-atributos -->

Archivo: `renomcod_manteniendo_atributos.py` · orden `RENOMCOD_MANTENIENDO_ATRIBUTOS` con dos parámetros:
el código origen y el código destino.

La orden cambia un código por otro **conservando la tabla y el registro** de base de datos. La orden estándar
`RENOMCOD` puede perder la tabla y el registro según la conexión a la base de datos o la configuración de la tabla de códigos.

## Cómo se usa

1. Abre el archivo de dibujo **sin conexión a una base de datos**, para que el motor de Digi3D.AI no
   intente almacenar información en la base de datos.
2. Escribe en la línea de comandos el nombre de la orden, el código origen y el código destino. Por
   ejemplo, para renombrar el código `A` a `B`:

   ```
   RENOMCOD_MANTENIENDO_ATRIBUTOS=A B
   ```

Si no se indican exactamente dos parámetros, la orden emite el sonido de error y muestra un cuadro con el
motivo y la forma de uso.

## El código

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

## Cómo funciona

- **Parámetros**: `argv[0]` es el código origen y `argv[1]` es el código destino. Si `argv` no tiene
  exactamente dos elementos, la función `error` emite el sonido de error y muestra el motivo y la forma de
  uso con [`digi3d.show_info`](../../referencia/digi3d/functions.md).
- `TieneElCódigo` comprueba si la geometría tiene el código origen.
- **El código se recrea con la tabla y el identificador del original** (`creaClonCambiandoCodigo`): por
  cada código del clon que es el código origen, el guion crea un código nuevo con el código destino y le
  copia la tabla y el identificador:

  ```python
  nuevo = digi3d.FeatureCode(códigoDestino)
  nuevo.table = código.table
  nuevo.id = código.id
  ```

  El ejemplo [borra_atr](borra-atr.md) hace lo contrario: no copia `table` ni `id`, así que los códigos
  nuevos pierden el enlace a la base de datos. Los demás códigos de la geometría no cambian.
- `renombra` materializa la selección con `list(...)` porque la recorre dos veces: para construir los
  clones (`añadir`) y para borrar los originales (`view.delete`). Un `filter` sin `list` se agota en el
  primer recorrido, y `view.delete` no recibiría ninguna geometría.

> **Nota sobre la API**: `FeatureCode(code)` solo recibe la **cadena** del código; la tabla y el
> identificador se asignan después con las propiedades `.table` e `.id`.

## Véase también

- [FeatureCode](../../referencia/digi21.base/featurecode.md) — `code`, `table`, `id`
- [Borrar el enlace a base de datos](borra-atr.md) — el caso opuesto
