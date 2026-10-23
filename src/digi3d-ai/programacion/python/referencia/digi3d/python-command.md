# PythonCommand
<!-- id: python-command -->

Módulo: `digi3d`

Clase base para **crear órdenes interactivas en Python**. Se hereda de ella y se
redefinen los manejadores de eventos (movimiento del ratón, dato, reset, tentativo, selección…); la
orden se pone en marcha con [`DrawingView.add_command`](drawing-view.md#órdenes).

## Constructores

```python
PythonCommand()
PythonCommand(name)
```

| Argumento | Tipo | Descripción |
|---|---|---|
| `name` | `str` | Nombre de la orden (opcional). |

## Propiedades

| Propiedad | Tipo | Descripción |
|---|---|---|
| `view` | [DrawingView](drawing-view.md) | Vista en la que se está ejecutando la orden. |

## Métodos

| Método | Devuelve | Descripción |
|---|---|---|
| `new_transaction()` | — | Crea una nueva transacción de deshacer (UNDO). |
| `select_geometry(coordinates, filter=None)` | `bool` | Selecciona la geometría más próxima a `coordinates`, igual que el pedal de tentativo, y la entrega en `on_geometry_selected`. Devuelve `False` si la selección no ha podido empezar. Consulta [Seleccionar una geometría](#seleccionar-una-geometría). |

## Eventos

Redefine en la clase derivada los eventos a los que tenga que reaccionar la orden. Los eventos de pedales,
movimiento y teclado devuelven `True` si la orden ha procesado el evento; en ese caso Digi3D.AI no hace
nada más con él.

| Evento | Cuándo lo llama Digi3D.AI |
|---|---|
| `on_set_focus()` | Al iniciar la orden y cada vez que vuelve a ser la orden activa. |
| `on_lost_focus()` | Cuando otra orden se pone encima de ella. |
| `on_data_down(coordinates)` | Al pulsar el botón o el pedal de dato. |
| `on_data_up(coordinates)` | Al soltar el botón o el pedal de dato. |
| `on_data_dbl_clk(coordinates)` | Al hacer doble clic con el botón de dato. |
| `on_reset_down(coordinates)` | Al pulsar el botón o el pedal de reset. |
| `on_reset_up(coordinates)` | Al soltar el botón o el pedal de reset. |
| `on_snap_down(coordinates)` | Al pulsar el botón o el pedal de tentativo. |
| `on_snap_up(coordinates)` | Al soltar el botón o el pedal de tentativo. |
| `on_move(coordinates, button)` | Al mover el cursor. |
| `on_key_down(key)` | Al pulsar una tecla. |
| `on_geometry_selected(geometry, coordinates, first_vertex, second_vertex)` | Cuando el usuario selecciona una geometría con el pedal de tentativo o la orden la selecciona con `select_geometry`. No devuelve nada. |
| `on_geometries_selected(geometries)` | Cuando una orden de selección múltiple o un panel entrega varias geometrías a la orden. Consulta [Selección múltiple](#selección-múltiple). No devuelve nada. |

`coordinates` es una tupla `(x, y, z)` con coordenadas terreno.

## Seleccionar una geometría

`select_geometry(coordinates, filter=None)` busca la geometría más próxima a `coordinates` igual que el
pedal de tentativo. Si encuentra una, Digi3D.AI llama al evento `on_geometry_selected` de la orden:

- Sin la verificación de tentativo (variable [VER](/digi3d-ai/referencia/ventana-de-dibujo/variables/v/ver.md),
  o `view.verify_snap` en [DrawingView](drawing-view.md#modos-de-búsqueda-y-tentativo)), la llamada se
  produce antes de que `select_geometry` termine.
- Con la verificación activada, Digi3D.AI muestra la geometría encontrada y espera a que el usuario la
  confirme con un dato. La llamada se produce al confirmarla.

Si no encuentra ninguna geometría, Digi3D.AI emite el sonido de error y no llama al evento.

`select_geometry` no selecciona nada y devuelve `False` en estos casos:

- Ya hay un tentativo en curso, por ejemplo uno que espera la verificación del usuario.
- El [modo de búsqueda](drawing-view.md#modos-de-búsqueda-y-tentativo) activo busca intersecciones. Ese modo
  lanza la orden INTERSECCION, que no admite el filtro.

| Argumento | Tipo | Descripción |
|---|---|---|
| `coordinates` | `tuple` | Coordenadas `(x, y, z)` en las que se busca la geometría. Normalmente, las que recibe `on_data_down` o `on_data_up`. |
| `filter` | función o `None` | Función que recibe una [geometría](../digi21.base/geometry.md) y devuelve `True` si se puede seleccionar. Con `None` se pueden seleccionar puntos, líneas, textos y polígonos. Con una función, la función decide también sobre los complejos. Si la función lanza una excepción, Digi3D.AI escribe el error con `print` y descarta esa geometría. |

`on_geometry_selected` recibe estos argumentos:

| Argumento | Tipo | Descripción |
|---|---|---|
| `geometry` | [Geometry](../digi21.base/geometry.md) | Geometría seleccionada. Es la geometría del dibujo y es de solo lectura: para cambiarla, borra la original con `view.delete` y añade un clon con `view.add`. |
| `coordinates` | `tuple` | Coordenadas `(x, y, z)` del punto de la geometría más próximo a la selección. Con la variable [FIJAZ](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/fijaz.md) activada, `z` es la coordenada Z activa. |
| `first_vertex` | `int` | Índice del primer vértice del segmento seleccionado. |
| `second_vertex` | `int` | Índice del segundo vértice del segmento seleccionado. Si es igual a `first_vertex`, la selección está sobre ese vértice. |

Si la orden define `on_geometry_selected`, Digi3D.AI también le entrega las geometrías que llegan a la orden
activa por otros caminos, entre ellos:

- el pedal de tentativo;
- las órdenes [SELECCIONA_ULTIMO](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ultimo.md) y
  [SELECCIONA_INDICE](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-indice.md);
- la opción **Enviar selección a la orden activa** del menú contextual del editor de base de datos y del
  panel de resultados de la búsqueda, que entrega la primera geometría seleccionada si la orden no define
  `on_geometries_selected`;
- las tareas del panel de tareas que lanzan una orden sobre una geometría.

Si la orden no define `on_geometry_selected`, Digi3D.AI la trata como una orden que no selecciona
geometrías: el pedal de tentativo llama a `on_data_down` con esas mismas coordenadas, y los demás caminos no
le entregan nada.

```python
import digi3d

class MostrarCodigos(digi3d.PythonCommand):
    def on_data_up(self, coordinates):
        self.select_geometry(coordinates)
        return True

    def on_geometry_selected(self, geometry, coordinates, first_vertex, second_vertex):
        print([codigo.code for codigo in geometry.codes])

digi3d.current_view().add_command(MostrarCodigos("Mostrar códigos"))
```

El ejemplo [Prefijar los códigos de la geometría seleccionada](../../panel-de-python/ejemplos/prefija-cod.md)
usa `filter` para descartar las geometrías de los archivos de referencia.

## Selección múltiple

Una orden que define `on_geometries_selected(geometries)` admite selección múltiple. Mientras está activa, estas
órdenes y opciones le entregan la lista de geometrías seleccionadas:

- las órdenes de selección, como [SELECCIONA\_VENTANA](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md),
  [SELECCIONA\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md) o SELECCIONA\_POLIGONO;
- la opción **Enviar selección a la orden activa** del menú contextual del editor de base de datos y del
  panel de resultados de la búsqueda, que entrega todas las geometrías seleccionadas.

| Argumento | Tipo | Descripción |
|---|---|---|
| `geometries` | `list` de [Geometry](../digi21.base/geometry.md) | Geometrías seleccionadas. Son las geometrías del dibujo y son de solo lectura, como en `on_geometry_selected`. Pueden ser de cualquier archivo cargado, incluidos los archivos de referencia: la orden decide cuáles trata comparando su propiedad `file` con `view.drawing_file`. |

Si la orden no define `on_geometries_selected`, Digi3D.AI la trata como una orden que no admite selección
múltiple: las órdenes de selección muestran el aviso de que la orden activa no la admite y no se inician.

Con la variable BORRADOS activada, la lista puede incluir geometrías borradas. Descártalas con la propiedad
`deleted`: si la orden las borra otra vez, un UNDO las vuelve a mostrar. El editor de base de datos puede
entregar la misma geometría dos veces, una por cada código enlazado al registro seleccionado.

Todos los cambios que hace la orden antes de llamar a `new_transaction()` se deshacen con un solo UNDO.
`view.delete` y `view.add` aceptan listas, pero sus versiones de lista no ejecutan los controles de calidad ni
avisan a las extensiones. Para que lo hagan, llama a las dos funciones con cada geometría:

```python
import digi3d

class Borrar(digi3d.PythonCommand):
    def on_geometries_selected(self, geometries):
        ruta = self.view.drawing_file.path
        for g in geometries:
            if not g.deleted and g.file is not None and g.file.path == ruta:
                self.view.delete(g)
        self.view.redraw()
        self.new_transaction()

digi3d.current_view().add_command(Borrar("Borrar la selección"))
```

## Ejemplo

```python
import digi3d

class MiOrden(digi3d.PythonCommand):
    def on_data_down(self, coordinates):
        self.new_transaction()
        self.view.add(digi3d.Point(coordinates, codes=["PUNTO"]))

digi3d.current_view().add_command(MiOrden("Insertar puntos"))
```

## Véase también

- [Command](command.md)
- [DrawingView](drawing-view.md)
- [Prefijar los códigos de la geometría seleccionada](../../panel-de-python/ejemplos/prefija-cod.md)
