# Command
<!-- id: command-2 -->
<!-- origen: 0d33ce1599e887d55928c3393cbcd9fe78590cfb -->

Module: `digi3d`

Represents a Digi3D.AI **command**. Obtain it, for example, from
[`DrawingView.command_top`](drawing-view.md#commands), or push it onto the stack with `command_push`. To
**create** your own interactive commands in Python, use [PythonCommand](python-command.md).

## Properties

| Property | Type | R/W | Description |
|---|---|---|---|
| `name` | `str` | R | Command name. |
| `inner_name` | `str` | R | Internal command name (GUID). |
| `can_repeat` | `bool` | R/W | Gets or sets whether the command can repeat. |

## Methods

Send events to the command, simulating user interaction:

| Method | Description |
|---|---|
| `on_data_down(coordinates)` | Data button pressed event. |
| `on_data_up(coordinates)` | Data button released event. |
| `on_reset_down(coordinates)` | Reset button pressed event. |
| `on_reset_up(coordinates)` | Reset button released event. |
| `on_snap_down(coordinates)` | Snap button pressed event. |
| `on_snap_up(coordinates)` | Snap button released event. |
| `on_move(coordinates, button=0)` | Movement event. |
| `on_key_down(key=0)` | Key pressed event. |

## See also

- [PythonCommand](python-command.md) — create your own commands.
- [DrawingView](drawing-view.md) — `run_command`, `command_push`, `command_pop`.
