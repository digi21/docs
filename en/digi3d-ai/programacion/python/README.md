# Python
<!-- id: python-3 -->
<!-- origen: 2d9ae02a45748804747d5ae9e67029bd24d2a3a5 -->

Digi3D.AI supports **Python programming** in **three ways**, depending on where and how the code runs, each intended for a different purpose:

| Approach | Description | Uses `digi3d`? |
| --- | --- | --- |
| [Console applications](aplicaciones-de-consola/README.md) | Regular Python programs outside Digi3D.AI that read, process and create drawing files. | No |
| [Python pane](panel-de-python/README.md) | Scripts running inside Digi3D.AI on the active drawing. | Yes |
| [Quality controls](controles-de-calidad/README.md) | Functions validating a code's geometries. | Yes |

> Target Python version: **3.12 (x64)**. The entire API is **in English**: classes use `PascalCase`; methods, properties and arguments use `snake_case`. Coordinates are `(x, y, z)` tuples.

## Console applications

Python programs running in a system interpreter **outside Digi3D.AI**, using `digi21.base` and `digi21.io` to **read, process and create drawing files** (convert formats, extract information, generate reports…). They do not use `digi3d`.

- [Go to section](aplicaciones-de-consola/README.md)
- [Programming examples](aplicaciones-de-consola/ejemplos/README.md)
- [API reference](referencia/README.md)

## Python pane

Runs scripts **inside Digi3D.AI**, accessing the **active drawing** through `digi3d`. Run them from the Python script pane or as a command by name.

- [Go to section](panel-de-python/README.md)
- [Programming examples](panel-de-python/ejemplos/README.md)
- [API reference](referencia/README.md)

## Quality controls

Functions that **validate a code's geometries**, in real time while digitizing or on demand. They also use `digi3d`.

- [Go to section](controles-de-calidad/README.md)
- [Programming examples](controles-de-calidad/ejemplos/README.md)
- [API reference](referencia/README.md)

## Digi21 script repositories

Digi21 publishes two GitHub script repositories for Digi3D.AI:

- [Python commands from ComandosDigi3DPython](ordenes-python.md): scripts run as commands from the command line.
- [Python quality control repository](guiones-control-calidad/README.md): `guiones.py`, containing quality controls and dynamic representation rules for the codes table.

## Reference

The [API reference](referencia/README.md) formally describes three modules: `digi21.base` (core types), `digi21.io` (file reading and writing) and `digi3d` (available inside the program).

For coordinate transformations between reference systems from Python programs, use [crskit](referencia/crskit/README.md), Digi3D.AI's reference system library. It is not distributed with Digi3D.AI: install it with `pip install crskit`.
