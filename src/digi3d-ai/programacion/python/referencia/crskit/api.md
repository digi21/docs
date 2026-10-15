# Referencia de la API de crskit
<!-- id: crskit-python-api -->

Módulo: [crskit](README.md)

Descripción de lo que exporta el paquete `crskit` versión 0.6.0. El paquete incluye las anotaciones de
tipos (archivo `_crskit.pyi` y marca `py.typed`), así que los editores completan la API y `mypy` la
comprueba.

```python
import crskit
```

## Orden de los ejes

Las coordenadas van en el orden de ejes que declara el SRC. En los SRC geográficos de EPSG, como
EPSG:4258 (ETRS89) y EPSG:4326 (WGS 84), la primera coordenada es la **latitud** y la segunda la
**longitud**. La propiedad [`Crs.axes`](#crs) devuelve el orden:

```python
crskit.crs_from_epsg(4258).axes     # [('Lat', 'North'), ('Lon', 'East')]
crskit.crs_from_epsg(25830).axes    # [('E', 'East'), ('N', 'North')]
```

Un punto con los ejes intercambiados no produce un error: produce otro punto. Si una transformación
lanza `CoordinateOutsideDomainError` con un punto que debería ser válido, comprueba el orden de los ejes.

## Funciones del módulo

| Función | Descripción |
| :--- | :--- |
| `init(epsg_database=None, data_directory=None) -> None` | Inicializa la biblioteca con una base de datos de EPSG. Consulta [Inicialización](inicializacion.md). |
| `is_initialized() -> bool` | `True` si la biblioteca ya tiene una base de datos de EPSG. |
| `epsg_version() -> str` | Versión del conjunto de datos de EPSG de la base de datos abierta, por ejemplo `'12.057'`. |
| `crs_from_epsg(code: int) -> Crs` | SRC con el código EPSG `code`. Lanza `AuthorityCodeNotFoundError` si el código no existe. |
| `crs_from_wkt(wkt: str) -> Crs` | SRC que describe el WKT. Acepta WKT 1 (OGC y ESRI) y WKT 2; detecta la gramática a partir del texto. Lanza `WktParseError` si no puede interpretar el texto. |
| `compound_crs(horizontal: int, vertical: int) -> Crs` | SRC compuesto a partir del código EPSG de un SRC horizontal y del código EPSG de un SRC vertical. EPSG no tiene código para la mayoría de las combinaciones; el SRC compuesto no tiene código (`authority_code` es `None`) y su nombre une los nombres de las dos partes, por ejemplo `'ETRS89 / UTM zone 30N + Alicante height'`. |
| `transformation(source, target, *, select_operation=None, unknown_crs_policy=UnknownCrsPolicy.REJECT) -> Transformation` | Transformación del SRC `source` al SRC `target`. Los dos argumentos con nombre se describen en [transformation](#transformation). |

Todas las funciones salvo `init` e `is_initialized` lanzan `CrsError` si la biblioteca no está
inicializada.

### transformation

```python
transformation(source, target, *, select_operation=None, unknown_crs_policy=UnknownCrsPolicy.REJECT) -> Transformation
```

| Argumento | Tipo | Descripción |
| :--- | :--- | :--- |
| `source` | `Crs` | SRC de origen. |
| `target` | `Crs` | SRC de destino. |
| `select_operation` | función o `None` | Elige la operación cuando EPSG define varias entre los dos SRC. Recibe `(source_name, target_name, operations)`, donde `operations` es una lista de [`CoordinateOperation`](#coordinateoperation), y devuelve una de esas operaciones o su código EPSG (`int`). |
| `unknown_crs_policy` | [`UnknownCrsPolicy`](#unknowncrspolicy) | Qué hacer cuando uno de los dos SRC es local o desconocido. |

Sin `select_operation`, si hay varias operaciones posibles, `transformation` lanza
`TransformationNotFoundError`. Por ejemplo, EPSG define doce operaciones de ED50 (EPSG:4230) a ETRS89
(EPSG:4258), con distinta precisión y ámbito de aplicación. Elige por el ámbito de aplicación
(`area_of_use`), no solo por la precisión:

```python
def peninsula(source_name, target_name, operations):
    candidatas = [o for o in operations if "Spain - mainland" in o.area_of_use and not o.grid_files]
    return min(candidatas, key=lambda o: o.accuracy)

ed50_a_etrs89 = crskit.transformation(crskit.crs_from_epsg(4230), crskit.crs_from_epsg(4258),
                                      select_operation=peninsula)
```

Lanza `GridFileNotFoundError` si la operación necesita una rejilla que no está en la carpeta de
rejillas, y `TransformationNotFoundError` si no hay ninguna operación entre los dos SRC.

## Crs

SRC. Se crea con `crs_from_epsg`, `crs_from_wkt` o `compound_crs`.

| Miembro | Tipo | Descripción |
| :--- | :--- | :--- |
| `name` | `str` | Nombre del SRC, por ejemplo `'ETRS89 / UTM zone 30N'`. |
| `authority` | `str` | Autoridad del código, por ejemplo `'EPSG'`. |
| `authority_code` | `int` o `None` | Código EPSG, o `None` si el SRC no tiene código. |
| `dimension` | `int` | Número de coordenadas: 2 o 3. |
| `remarks` | `str` | Observaciones de EPSG sobre el SRC. |
| `axes` | `list[tuple[str, str]]` | Ejes en el orden de las coordenadas, como pares `(nombre, orientación)`. |
| `to_wkt(version=WktVersion.WKT1) -> str` | método | WKT del SRC en el dialecto [`WktVersion`](#wktversion) indicado. |
| `compare(other: Crs) -> int` | método | Semejanza estructural con `other`, de 0 a 100. 100 indica que los dos SRC son equivalentes. |
| `==` | operador | `True` si los dos SRC tienen la misma definición matemática (datum, meridiano origen, proyección y parámetros, unidades). No compara el nombre, la autoridad ni el orden de los ejes. |

`Crs` no se puede usar como clave de un `dict` ni como elemento de un `set`: no tiene `__hash__`.

## Transformation

Transformación entre dos SRC. Se crea con [`transformation`](#transformation).

| Miembro | Tipo | Descripción |
| :--- | :--- | :--- |
| `name` | `str` | Nombre de la transformación. |
| `authority` | `str` | Autoridad del código de la operación. |
| `authority_code` | `str` o `None` | Código EPSG de la operación, o `None` si la transformación no es una operación de EPSG. |
| `area_of_use` | `str` | Ámbito de aplicación. |
| `remarks` | `str` | Observaciones. |
| `source` | `Crs` | SRC de origen. |
| `target` | `Crs` | SRC de destino. |
| `source_dimension` | `int` | Número de coordenadas de los puntos de origen. |
| `target_dimension` | `int` | Número de coordenadas de los puntos transformados. |
| `is_identity` | `bool` | `True` si la transformación no cambia las coordenadas. |
| `transform(point) -> list[float]` | método | Transforma un punto, dado como secuencia de `source_dimension` números. Lanza `DimensionMismatchError` si el punto tiene otro número de coordenadas. |
| `transform_points(points) -> numpy.ndarray` | método | Transforma un *array* de NumPy de forma `(source_dimension,)` o `(n, source_dimension)` y devuelve un *array* de forma `(target_dimension,)` o `(n, target_dimension)`. Hace una sola llamada a la biblioteca nativa para todos los puntos. Necesita NumPy. |

## CoordinateOperation

Operación de EPSG entre dos SRC. `transformation` pasa una lista de operaciones a la función
`select_operation`.

| Propiedad | Tipo | Descripción |
| :--- | :--- | :--- |
| `code` | `int` | Código EPSG de la operación. |
| `name` | `str` | Nombre de la operación. |
| `accuracy` | `float` o `None` | Precisión en metros, o `None` si EPSG no la indica. |
| `area_of_use` | `str` | Ámbito de aplicación, por ejemplo `'Spain - mainland except northwest'`. |
| `grid_files` | `list[str]` | Rejillas que necesita la operación. Lista vacía si no necesita ninguna. |
| `scope` | `str` o `None` | Finalidad de la operación según EPSG. |
| `remarks` | `str` o `None` | Observaciones. |
| `information_source` | `str` o `None` | Organismo que publica la operación. |

## WktVersion

Dialecto de WKT que escribe `Crs.to_wkt`.

| Valor | Dialecto |
| :--- | :--- |
| `WKT1` | WKT 1 de OGC (OGC 01-009). Es el valor predeterminado. |
| `WKT1_ESRI` | WKT 1 de ESRI, sin código EPSG. Es el dialecto de los archivos `.prj` de ArcGIS. |
| `WKT1_ESRI_WITH_EPSG_CODE` | WKT 1 de ESRI con el código EPSG. |
| `WKT2_2015` | WKT 2 de ISO 19162:2015 (OGC 12-063r5). |
| `WKT2_2019` | WKT 2 de ISO 19162:2019 (OGC 18-010r7). |

## UnknownCrsPolicy

Qué hace `transformation` cuando uno de los dos SRC es local o desconocido y el otro no.

| Valor | Descripción |
| :--- | :--- |
| `REJECT` | No transforma. Es el valor predeterminado. |
| `IDENTITY` | Devuelve las coordenadas sin cambiarlas: supone el mismo marco de referencia y las mismas unidades en los dos SRC. |

## Excepciones

Todas las excepciones del paquete derivan de `CrsError`, que deriva de `RuntimeError`. Un
`except crskit.CrsError` captura todas.

| Excepción | Cuándo se lanza |
| :--- | :--- |
| `CrsError` | Biblioteca sin inicializar, base de datos de EPSG que no existe o no se puede abrir, y clase base de las demás. |
| `AuthorityCodeNotFoundError` | El código EPSG no existe en la base de datos. |
| `WktParseError` | El WKT no se puede interpretar. |
| `TransformationNotFoundError` | No hay ninguna operación entre los dos SRC, o hay varias y no se ha pasado `select_operation`. |
| `GridFileNotFoundError` | Falta una rejilla. Tiene las propiedades `grid_file` (nombre de la rejilla), `searched_path` (ruta donde se ha buscado), `operation_code` (código EPSG de la operación, o `None`), `operation_name`, `area_of_use` e `information_source`. |
| `CoordinateOutsideDomainError` | El punto está fuera de la rejilla o de la zona de validez de la proyección. |
| `DimensionMismatchError` | El punto tiene un número de coordenadas distinto del que admite la transformación. |
| `UnsupportedFormatError` | crskit no admite el tipo de SRC o el método de la operación. |
