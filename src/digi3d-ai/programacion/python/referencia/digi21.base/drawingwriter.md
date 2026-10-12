# DrawingWriter
<!-- id: drawingwriter -->

Módulo: [digi21.base](README.md)

Escribe geometrías en un archivo de dibujo nuevo. No se construye directamente: lo devuelve la
función `create` de los módulos de [digi21.io](../digi21.io/README.md#create).

El archivo **no está completo hasta que se cierra**. Úsalo como gestor de contexto (`with`), que
lo cierra al salir del bloque, o llama a `close()` al terminar.

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `path` | `str` | Ruta del archivo de dibujo. |
| `closed` | `bool` | `True` si el escritor ya se ha cerrado. |
| `written` | `int` | Número de entidades escritas. En los formatos que no admiten varios códigos por entidad, una geometría con *n* códigos cuenta *n*. |
| `rejected` | `int` | Número de geometrías que no se han escrito: borradas, virtuales, sin vértices, de un tipo que el formato no admite, con códigos que el formato no sabe traducir, o de las que el exportador ha informado de un error. `warnings` explica cada motivo una vez. |
| `warnings` | `list[str]` | Avisos del exportador del formato (códigos sin traducción en la tabla, capas creadas, errores al escribir una entidad…). |

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `add(geometry)` | `bool` | Escribe una copia de la [geometría](geometry.md). Devuelve `False` si no se ha escrito (se suma a `rejected`). Lanza `ValueError` si la geometría no tiene ningún código. |
| `close()` | `None` | Termina el archivo. Si el escritor ya está cerrado, no hace nada. Lanza `RuntimeError` si el exportador informa de un error al terminar el archivo (por ejemplo, no puede sustituir el destino); el escritor queda cerrado igualmente. |

Llamar a `add` con el escritor cerrado, o volver a usarlo en un `with`, lanza `ValueError`. Los
errores del exportador del formato llegan como `RuntimeError` con su mensaje. Si el bloque `with`
termina con una excepción, un error al cerrar el archivo no la sustituye.

## Qué hace con cada geometría

- Escribe una **copia**: la geometría que se pasa no se modifica y puede ser una de las que se
  obtienen al recorrer un [DrawingFile](drawingfile.md).
- Busca cada código en la [tabla de códigos](digitab.md) que se pasó a `create`. Las
  propiedades del código en la tabla (capa, nivel, color…) son las que usa el exportador.
- Si el formato no admite varios códigos por entidad, escribe una copia de la geometría por cada
  código, igual que la orden [EXPORTAR](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/e/exportar.md).
- Las copias se conservan en memoria hasta que se cierra el escritor.

## Ejemplo

```python
import digi21.io.bin as bin_
from digi21.base import Line, Point

with bin_.create("parcelas.bin", crs="EPSG:25830") as writer:
    writer.add(Point((500010.0, 4400010.0, 650.0), ["VERT"]))
    writer.add(Line(["LINDE"], [(500000, 4400000, 650), (500100, 4400000, 652)]))

print(writer.written, "entidades escritas")
```

## Véase también

- [digi21.io](../digi21.io/README.md) — la función `create` y los parámetros de cada formato.
- [DrawingFile](drawingfile.md)
- [Curso: crear un archivo de dibujo](../../aplicaciones-de-consola/ejemplos/crear-un-archivo-de-dibujo.md)
