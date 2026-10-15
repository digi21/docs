# Inicialización de crskit
<!-- id: crskit-python-inicializacion -->

Módulo: [crskit](README.md)

Antes de crear ningún sistema de referencia de coordenadas (SRC), llama a `crskit.init` con la base de
datos de EPSG. Sin esa llamada, `crs_from_epsg`, `crs_from_wkt`, `compound_crs`, `transformation` y
`epsg_version` lanzan `CrsError` con el mensaje
`crskit is not initialised: call crskit.init(epsg_database) first.`

```python
init(epsg_database=None, data_directory=None) -> None
```

| Argumento | Tipo | Descripción |
| :--- | :--- | :--- |
| `epsg_database` | `str` o `os.PathLike` | Ruta del archivo SQLite de la base de datos de EPSG. Si es `None`, consulta el orden de búsqueda más abajo. |
| `data_directory` | `str` o `os.PathLike` | Carpeta de las rejillas (modelos de geoide, NTv2, NADCON). Si es `None`, es la carpeta que contiene `epsg_database`. |

Una rejilla es un archivo con una malla de valores (la ondulación del geoide o los desplazamientos entre
dos datums) que necesitan algunas operaciones de EPSG. Por ejemplo, la operación EPSG:9410, de ETRS89 a
altura de Alicante, necesita la rejilla `EGM08_REDNAP.txt` del IGN (Instituto Geográfico Nacional).

`init` lanza `CrsError` si el archivo de la base de datos no existe o no se puede abrir.

## Con la base de datos de EPSG de Digi3D.AI

El programa de instalación de Digi3D.AI copia en `C:\ProgramData\Digi3D.NET\OpenGis\`:

- `epsg-fiel.sqlite`: la base de datos de EPSG, versión 12.057, con las tablas del esquema oficial de
  EPSG (tablas `epsg_*`);
- las rejillas que usa Digi3D.AI, entre ellas `EGM08_REDNAP.txt` (península y Baleares) y
  `EGM08_REDNAP_Canarias.txt` (Canarias).

Digi3D.AI guarda la ruta de la base de datos en el valor de configuración `EpsgCrsKitSqlite` y la
carpeta de las rejillas en el valor `OpenGisFiles`, en la clave
`HKLM\Software\Digi21\Digi3D.NET\App\Configuration`. Tras la primera lectura del registro, Digi3D.AI
guarda la configuración de la máquina en `C:\ProgramData\Digi3D.NET\Digi3DNET.db`. El paquete `crskit`
no lee ninguno de los dos valores: pasa la ruta a `init`.

Como las rejillas están en la misma carpeta que la base de datos, basta con la ruta de la base de datos:

```python
import crskit

crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite")
print(crskit.epsg_version())    # 12.057
```

Con otra carpeta de rejillas:

```python
crskit.init(r"C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite", data_directory=r"D:\rejillas")
```

## Orden de búsqueda de la base de datos

Si `epsg_database` es `None`, `init` busca la base de datos en este orden:

1. La variable de entorno `DIGI21_EPSG_SQLITE`.
2. El paquete `crskit-epsg`, que instala `pip install crskit[epsg]`.

Si no encuentra ninguna, lanza `CrsError` con el mensaje
``no EPSG database: install one with `pip install crskit[epsg]`, set DIGI21_EPSG_SQLITE, or pass the path to init().``

Para usar la base de datos de Digi3D.AI sin escribir la ruta en el programa:

1. Define la variable de entorno en la ventana de comandos:

   ```
   set DIGI21_EPSG_SQLITE=C:\ProgramData\Digi3D.NET\OpenGis\epsg-fiel.sqlite
   ```

2. Llama a `init` sin argumentos:

   ```python
   crskit.init()
   ```

Con el paquete `crskit-epsg`, la carpeta de las rejillas predeterminada es la carpeta del paquete, que
no contiene ninguna rejilla. Para las operaciones que necesitan una rejilla, pasa `data_directory`, por
ejemplo la carpeta `C:\ProgramData\Digi3D.NET\OpenGis\` de Digi3D.AI.

## Rejilla que no se encuentra

Si una operación necesita una rejilla que no está en `data_directory`, `transformation` lanza
`GridFileNotFoundError`. La excepción indica la rejilla, la ruta donde se ha buscado y la operación de
EPSG que la necesita:

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

El [README de crskit](https://github.com/digi21/crskit/blob/main/python/README.md#where-to-get-the-grids)
enumera dónde se descargan las rejillas más habituales.

## Códigos propios de Digi3D.AI

Digi3D.AI define dos SRC verticales y dos operaciones que no están en la base de datos de EPSG. Al
iniciarse, Digi3D.AI registra en crskit un alias para cada uno: una equivalencia que hace que crskit
resuelva el código propio como el código oficial de EPSG, también cuando el código llega en el WKT de
un archivo.

| Código de Digi3D.AI | Nombre | Código de EPSG equivalente |
| :--- | :--- | :--- |
| SRC 69036406 | EGM08_REDNAP Península | SRC 5782, Alicante height |
| SRC 69036407 | EGM08_REDNAP Canarias | SRC 9398, Tenerife height |
| Operación 32770 | | Operación 9410, ETRS89-ESP [REGENTE] to Alicante height (1) |
| Operación 32771 | | Operación 9418, REGCAN95 to Tenerife height (1) |

El paquete `crskit` no expone la clase de alias de crskit (`CrsAliases`) y no registra estos alias. En
un programa de Python:

- `crs_from_epsg(69036406)` y `compound_crs(25830, 69036406)` lanzan `AuthorityCodeNotFoundError`;
- `crs_from_wkt` acepta un WKT con el SRC vertical `EGM08_REDNAP Península`, pero lo crea como un SRC
  sin código de EPSG, y `transformation` lanza `TransformationNotFoundError` al transformarlo a un SRC
  de EPSG.

Sustituye el código propio por el código de EPSG equivalente antes de llamar a crskit. Consulta el
ejemplo [Usar los códigos propios de Digi3D.AI](ejemplos.md#usar-los-códigos-propios-de-digi3dai).
