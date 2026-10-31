# crskit API reference
<!-- id: crskit-python-api -->
<!-- origen: da91b85f2f9756e835e83dd90e3f5640ff486b5d -->

Module: [crskit](README.md)

`crskit` 0.6.0 includes type annotations (`_crskit.pyi` and `py.typed`) for editor completion and `mypy` checking.

```python
import crskit
```

## Axis order

Coordinates follow the CRS's declared axis order. Geographic EPSG CRSs such as EPSG:4258 (ETRS89) and EPSG:4326 (WGS 84) put **latitude** first and **longitude** second. [`Crs.axes`](#crs) returns that order:

```python
crskit.crs_from_epsg(4258).axes     # [('Lat', 'North'), ('Lon', 'East')]
crskit.crs_from_epsg(25830).axes    # [('E', 'East'), ('N', 'North')]
```

Swapped axes produce a different point rather than an error. If a seemingly valid point raises `CoordinateOutsideDomainError`, check axis order.

## Module functions

| Function | Description |
| :--- | :--- |
| `init(epsg_database=None, data_directory=None) -> None` | Initializes the library with an EPSG database. See [Initialization](inicializacion.md). |
| `is_initialized() -> bool` | `True` if an EPSG database is already initialized. |
| `epsg_version() -> str` | Open database's EPSG dataset version, such as `'12.057'`. |
| `crs_from_epsg(code: int) -> Crs` | CRS for EPSG `code`. Raises `AuthorityCodeNotFoundError` if absent. |
| `crs_from_wkt(wkt: str) -> Crs` | CRS described by WKT. Accepts OGC/ESRI WKT 1 and WKT 2, detecting grammar from text. Raises `WktParseError` on failure. |
| `compound_crs(horizontal: int, vertical: int) -> Crs` | Combines horizontal and vertical EPSG codes. Most combinations have no EPSG code (`authority_code` is `None`); names combine both parts, such as `'ETRS89 / UTM zone 30N + Alicante height'`. |
| `transformation(source, target, *, select_operation=None, unknown_crs_policy=UnknownCrsPolicy.REJECT) -> Transformation` | Transforms CRS `source` to `target`. See [transformation](#transformation) for the two keyword arguments. |

All except `init` and `is_initialized` raise `CrsError` before initialization.

### transformation

```python
transformation(source, target, *, select_operation=None, unknown_crs_policy=UnknownCrsPolicy.REJECT) -> Transformation
```

| Argument | Type | Description |
| :--- | :--- | :--- |
| `source` | `Crs` | Source CRS. |
| `target` | `Crs` | Target CRS. |
| `select_operation` | function or `None` | Selects among multiple EPSG operations. Receives `(source_name, target_name, operations)`, with `operations` a list of [`CoordinateOperation`](#coordinateoperation), returning an operation or its EPSG code (`int`). |
| `unknown_crs_policy` | [`UnknownCrsPolicy`](#unknowncrspolicy) | Behavior when a CRS is local or unknown. |

Without `select_operation`, multiple candidates make `transformation` raise `TransformationNotFoundError`. EPSG defines twelve ED50 (EPSG:4230) to ETRS89 (EPSG:4258) operations with differing accuracy and coverage. Select by `area_of_use`, as well as accuracy:

```python
def peninsula(source_name, target_name, operations):
    candidatas = [o for o in operations if "Spain - mainland" in o.area_of_use and not o.grid_files]
    return min(candidatas, key=lambda o: o.accuracy)

ed50_a_etrs89 = crskit.transformation(crskit.crs_from_epsg(4230), crskit.crs_from_epsg(4258),
                                      select_operation=peninsula)
```

`transformation` raises `GridFileNotFoundError` for a required grid missing from the grid folder, or `TransformationNotFoundError` if no operation exists.

## Crs

`Crs` represents a CRS. Create `Crs` instances with `crs_from_epsg`, `crs_from_wkt` or `compound_crs`.

| Member | Type | Description |
| :--- | :--- | :--- |
| `name` | `str` | CRS name, such as `'ETRS89 / UTM zone 30N'`. |
| `authority` | `str` | Code authority, such as `'EPSG'`. |
| `authority_code` | `int` or `None` | EPSG code, or `None` without a code. |
| `dimension` | `int` | Coordinate count: 2 or 3. |
| `remarks` | `str` | EPSG remarks about the CRS. |
| `axes` | `list[tuple[str, str]]` | Axes in coordinate order, as `(nombre, orientación)` pairs. |
| `to_wkt(version=WktVersion.WKT1) -> str` | method | CRS WKT using the specified [`WktVersion`](#wktversion). |
| `compare(other: Crs) -> int` | method | Structural similarity to `other`, from 0 to 100. 100 means equivalent CRSs. |
| `==` | operator | `True` for identical mathematical definitions (datum, prime meridian, projection, parameters and units). Ignores name, authority and axis order. |

`Crs` cannot be a `dict` key or `set` element: it has no `__hash__`.

## Transformation

`Transformation` represents a transformation between CRSs. Create `Transformation` instances with [`transformation`](#transformation).

| Member | Type | Description |
| :--- | :--- | :--- |
| `name` | `str` | Transformation name. |
| `authority` | `str` | Operation code authority. |
| `authority_code` | `str` or `None` | EPSG operation code, or `None` for non-EPSG transformations. |
| `area_of_use` | `str` | Area of use. |
| `remarks` | `str` | Remarks. |
| `source` | `Crs` | Source CRS. |
| `target` | `Crs` | Target CRS. |
| `source_dimension` | `int` | Source point coordinate count. |
| `target_dimension` | `int` | Transformed point coordinate count. |
| `is_identity` | `bool` | `True` if coordinates remain unchanged. |
| `transform(point) -> list[float]` | method | Transforms a sequence of `source_dimension` numbers. Raises `DimensionMismatchError` for an incorrect count. |
| `transform_points(points) -> numpy.ndarray` | method | Transforms a NumPy array shaped `(source_dimension,)` or `(n, source_dimension)`, returning `(target_dimension,)` or `(n, target_dimension)`. One native library call handles all points. Requires NumPy. |

## CoordinateOperation

`CoordinateOperation` represents an EPSG operation between CRSs. `transformation` passes a list to `select_operation`.

| Property | Type | Description |
| :--- | :--- | :--- |
| `code` | `int` | EPSG operation code. |
| `name` | `str` | Operation name. |
| `accuracy` | `float` or `None` | Accuracy in meters, or `None` if unspecified. |
| `area_of_use` | `str` | Area of use, such as `'Spain - mainland except northwest'`. |
| `grid_files` | `list[str]` | Required grids; empty if none. |
| `scope` | `str` or `None` | EPSG operation purpose. |
| `remarks` | `str` or `None` | Remarks. |
| `information_source` | `str` or `None` | Publishing organization. |

## WktVersion

WKT dialect written by `Crs.to_wkt`.

| Value | Dialect |
| :--- | :--- |
| `WKT1` | OGC WKT 1 (OGC 01-009). Default. |
| `WKT1_ESRI` | ESRI WKT 1 without EPSG code, used by ArcGIS `.prj`. |
| `WKT1_ESRI_WITH_EPSG_CODE` | ESRI WKT 1 with EPSG code. |
| `WKT2_2015` | ISO 19162:2015 WKT 2 (OGC 12-063r5). |
| `WKT2_2019` | ISO 19162:2019 WKT 2 (OGC 18-010r7). |

## UnknownCrsPolicy

Controls `transformation` when one CRS is local or unknown and the other is not.

| Value | Description |
| :--- | :--- |
| `REJECT` | Refuses transformation. Default. |
| `IDENTITY` | Returns unchanged coordinates, assuming the same reference frame and units. |

## Exceptions

All derive from `CrsError`, itself derived from `RuntimeError`. `except crskit.CrsError` catches all.

| Exception | Raised when |
| :--- | :--- |
| `CrsError` | Uninitialized library, missing or unreadable EPSG database; base class for the others. |
| `AuthorityCodeNotFoundError` | EPSG code absent from the database. |
| `WktParseError` | Unparseable WKT. |
| `TransformationNotFoundError` | No operation exists, or multiple operations exist without `select_operation`. |
| `GridFileNotFoundError` | Missing grid. Properties: `grid_file` (name), `searched_path`, `operation_code` (EPSG code or `None`), `operation_name`, `area_of_use` and `information_source`. |
| `CoordinateOutsideDomainError` | Point outside grid or projection domain. |
| `DimensionMismatchError` | Point coordinate count differs from transformation requirements. |
| `UnsupportedFormatError` | Unsupported CRS type or operation method. |
