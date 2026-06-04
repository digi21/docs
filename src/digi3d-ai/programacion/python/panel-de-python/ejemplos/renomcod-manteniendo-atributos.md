# Renombrar un código manteniendo sus atributos

Archivo: `renomcod_manteniendo_atributos.py` · orden con parámetros.

Cambia un código por otro **conservando la tabla y el registro** de base de datos (la orden estándar
`RENOMCOD` puede perderlos según la configuración). Se ejecuta:

```
RENOMCOD=A B
```

(renombra el código `A` a `B`). Conviene abrir el archivo **sin conexión a una base de datos** para
que el motor no intente reescribir nada en la BBDD.

## El código

```python
import digi3d

view = digi3d.current_view()

def TieneElCódigo(entidad, código):
    códigosEntidad = { cod.code for cod in entidad.codes }
    return len(códigosEntidad.intersection({código})) > 0

def creaClonCambiandoCodigo(entidad, códigoOrigen, códigoDestino):
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

if len(argv) < 2:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception('Número de parámetros incorrecto. Se esperaba [código origen] [código destino]')

códigoOrigen = argv[0]
códigoDestino = argv[1]

entidadesRenombrar = list(filter(lambda entidad: TieneElCódigo(entidad, códigoOrigen), view))

añadir = [creaClonCambiandoCodigo(entidad, códigoOrigen, códigoDestino) for entidad in entidadesRenombrar]

view.add(añadir)
view.delete(entidadesRenombrar)
view.redraw()
```

## Cómo funciona

- `TieneElCódigo` comprueba si la geometría tiene el código de origen.
- **La clave es cómo se recrea el código** (`creaClonCambiandoCodigo`): por cada código del clon, si
  es el de origen, creamos uno nuevo con el código de destino **y le copiamos la tabla y el
  identificador**:

  ```python
  nuevo = digi3d.FeatureCode(códigoDestino)
  nuevo.table = código.table
  nuevo.id = código.id
  ```

  Esto es lo contrario del ejemplo [borra_atr](borra-atr.md): allí queríamos **perder** el enlace a
  BBDD, así que no copiábamos `table` ni `id`; aquí queremos **conservarlo**, así que sí los
  copiamos. Los demás códigos de la geometría se dejan intactos.
- Se materializa la selección con `list(...)` porque la reutilizamos en dos sitios: para construir
  los clones (`añadir`) y para borrar los originales (`view.delete`). Si fuese un `filter`, el primer
  recorrido lo agotaría y el `delete` no recibiría nada.

> **Nota sobre la API**: `FeatureCode(code)` solo recibe la **cadena** del código; la tabla y el
> identificador se asignan después por sus propiedades (`.table`, `.id`).

## Véase también

- [FeatureCode](../../referencia/digi21.base/featurecode.md) — `code`, `table`, `id`
- [Borrar el enlace a base de datos](borra-atr.md) — el caso opuesto
