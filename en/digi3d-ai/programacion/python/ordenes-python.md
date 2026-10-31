# Python commands from ComandosDigi3DPython
<!-- id: ordenes-python -->
<!-- origen: 680cd558f05bf3e5173eed344fe58a3b1c59d0e1 -->

The public repository [**ComandosDigi3DPython**](https://github.com/digi21/ComandosDigi3DPython) contains Python scripts that Digi3D.AI runs as commands. Each `.py` is an independent command. Scripts use [`digi3d`](referencia/digi3d/README.md), available only inside Digi3D.AI.

Digi3D.AI installs these commands in `OrdenesPython` in its installation folder; downloading the repository is unnecessary unless modifying a command or using a version that does not install them.

`main` contains the Digi3D.AI version. `Digi3D.NET` contains the version for earlier releases and does not work in Digi3D.AI.

## Downloading scripts

Download only to modify a command or if your version does not install `OrdenesPython`. Choose:

* One file: open it on GitHub and click **Download raw file**.
* Whole repository: click **Code**, then **Download ZIP**.
* Clone using git:

  ```
  git clone https://github.com/digi21/ComandosDigi3DPython.git
  ```

## Where to copy files

When a command-line name matches no Digi3D.AI command, searches for a file with that name and `.py`, in this order, running the first match:

1. Active drawing file folder.
2. [Macro directory](../../referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md). With [projects](../../referencia/cuadros-de-dialogo/configurar-proyectos.md) enabled and a project macro directory assigned, uses the project's directory.
3. `C:\digi\`.
4. Digi3D.AI executable folder.
5. `OrdenesPython` in the executable folder. The installer copies repository commands here.

A matching name in any of the first four folders takes precedence over `OrdenesPython`. To modify an installed command:

1. Copy its `.py` from `OrdenesPython` to the macro directory.
2. Edit that copy. Digi3D.AI runs it instead of the `OrdenesPython` version.

If your version does not install `OrdenesPython`, copy downloaded `.py` files to the macro directory to make them available for any drawing.

> [Macro instructions](../../referencia/editor-de-tablas-de-codigos/pestanas/macroinstrucciones.md) stores command lists rather than Python. Each line runs as a command. To invoke a script, enter its command name, such as `FILTRAR=020124 020123 1`. Its `.py` must exist in one of those folders.

## Running a command

* Enter the file name without `.py`. Windows file names are case-insensitive: `FILTRAR` runs `filtrar.py`.
* For parameters, add `=` and space-separated values: `FILTRAR=020124 020123 1`.
* [PYTHON](../../referencia/ventana-de-dibujo/ordenes/p/python.md) runs a script by file name: `PYTHON=filtrar.py 020124 020123 1`.

A drawing window command with the same name takes precedence over the script. Photogrammetric commands are searched after `.py`: an existing script takes precedence.

Parameters arrive in global `argv`, a tuple of strings. Spaces, tabs and `=` separate them, so parameters cannot contain spaces. [Running scripts](panel-de-python/ejecutar-guiones.md) describes these execution methods and the Python script pane.

Parameterized commands validate before modifying the drawing. Incorrect parameter counts or numbers produce the error sound and a reason and usage dialog. Decimal parameters accept commas or periods.

Scripts not using `argv` can also be pasted and run in [Python script](../../referencia/paneles/guion-python.md).

## Repository commands

| File | Command | Parameters |
| --- | --- | --- |
| [borra_atr.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/borra_atr.py) | `BORRA_ATR` | None |
| [crea_tareas_con_areas_inferior_a_valor.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crea_tareas_con_areas_inferior_a_valor.py) | `CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR` | Area |
| [crear_tramos_para_unir_curvas.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crear_tramos_para_unir_curvas.py) | `CREAR_TRAMOS_PARA_UNIR_CURVAS` | Code, distance |
| [dibuja_texto_extraido_callejero_catastro.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_callejero_catastro.py) | `DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO` | None. Interactive command |
| [dibuja_texto_extraido_servicio_mapas_azure.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_servicio_mapas_azure.py) | `DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE` | Azure Maps key. Interactive command |
| [elimina_curvas_por_equidistancia.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/elimina_curvas_por_equidistancia.py) | `ELIMINA_CURVAS_POR_EQUIDISTANCIA` | One or more codes, contour interval |
| [filtrar.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/filtrar.py) | `FILTRAR` | Index code, intermediate code, contour interval, optional index contour interval (default 5) |
| [prefija_cod.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/prefija_cod.py) | `PREFIJA_COD` | Prefix. Interactive command |
| [redondea_z.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/redondea_z.py) | `REDONDEA_Z` | Index code, intermediate code |
| [renomcod_manteniendo_atributos.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/renomcod_manteniendo_atributos.py) | `RENOMCOD_MANTENIENDO_ATRIBUTOS` | Source code, destination code |
| [transforma_complejo_a_punto.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/transforma_complejo_a_punto.py) | `TRANSFORMA_COMPLEJO_A_PUNTO` | One or more codes |

All scripts use current `digi3d` API names. Each section links to its complete example explanation.

### BORRA_ATR

Removes database links from all drawing geometries. Clones each geometry with new codes retaining names but no table or record, adds clones and deletes originals. Also iterates deleted geometries.

```
BORRA_ATR
```

```python
clon = entidad.clone()  
codes = []
for codigo in entidad.codes:
    codes.append(digi3d.FeatureCode(codigo.code))
clon.codes = tuple(codes)
```

Full explanation: [Removing database links](panel-de-python/ejemplos/borra-atr.md).

### CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR

Adds a [task](referencia/digi3d/tasks.md) for each polygon or plan-closed line whose absolute area is below the parameter. Titles show area to three decimal places. Double-clicking moves to the geometry's bounding box center.

```
CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=100
```

Requires exactly one numeric parameter.

```python
if abs(g.area) >= area_maxima:
    continue
...
tarea = digi3d.TaskGotoCoordinates((x, y, z), titulo, "")

digi3d.add_task(tarea)
```

Full explanation: [Creating tasks for small areas](panel-de-python/ejemplos/crea-tareas-con-areas-inferior-a-valor.md).

### CREAR_TRAMOS_PARA_UNIR_CURVAS

Compares every nondeleted geometry pair whose first code matches. Rejects different first-vertex Z or shared endpoints. Otherwise tests start–start, start–end, end–start and end–end. For the first pair closer than the supplied plan distance, creates a two-vertex line with the first geometry's codes. Calculates distance with the drawing window's [geographic calculator](referencia/digi3d/geographic-calculator.md). Created segments produce a count balloon and end sound; none produces “Nothing was added” and the error sound.

```
CREAR_TRAMOS_PARA_UNIR_CURVAS=020123 10
```

Requires exactly two parameters, with numeric distance.

```python
if calculadora.calculate_distance_2d(coordenada_origen_a, coordenada_origen_b) < distancia:
    return [coordenada_origen_a, coordenada_origen_b]
...
linea_anadir = digi3d.Line(curva_a.codes, par_coordenadas)
```

Full explanation: [Connecting nearby contours](panel-de-python/ejemplos/crear-tramos-para-unir-curvas.md).

### DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO

Interactive command. Each data press sends coordinates to Spain's Cadastre coordinate query service and inserts text from response field `ldt`, containing street and building number. Each insertion has its own transaction and UNDO step.

```
DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO
```

Starts only for horizontal EPSG codes 4230, 4326, 4258, 32627, 32628, 32629, 32630, 32631, 25829, 25830, 25831, 23029, 23030 or 23031; otherwise prints a message to Results. Service errors are printed, play the error sound and display “The server returned an error.” and “Find more information in the results pane” on separate lines.

```python
def on_data_down(self, coordenadas):
    calle = self.obten_nombre_calle_servidor_catastro(coordenadas)

    if calle is None:
        return

    texto = digi3d.Text(calle, coordenadas)
    self.view.add(texto)
    self.view.redraw()
    self.new_transaction()
    return True
```

Full explanation: [Text from the Cadastre street directory](panel-de-python/ejemplos/dibuja-texto-extraido-callejero-catastro.md).

### DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE

Interactive command taking your Azure Maps *subscription key*. First input fixes insertion point, converts it to geographic coordinates with `view.to_geo` and queries Azure Maps reverse search for the street name. Second input fixes orientation, inserting street text rotated by the angle between both points.

```
DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE=clave
```

Without exactly one parameter, plays the error sound and displays “Missing Azure Maps key.” with usage. Query failures print to Results, play the error sound and await another insertion point.

```python
except Exception as e:
    # Without a street there is no text to orient: the next input is an origin again.
    print(e)
    self.origen = None
    digi3d.music(digi3d.MusicType.Error)
...
rotacion = self.view.geographic_calculator.calculate_trigonometric_angle(self.origen, coordenadas)
texto = digi3d.Text(self.calle, self.origen, rotation=rotacion)
```

Full explanation: [Text from Azure Maps](panel-de-python/ejemplos/dibuja-texto-extraido-servicio-mapas-azure.md).

### ELIMINA_CURVAS_POR_EQUIDISTANCIA

Deletes geometries with a specified code whose first-vertex Z is a multiple of the contour interval. All parameters except the last are codes; the last is interval.

```
ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5
```

Fewer than two parameters, or a nonnumeric or nonpositive interval, produces the error sound and reason and usage. If no geometry has the codes or meets the condition, reports the reason without usage and plays the error sound.

```python
EliminaCurvas(set(argv[0:-1]), numero(argv[-1]))
...
z = entidad[0][2]
return 0 == z % equidistancia
```

Full explanation: [Deleting contours by interval](panel-de-python/ejemplos/elimina-curvas-por-equidistancia.md).

### FILTRAR

Reproduces Digi for MS-DOS's FILTRAR on nondeleted geometries with index or intermediate contour codes:

1. Deletes geometries whose first-vertex Z is not a multiple of the contour interval.
2. Assigns index code where Z is a multiple of index contour interval × contour interval.
3. Assigns intermediate code to the remaining selection.

```
FILTRAR=020124 020123 1
```

Parameters are index code, intermediate code, contour interval and optional index contour interval: contours per index contour, default 5. `FILTRAR=020124 020123 1 4` assigns index code to contours whose Z is a multiple of 4.

Contour interval uses drawing Z units and must be positive; index contour interval must be a positive integer. Rounds Z to three decimal places before comparison. Code changes add a clone and delete the original. Clones have only the new code without table or record: other geometry codes are not retained.

```python
def es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
    return abs((round(coordenada_z, decimalesPrecision) * factorEscala) % (equidistancia * factorEscala)) < 1e-5
...
filtrar({argv[0]}, {argv[1]}, numero(argv[2]), int(argv[3]) if len(argv) == 4 else 5)
```

Full explanation: [Filtering intermediate and index contours](panel-de-python/ejemplos/filtrar.md).

### PREFIJA_COD

Interactive command. Each data input selects the nearest active drawing geometry and prefixes its codes. Leaves codes starting with `ACT_`, `BAI_` or the supplied prefix unchanged. Retains each code's table and record; each modified geometry has its own transaction.

```
PREFIJA_COD=BAI_
```

Without exactly one parameter, plays the error sound and displays “Missing prefix.” with usage.

```python
def on_data_up(self, coordenadas):
    ruta = self.view.drawing_file.path
    self.select_geometry(coordenadas, lambda geometria: geometria.file is not None and geometria.file.path == ruta)
    return True

def on_geometry_selected(self, geometria, coordenadas, primer_vertice, segundo_vertice):
    ...
```

Requires [`PythonCommand.select_geometry`](referencia/digi3d/python-command.md#selecting-a-geometry).

Full explanation: [Prefixing the selected geometry's codes](panel-de-python/ejemplos/prefija-cod.md).

### REDONDEA_Z

Uses Python `round` to round every vertex's Z to an integer for nondeleted geometries with either contour code. Adds a new line retaining codes with rounded coordinates and deletes the original.

```
REDONDEA_Z=020124 020123
```

Requires exactly two parameters.

```python
coordenadas.append((coordenada[0], coordenada[1], round(coordenada[2])))

clon = digi3d.Line(curva.codes, coordenadas)
```

The new geometry is always a line. `round` rounds .5 ties to even: 2.5 becomes 2 and 3.5 becomes 4.

Full explanation: [Rounding contour Z elevations](panel-de-python/ejemplos/redondea-z.md).

### RENOMCOD_MANTENIENDO_ATRIBUTOS

Replaces source code with destination code in all matching geometries. Retains the replaced code's table and record; other codes are unchanged.

```
RENOMCOD_MANTENIENDO_ATRIBUTOS=A B
```

Requires exactly two parameters. The script comment instructs opening the drawing without a database connection.

```python
nuevo = digi3d.FeatureCode(códigoDestino)
nuevo.table = código.table
nuevo.id = código.id
```

Full explanation: [Renaming a code while retaining attributes](panel-de-python/ejemplos/renomcod-manteniendo-atributos.md).

### TRANSFORMA_COMPLEJO_A_PUNTO

Replaces each nondeleted complex whose first code matches a supplied code with a point at its bounding box center, retaining codes.

```
TRANSFORMA_COMPLEJO_A_PUNTO=BAI_VEG_03_PT VEG_03_PT
```

Requires at least one code.

```python
punto = digi3d.Point(centro, entidad.codes, 0, (1.0, 1.0, 1.0))
vista.add(punto)
vista.delete(entidad)
...
for codigo in argv:
    transforma_complejo_a_punto(codigo)
vista.redraw()
```

Full explanation: [Transforming complexes into points](panel-de-python/ejemplos/transforma-complejo-a-punto.md).

## See also

* [Running scripts](panel-de-python/ejecutar-guiones.md)
* [Python pane programming examples](panel-de-python/ejemplos/README.md)
* [PythonCommand](referencia/digi3d/python-command.md)
* [DrawingView](referencia/digi3d/drawing-view.md)
