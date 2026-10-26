# Borrar el enlace a base de datos
<!-- id: borra-atr -->

Archivo: `borra_atr.py` · orden `BORRA_ATR`, sin parámetros. También se puede ejecutar desde el
[panel de Guiones Python](../README.md).

La orden recorre todas las geometrías de la ventana de dibujo, incluidas las borradas y las de los archivos de referencia, y las sustituye por clones cuyos códigos son **nuevos, sin enlace
a la base de datos** (sin tabla, ni registro, ni atributos).

## Cómo se usa

Escribe en la línea de comandos:

```
BORRA_ATR
```

## El código

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

## Cómo funciona

- `entidad.clone()` crea una copia editable de la geometría (las geometrías de la vista son de solo
  lectura).
- **Los códigos se recrean a partir de su cadena**: por cada código de la geometría, el guion toma solo
  la cadena (`codigo.code`) y construye un código nuevo con
  [`digi3d.FeatureCode(codigo.code)`](../../referencia/digi21.base/featurecode.md).
  - El constructor `FeatureCode(code)` recibe la cadena del código y crea un código sin tabla, ni
    identificador, ni atributos de base de datos.
  - Para conservar la tabla y el registro, copia también las propiedades `.table` e `.id` del
    código original, como hace el ejemplo [renomcod](renomcod-manteniendo-atributos.md).
- `clon.codes = tuple(codes)` asigna la nueva lista de códigos al clon.
- El guion acumula los clones en la lista `anadir` y los originales en la lista `eliminar`, y aplica los
  cambios en bloque con `view.add(...)` y `view.delete(...)`.
- El bucle recorre todas las geometrías de la vista, también las borradas.

## Véase también

- [FeatureCode](../../referencia/digi21.base/featurecode.md) — `code`, `table`, `id`, `attributes`
- [Geometry](../../referencia/digi21.base/geometry.md) — `clone`, `codes`
