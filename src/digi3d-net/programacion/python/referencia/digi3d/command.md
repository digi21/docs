# Command

Módulo: `digi3d`

Representa una **orden** de Digi3D.NET. Se obtiene, por ejemplo, de
[`DrawingView.command_top`](drawing-view.md#órdenes) o se apila con `command_push`. Para
**crear** órdenes interactivas propias en Python, usa [PythonCommand](python-command.md).

## Propiedades

| Propiedad | Tipo | L/E | Descripción |
|---|---|---|---|
| `name` | `str` | L | Nombre de la orden. |
| `inner_name` | `str` | L | Nombre interno (GUID) de la orden. |
| `can_repeat` | `bool` | L/E | Indica o establece si la orden acepta repetirse. |

## Métodos

Envían eventos a la orden, simulando la interacción del usuario:

| Método | Descripción |
|---|---|
| `on_data_down(coordinates)` | Evento de dato pulsado. |
| `on_data_up(coordinates)` | Evento de dato levantado. |
| `on_reset_down(coordinates)` | Evento de reset pulsado. |
| `on_reset_up(coordinates)` | Evento de reset levantado. |
| `on_snap_down(coordinates)` | Evento de tentativo pulsado. |
| `on_snap_up(coordinates)` | Evento de tentativo levantado. |
| `on_move(coordinates, button=0)` | Evento de movimiento. |
| `on_key_down(key=0)` | Evento de tecla pulsada. |

## Véase también

- [PythonCommand](python-command.md) — crear órdenes propias.
- [DrawingView](drawing-view.md) — `run_command`, `command_push`, `command_pop`.
