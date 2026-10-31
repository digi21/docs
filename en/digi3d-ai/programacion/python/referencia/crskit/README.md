# crskit
<!-- id: crskit-python -->
<!-- origen: 8134956e79d06f509290d08e1b4fbd06511c7e1a -->

`crskit` is the Python package for [crskit](https://github.com/digi21/crskit), Digi3D.AI's coordinate reference system (CRS) and coordinate transformation library. The *open-source* repository uses the Apache-2.0 license and is hosted at [github.com/digi21/crskit](https://github.com/digi21/crskit).

From Python, it can:

- Create a CRS from an EPSG code or WKT (*Well-Known Text*, the standardized CRS description found in `.prj` files).
- Write CRS definitions in OGC WKT 1, ESRI WKT 1, WKT 2:2015 and WKT 2:2019.
- Transform coordinates between CRSs, including orthometric heights using a geoid model.

The API is in English, with `snake_case` functions, properties and arguments. Returned CRS and operation names come from the EPSG database in English.

## crskit documentation

This section explains use with Digi3D.AI: its installed EPSG database, grid folder and specific codes. For package details, see repository documentation:

- [Spanish tutorial](https://github.com/digi21/crskit/blob/main/python/TUTORIAL.es.md): CRS concepts, axis order, WKT, operation selection, heights and geoids, and NumPy batch transformations.
- [Python package README](https://github.com/digi21/crskit/blob/main/python/README.md), in English: brief reference and grid download links.
- [Runnable examples](https://github.com/digi21/crskit/tree/main/python/examples), in English.

## Installation

Digi3D.AI **does not distribute** `crskit`: its installer does not copy the package, and the bundled interpreter lacks `pip`. Install in your own Python.

Requirements for [PyPI](https://pypi.org/project/crskit/) (Python Package Index) version 0.6.0:

- Python 3.10 or later. Compiled packages are available for 64-bit Windows and Linux x86-64. Elsewhere, `pip` builds from source, requiring a C++23 compiler and CMake.
- NumPy 1.23 or later, only for `Transformation.transform_points`. The remaining API works without NumPy.

To install:

1. Open a command window using the target Python installation.
2. Run:

   ```
   pip install crskit
   ```

3. Check installation:

   ```
   python -c "import crskit; print(crskit.is_initialized())"
   ```

   Prints `False`: import succeeded but no EPSG database is initialized. See [Initialization](inicializacion.md).

`crskit` does not contain the EPSG database. With Digi3D.AI installed, use its database. Otherwise also install `crskit-epsg`, containing the database:

```
pip install crskit[epsg]
```

For `transform_points`, also install NumPy:

```
pip install crskit[numpy]
```

## Pages in this section

| Page | Contents |
| :--- | :--- |
| [Initialization](inicializacion.md) | Opening Digi3D.AI's EPSG database, grid folder and specific codes. |
| [API reference](api.md) | Module functions, classes, enumerations and exceptions. |
| [Programming examples](ejemplos.md) | Complete programs: UTM to geographic, UTM with Alicante height to ETRS89 3D, WKT and Digi3D.AI-specific codes. |

For .NET equivalents, see [Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/README.md).
