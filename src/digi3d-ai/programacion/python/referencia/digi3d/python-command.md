# PythonCommand

Módulo: `digi3d`

Clase base para **crear órdenes interactivas en Python**. Se hereda de ella y se
redefinen los manejadores de eventos (movimiento del ratón, dato, reset, tentativo…); la
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

| Método | Descripción |
|---|---|
| `new_transaction()` | Crea una nueva transacción de deshacer (UNDO). |

Las clases derivadas pueden redefinir los manejadores de eventos (por ejemplo
`on_data_down`) para reaccionar a la interacción del usuario, igual que los de
[Command](command.md).

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
