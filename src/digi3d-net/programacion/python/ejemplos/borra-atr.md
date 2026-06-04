# Borrar el enlace a base de datos

Archivo: `borra_atr.py` · guion para el [panel de Guiones Python](../guiones/README.md).

Recorre todas las geometrías y las sustituye por clones cuyos códigos son **nuevos, sin enlace a la
base de datos** (sin tabla, ni registro, ni atributos). Útil para "limpiar" un archivo de su
información de BBDD.

## El código

```python
import digi3d

view = digi3d.current_view()

def creaClonSinAtributosBaseDatos(entidad):
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

## Cómo funciona

- `entidad.clone()` crea una copia editable de la geometría (las geometrías de la vista son de solo
  lectura).
- **La clave está en cómo se recrean los códigos**: por cada código de la geometría tomamos solo su
  **cadena** (`codigo.code`) y construimos un código nuevo con
  [`digi3d.FeatureCode(codigo.code)`](../referencia/digi21.base/featurecode.md).
  - El constructor `FeatureCode(code)` recibe la **cadena** del código y crea un código "limpio", sin
    tabla, ni identificador, ni atributos de base de datos. Eso es justo lo que queremos.
  - Si en cambio quisiéramos conservar la tabla y el registro, copiaríamos esas propiedades
    (`.table`, `.id`); ese es el caso del ejemplo
    [renomcod](renomcod-manteniendo-atributos.md).
- `clon.codes = tuple(codes)` asigna la nueva lista de códigos al clon.
- Acumulamos en dos listas (`anadir` con los clones, `eliminar` con los originales) y aplicamos los
  cambios en bloque: `view.add(...)` y `view.delete(...)`.

## Véase también

- [FeatureCode](../referencia/digi21.base/featurecode.md) — `code`, `table`, `id`, `attributes`
- [Geometry](../referencia/digi21.base/geometry.md) — `clone`, `codes`
