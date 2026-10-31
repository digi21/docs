# Reference
<!-- id: referencia-3 -->
<!-- origen: ac738ea0af54283129e67b56b2f5061346e9c5f2 -->

Formal description of the Digi3D.AI Python API, organized by module.

## Modules

| Module | Description |
| --- | --- |
| [digi21.base](digi21.base/README.md) | Core types: codes, geometries, codes tables and camera. |
| [digi21.io](digi21.io/README.md) | Drawing file reading and writing (one module per format). |
| [digi3d](digi3d/README.md) | Available **inside Digi3D.AI**: drawing window, commands, tasks… (reexports `digi21.base`). |
| [crskit](crskit/README.md) | Coordinate reference systems and transformations using the EPSG database. A PyPI package not distributed with Digi3D.AI: install with `pip install crskit`. |

## Naming convention

The entire API is in English: classes use `PascalCase`; methods, properties and arguments use `snake_case`. Coordinates are `(x, y, z)` tuples.
