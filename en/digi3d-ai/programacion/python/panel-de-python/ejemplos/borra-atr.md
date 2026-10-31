# Removing database links
<!-- id: borra-atr -->
<!-- origen: eb0ad6e3ae1704c4f971b06362c84c0a96da6a14 -->

File: `borra_atr.py` · command `BORRA_ATR`, without parameters. Also runs from the [Python script pane](../README.md).

Iterates all drawing window geometries, including deleted geometries and reference file geometries, replacing them with clones whose codes are **new and have no database link**: no table, record or attributes.

## Usage

Enter on the command line:

```
BORRA_ATR
```

## Code

```python
import digi3d

view = digi3d.current_view()

def creaClonSinAtributosBaseDatos(entidad):
    """Crea un clon de la entidad sustituyendo sus códigos por unos nuevos sin diccionario de BBDD.
    Argumentos:
        entidad: Entidad a clonar
    Devuelve:
        Entidad clonada sin enlace a base de datos
    """
    clon = entidad.clone()  
    codes = []
    for codigo in entidad.codes:
        codes.append(digi3d.FeatureCode(codigo.code))
    clon.codes = tuple(codes)
    return clon

eliminar = []
anadir = []
for entidad in view:
    anadir.append(creaClonSinAtributosBaseDatos(entidad))
    eliminar.append(entidad)

view.add(anadir)
view.delete(eliminar)
view.redraw()
```

## How it works

- `entidad.clone()` creates an editable geometry copy; view geometries are read-only.
- **Codes are recreated from their strings**: takes each code's string (`codigo.code`) and constructs a new code with [`digi3d.FeatureCode(codigo.code)`](../../referencia/digi21.base/featurecode.md).
  - `FeatureCode(code)` takes the string and creates a code without a table, identifier or database attributes.
  - To preserve table and record, also copy `.table` and `.id`, as in [renomcod](renomcod-manteniendo-atributos.md).
- `clon.codes = tuple(codes)` assigns the clone's new code list.
- Collects clones in `anadir` and originals in `eliminar`, applying changes in bulk with `view.add(...)` and `view.delete(...)`.
- Iterates all view geometries, including deleted ones.

## See also

- [FeatureCode](../../referencia/digi21.base/featurecode.md): `code`, `table`, `id`, `attributes`
- [Geometry](../../referencia/digi21.base/geometry.md): `clone`, `codes`
