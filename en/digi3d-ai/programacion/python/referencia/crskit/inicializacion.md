# crskit initialization
<!-- id: crskit-python-inicializacion -->
<!-- origen: 7ce45917ff240d032fe25a2a79e21eb0b4aafc73 -->

Module: [crskit](README.md)

Before creating a coordinate reference system (CRS), call `crskit.init` with the EPSG database. Otherwise `crs_from_epsg`, `crs_from_wkt`, `compound_crs`, `transformation` and `epsg_version` raise `CrsError` with `crskit is not initialised: call crskit.init(epsg_database) first.`

```python
init(epsg_database=None, data_directory=None) -> None
```

| Argument | Type | Description |
| :--- | :--- | :--- |
| `epsg_database` | `str` or `os.PathLike` | EPSG SQLite database path. If `None`, uses the search order below. |
| `data_directory` | `str` or `os.PathLike` | Grid folder (geoid models, NTv2, NADCON). If `None`, uses the folder containing `epsg_database`. |

A grid file contains values such as geoid undulation or datum shifts required by some EPSG operations. For example, EPSG:9410, ETRS89 to Alicante height, requires IGN's (Spain's National Geographic Institute) `EGM08_REDNAP.txt`.

`init` raises `CrsError` if the database is missing or cannot be opened.

## Using Digi3D.AI's EPSG database

The Digi3D.AI installer copies to `C:\ProgramData\Digi3D.NET\OpenGis\`:

- `epsg-fiel.sqlite`: EPSG database 12.057, using official `epsg_*` schema tables.
- Digi3D.AI grids, including `EGM08_REDNAP.txt` (mainland Spain and Balearic Islands) and `EGM08_REDNAP_Canarias.txt` (Canary Islands).

Digi3D.AI stores the database path in `EpsgCrsKitSqlite` and grid folder in `OpenGisFiles`, under `HKLM\Software\Digi21\Digi3D.NET\App\Configuration`. After first reading the registry, saves machine configuration in `C:\ProgramData\Digi3D.NET\Digi3DNET.db`. `crskit` reads neither value: pass the path to `init`.

With grids beside the database, the database path suffices:

```python
import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")
print(crskit.epsg_version())    # 12.057
```

With a different grid folder:

```python
crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite", data_directory=r"D:\rejillas")
```

## Database search order

If `epsg_database` is `None`, `init` searches:

1. Environment variable `DIGI21_EPSG_SQLITE`.
2. `crskit-epsg`, installed by `pip install crskit[epsg]`.

If neither is found, raises `CrsError` with ``no EPSG database: install one with `pip install crskit[epsg]`, set DIGI21_EPSG_SQLITE, or pass the path to init().``

To use Digi3D.AI's database without hardcoding its path:

1. Set the environment variable in the command window:

   ```
   set DIGI21_EPSG_SQLITE=C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite
   ```

2. Call `init` without arguments:

   ```python
   crskit.init()
   ```

With `crskit-epsg`, the default grid folder is the package folder, which contains no grids. For operations requiring them, pass `data_directory`, for example Digi3D.AI's `C:\ProgramData\Digi3D.NET\OpenGis\`.

## Missing grid

If a required grid is absent from `data_directory`, `transformation` raises `GridFileNotFoundError`, identifying the grid, searched path and EPSG operation:

```python
crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite", data_directory=r"D:\rejillas")

try:
    crskit.transformation(crskit.compound_crs(25830, 5782), crskit.crs_from_epsg(4937))
except crskit.GridFileNotFoundError as error:
    print(error.grid_file)          # EGM08_REDNAP.txt
    print(error.searched_path)      # D:\rejillas\EGM08_REDNAP.txt
    print(error.operation_code)     # 9410
    print(error.operation_name)     # ETRS89-ESP [REGENTE] to Alicante height (1)
```

The [crskit README](https://github.com/digi21/crskit/blob/main/python/README.md#where-to-get-the-grids) lists common grid download sources.

## Digi3D.AI-specific codes

Digi3D.AI defines two vertical CRSs and two operations outside the EPSG database. At startup, registers an alias for each: an equivalence resolving its code as an official EPSG code, including codes in file WKT.

| Digi3D.AI code | Name | Equivalent EPSG code |
| :--- | :--- | :--- |
| CRS 69036406 | EGM08_REDNAP Península | CRS 5782, Alicante height |
| CRS 69036407 | EGM08_REDNAP Canarias | CRS 9398, Tenerife height |
| Operation 32770 | | Operation 9410, ETRS89-ESP [REGENTE] to Alicante height (1) |
| Operation 32771 | | Operation 9418, REGCAN95 to Tenerife height (1) |

`crskit` does not expose `CrsAliases` or register these aliases. In Python:

- `crs_from_epsg(69036406)` and `compound_crs(25830, 69036406)` raise `AuthorityCodeNotFoundError`.
- `crs_from_wkt` accepts WKT containing vertical CRS `EGM08_REDNAP Península`, but creates it without an EPSG code; `transformation` then raises `TransformationNotFoundError` when transforming to an EPSG CRS.

Replace custom codes with equivalent EPSG codes before calling crskit. See [Using Digi3D.AI-specific codes](ejemplos.md#using-digi3dai-specific-codes).
