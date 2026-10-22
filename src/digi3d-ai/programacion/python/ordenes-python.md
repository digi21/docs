# Órdenes en Python del repositorio ComandosDigi3DPython
<!-- id: ordenes-python -->

El repositorio público [**ComandosDigi3DPython**](https://github.com/digi21/ComandosDigi3DPython) contiene
guiones de Python que Digi3D.AI ejecuta como órdenes. Cada archivo `.py` es una orden independiente. Los
guiones usan el módulo [`digi3d`](referencia/digi3d/README.md), que solo existe dentro de Digi3D.AI.

Digi3D.AI instala estas órdenes en la carpeta `OrdenesPython` de su carpeta de instalación, así que para
usarlas no hace falta descargar el repositorio. El repositorio solo hace falta para modificar una orden o
para usar las órdenes en las versiones de Digi3D.AI que no las instalan.

La rama `main` contiene la versión para Digi3D.AI. La rama `Digi3D.NET` contiene la versión para las
versiones anteriores a Digi3D.AI y no funciona en Digi3D.AI.

## Descargar los guiones

Descarga los guiones solo si vas a modificar una orden o si tu versión de Digi3D.AI no instala la carpeta
`OrdenesPython`. Elige una de estas formas:

* Descarga un archivo: abre el archivo en GitHub y pulsa **Download raw file**.
* Descarga el repositorio completo: en la página del repositorio, pulsa **Code** y después **Download ZIP**.
* Clona el repositorio con git:

  ```
  git clone https://github.com/digi21/ComandosDigi3DPython.git
  ```

## Dónde se copian los archivos

Cuando escribes en la línea de comandos un nombre que no corresponde a ninguna orden de Digi3D.AI,
Digi3D.AI busca un archivo con ese nombre y la extensión `.py`. Lo busca en estas carpetas, por este
orden, y ejecuta el primero que encuentra:

1. La carpeta del archivo de dibujo activo.
2. El [directorio de macroinstrucciones](../../referencia/cuadros-de-dialogo/configuracion/diging/directorio-de-macroinstrucciones.md).
   Si están activados los [proyectos](../../referencia/cuadros-de-dialogo/configurar-proyectos.md) y el
   proyecto tiene un directorio de macroinstrucciones, Digi3D.AI usa el del proyecto.
3. La carpeta `C:\digi\`.
4. La carpeta del ejecutable de Digi3D.AI.
5. La carpeta `OrdenesPython` dentro de la carpeta del ejecutable de Digi3D.AI. El instalador de
   Digi3D.AI copia en esta carpeta las órdenes del repositorio ComandosDigi3DPython.

Un archivo con el mismo nombre en cualquiera de las cuatro primeras carpetas tiene prioridad sobre el de
la carpeta `OrdenesPython`. Para modificar una de las órdenes que instala Digi3D.AI:

1. Copia el archivo `.py` de la carpeta `OrdenesPython` en el directorio de macroinstrucciones.
2. Edita la copia del directorio de macroinstrucciones. Digi3D.AI ejecuta esta copia y no la de la carpeta
   `OrdenesPython`.

Si tu versión de Digi3D.AI no instala la carpeta `OrdenesPython`, copia los archivos `.py` descargados del
repositorio en el directorio de macroinstrucciones para que estén disponibles con cualquier archivo de
dibujo.

> La pestaña [Macroinstrucciones](../../referencia/editor-de-tablas-de-codigos/pestanas/macroinstrucciones.md)
> de la tabla de códigos guarda listas de órdenes, no código Python. Digi3D.AI ejecuta cada línea de una
> macroinstrucción como una orden. Para que una macroinstrucción ejecute uno de estos guiones, escribe en
> ella el nombre de la orden, por ejemplo `FILTRAR=020124 020123 1`. El archivo `.py` tiene que estar en
> una de las carpetas anteriores.

## Cómo se ejecuta una orden

* Escribe en la línea de comandos el nombre del archivo sin la extensión `.py`. El sistema de archivos de
  Windows no distingue mayúsculas de minúsculas, así que `FILTRAR` ejecuta `filtrar.py`.
* Si la orden recibe parámetros, escribe `=` después del nombre y los parámetros separados por espacios:
  `FILTRAR=020124 020123 1`.
* La orden [PYTHON](../../referencia/ventana-de-dibujo/ordenes/p/python.md) ejecuta un guion por su nombre
  de archivo: `PYTHON=filtrar.py 020124 020123 1`.

Si una orden de la ventana de dibujo tiene el mismo nombre que el archivo, Digi3D.AI ejecuta esa orden y
no el guion. Las órdenes de la ventana fotogramétrica se buscan después del archivo `.py`: si existe el
guion, Digi3D.AI ejecuta el guion.

Los parámetros llegan al guion en la variable global `argv`, una tupla de cadenas. Digi3D.AI separa los
parámetros por espacios, tabuladores y signos `=`, así que un parámetro no puede contener espacios. La
página [Cómo ejecutar guiones](panel-de-python/ejecutar-guiones.md) describe estas formas de ejecución y
el panel de Guiones Python.

Las órdenes con parámetros comprueban los parámetros antes de modificar el dibujo. Si el número de
parámetros no es el que espera la orden o si un número no es válido, la orden emite el sonido de error y
muestra un cuadro con el motivo y la forma de uso. Los parámetros que admiten decimales aceptan la coma o el
punto como separador decimal.

Los guiones que no usan `argv` también se pueden pegar en el panel
[Guion Python](../../referencia/paneles/guion-python.md) y ejecutar desde él.

## Órdenes del repositorio

| Archivo | Orden | Parámetros |
|---|---|---|
| [borra_atr.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/borra_atr.py) | `BORRA_ATR` | Ninguno |
| [crea_tareas_con_areas_inferior_a_valor.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crea_tareas_con_areas_inferior_a_valor.py) | `CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR` | Área |
| [crear_tramos_para_unir_curvas.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/crear_tramos_para_unir_curvas.py) | `CREAR_TRAMOS_PARA_UNIR_CURVAS` | Código, distancia |
| [dibuja_texto_extraido_callejero_catastro.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_callejero_catastro.py) | `DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO` | Ninguno. Orden interactiva |
| [dibuja_texto_extraido_servicio_mapas_azure.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/dibuja_texto_extraido_servicio_mapas_azure.py) | `DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE` | Clave de Azure Maps. Orden interactiva |
| [elimina_curvas_por_equidistancia.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/elimina_curvas_por_equidistancia.py) | `ELIMINA_CURVAS_POR_EQUIDISTANCIA` | Uno o varios códigos, equidistancia |
| [filtrar.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/filtrar.py) | `FILTRAR` | Código de maestra, código de fina, equidistancia, intervalo de maestras (opcional, 5 por defecto) |
| [prefija_cod.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/prefija_cod.py) | `PREFIJA_COD` | Prefijo. Orden interactiva |
| [redondea_z.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/redondea_z.py) | `REDONDEA_Z` | Código de maestra, código de fina |
| [renomcod_manteniendo_atributos.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/renomcod_manteniendo_atributos.py) | `RENOMCOD_MANTENIENDO_ATRIBUTOS` | Código origen, código destino |
| [transforma_complejo_a_punto.py](https://github.com/digi21/ComandosDigi3DPython/blob/main/transforma_complejo_a_punto.py) | `TRANSFORMA_COMPLEJO_A_PUNTO` | Uno o varios códigos |

Todos los guiones usan nombres que existen en la API actual del módulo `digi3d`. Cada sección enlaza a la
página de ejemplo que explica el código completo.

### BORRA_ATR

Elimina el enlace a base de datos de todas las geometrías del dibujo. Para cada geometría, el guion crea un
clon cuyos códigos son códigos nuevos con el mismo nombre y sin tabla ni registro, añade los clones y
borra las geometrías originales. El guion recorre también las geometrías borradas.

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

Explicación completa: [Borrar el enlace a base de datos](panel-de-python/ejemplos/borra-atr.md).

### CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR

Añade al [panel de tareas](referencia/digi3d/tasks.md) una tarea por cada polígono o línea cerrada en planta
cuya área, en valor absoluto, es menor que el área indicada. El título de la tarea es el área con tres
decimales. Al hacer doble clic en la tarea, la ventana de dibujo se desplaza al centro de la caja envolvente
de la geometría.

```
CREA_TAREAS_CON_AREAS_INFERIOR_A_VALOR=100
```

La orden necesita exactamente un parámetro, y el parámetro tiene que ser un número.

```python
if abs(g.area) >= area_maxima:
    continue
...
tarea = digi3d.TaskGotoCoordinates((x, y, z), titulo, "")

digi3d.add_task(tarea)
```

Explicación completa: [Crear tareas con áreas pequeñas](panel-de-python/ejemplos/crea-tareas-con-areas-inferior-a-valor.md).

### CREAR_TRAMOS_PARA_UNIR_CURVAS

Compara cada par de geometrías no borradas cuyo primer código es el código indicado. La orden descarta el
par si la Z del primer vértice es distinta o si algún extremo de una geometría coincide con algún extremo de
la otra. Si no lo descarta, prueba las combinaciones de extremos en este orden: origen-origen, origen-fin,
fin-origen y fin-fin. Con la primera combinación cuyos extremos están a menos de la distancia indicada en
planta, crea una línea de dos vértices que une esos extremos, con los códigos de la primera geometría. La
distancia se calcula con la [calculadora geográfica](referencia/digi3d/geographic-calculator.md) de la
ventana de dibujo. Al terminar, si ha creado algún tramo, la orden muestra un globo con el número de tramos
y emite el sonido de fin; si no ha creado ninguno, muestra el globo «No se ha añadido nada» y emite el
sonido de error.

```
CREAR_TRAMOS_PARA_UNIR_CURVAS=020123 10
```

La orden necesita exactamente dos parámetros, y la distancia tiene que ser un número.

```python
if calculadora.calculate_distance_2d(coordenada_origen_a, coordenada_origen_b) < distancia:
    return [coordenada_origen_a, coordenada_origen_b]
...
linea_anadir = digi3d.Line(curva_a.codes, par_coordenadas)
```

Explicación completa: [Unir curvas de nivel cercanas](panel-de-python/ejemplos/crear-tramos-para-unir-curvas.md).

### DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO

Orden interactiva. Cada vez que pulsas el botón de dato, la orden envía las coordenadas del punto al
servicio web de consulta por coordenadas del Catastro de España e inserta en el punto un texto con el campo
`ldt` de la respuesta, que contiene la calle y el número del inmueble.
Cada texto queda en una transacción propia, así que cada UNDO deshace un texto.

```
DIBUJA_TEXTO_EXTRAIDO_CALLEJERO_CATASTRO
```

El guion solo crea la orden si el código EPSG horizontal de la ventana de dibujo es uno de estos: 4230,
4326, 4258, 32627, 32628, 32629, 32630, 32631, 25829, 25830, 25831, 23029, 23030, 23031. Si no lo es, el
guion escribe un mensaje en el panel de resultados. Si el servicio responde con un error, la orden escribe el
error en el panel de resultados, emite el sonido de error y muestra un cuadro de mensaje con dos líneas: «El
servidor ha respondido con un error.» y «Obtén más información en el panel de resultados».

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

Explicación completa: [Texto del callejero del Catastro](panel-de-python/ejemplos/dibuja-texto-extraido-callejero-catastro.md).

### DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE

Orden interactiva. El parámetro es la clave (*subscription key*) de tu cuenta de Azure Maps. El primer dato
fija el punto de inserción: la orden convierte el punto a coordenadas geográficas con `view.to_geo` y
consulta el nombre de la calle al servicio de búsqueda inversa de Azure Maps. El segundo dato fija la
orientación: la orden inserta un texto con el nombre de la calle, girado el ángulo que forman los dos
puntos.

```
DIBUJA_TEXTO_EXTRAIDO_SERVICIO_MAPAS_AZURE=clave
```

Si no se indica exactamente un parámetro, la orden emite el sonido de error y muestra el mensaje «Falta la
clave de Azure Maps.» con la forma de uso. Si la consulta a Azure Maps falla, la orden escribe el error en el
panel de resultados, emite el sonido de error y espera de nuevo el punto de inserción.

```python
except Exception as e:
    # Sin calle no hay texto que orientar: el siguiente dato vuelve a ser un origen.
    print(e)
    self.origen = None
    digi3d.music(digi3d.MusicType.Error)
...
rotacion = self.view.geographic_calculator.calculate_trigonometric_angle(self.origen, coordenadas)
texto = digi3d.Text(self.calle, self.origen, rotation=rotacion)
```

Explicación completa: [Texto del callejero de Azure Maps](panel-de-python/ejemplos/dibuja-texto-extraido-servicio-mapas-azure.md).

### ELIMINA_CURVAS_POR_EQUIDISTANCIA

Borra las geometrías que tienen alguno de los códigos indicados y cuya Z del primer vértice es múltiplo de
la equidistancia. Todos los parámetros excepto el último son códigos; el último es la equidistancia.

```
ELIMINA_CURVAS_POR_EQUIDISTANCIA=020123 020124 5
```

Si hay menos de dos parámetros o la equidistancia no es un número mayor que cero, la orden emite el sonido de error y
muestra el motivo y la forma de uso. Si ninguna geometría tiene los códigos o ninguna cumple la condición,
la orden emite el sonido de error y muestra el motivo, sin la forma de uso.

```python
EliminaCurvas(set(argv[0:-1]), numero(argv[-1]))
...
z = entidad[0][2]
return 0 == z % equidistancia
```

Explicación completa: [Eliminar curvas por equidistancia](panel-de-python/ejemplos/elimina-curvas-por-equidistancia.md).

### FILTRAR

Reproduce el programa FILTRAR de Digi para MS-DOS. Trabaja con las geometrías no borradas que tienen el
código de maestra o el de fina:

1. Borra las geometrías cuya Z del primer vértice no es múltiplo de la equidistancia.
2. Asigna el código de maestra a las geometrías cuya Z es múltiplo del intervalo de maestras por la
   equidistancia.
3. Asigna el código de fina al resto.

```
FILTRAR=020124 020123 1
```

Los parámetros son el código de maestra, el código de fina, la equidistancia y, de forma opcional, el
intervalo de maestras: cada cuántas curvas hay una maestra. Si no se indica el intervalo, vale 5. Con
`FILTRAR=020124 020123 1 4`, la orden asigna el código de maestra a las curvas cuya Z es múltiplo de 4.

La equidistancia tiene que ser un número mayor que cero, y el intervalo de maestras un número entero mayor
que cero. La orden redondea la Z a tres decimales antes de comparar. Para cambiar el código, la orden añade
un clon y borra la geometría original. El clon tiene un único código, el nuevo, sin tabla ni registro: la
orden no conserva los demás códigos de la geometría.

```python
def es_curva_fina_o_maestra(coordenada_z, equidistancia, decimalesPrecision, factorEscala):
    return abs((round(coordenada_z, decimalesPrecision) * factorEscala) % (equidistancia * factorEscala)) < 1e-5
...
filtrar({argv[0]}, {argv[1]}, numero(argv[2]), int(argv[3]) if len(argv) == 4 else 5)
```

Explicación completa: [Filtrar curvas (finas y maestras)](panel-de-python/ejemplos/filtrar.md).

### PREFIJA_COD

Orden interactiva. Con cada dato, la orden selecciona la geometría más próxima del archivo de dibujo activo
y antepone el prefijo indicado a sus códigos. No cambia los códigos que ya empiezan por `ACT_`, por `BAI_` o
por el prefijo indicado. Cada código conserva su tabla y su registro, y cada geometría modificada queda en
una transacción propia.

```
PREFIJA_COD=BAI_
```

Si no se indica exactamente un parámetro, la orden emite el sonido de error y muestra el mensaje «Falta el
prefijo.» con la forma de uso.

```python
def on_data_up(self, coordenadas):
    ruta = self.view.drawing_file.path
    self.select_geometry(coordenadas, lambda geometria: geometria.file is not None and geometria.file.path == ruta)
    return True

def on_geometry_selected(self, geometria, coordenadas, primer_vertice, segundo_vertice):
    ...
```

Necesita una versión de Digi3D.AI con
[`PythonCommand.select_geometry`](referencia/digi3d/python-command.md#seleccionar-una-geometría).

Explicación completa: [Prefijar los códigos de la geometría seleccionada](panel-de-python/ejemplos/prefija-cod.md).

### REDONDEA_Z

Redondea a entero con la función `round` de Python la Z de todos los vértices de las geometrías no borradas que tienen el
código de maestra o el de fina. Por cada geometría, la orden añade una línea nueva con los mismos códigos y
las coordenadas redondeadas, y borra la original.

```
REDONDEA_Z=020124 020123
```

La orden necesita exactamente dos parámetros.

```python
coordenadas.append((coordenada[0], coordenada[1], round(coordenada[2])))

clon = digi3d.Line(curva.codes, coordenadas)
```

La geometría nueva es siempre una línea, aunque la original sea de otro tipo. `round` redondea los valores
terminados en ,5 al entero par: 2,5 pasa a 2 y 3,5 pasa a 4.

Explicación completa: [Redondear la cota Z de las curvas](panel-de-python/ejemplos/redondea-z.md).

### RENOMCOD_MANTENIENDO_ATRIBUTOS

Cambia el código origen por el código destino en todas las geometrías que tienen el código origen. El código
nuevo conserva la tabla y el registro del código sustituido. Los demás códigos de la geometría no cambian.

```
RENOMCOD_MANTENIENDO_ATRIBUTOS=A B
```

La orden necesita exactamente dos parámetros. El comentario del guion indica que el archivo de dibujo se
abra sin conexión a una base de datos.

```python
nuevo = digi3d.FeatureCode(códigoDestino)
nuevo.table = código.table
nuevo.id = código.id
```

Explicación completa: [Renombrar un código manteniendo sus atributos](panel-de-python/ejemplos/renomcod-manteniendo-atributos.md).

### TRANSFORMA_COMPLEJO_A_PUNTO

Sustituye cada geometría de tipo complejo, no borrada, cuyo primer código es uno de los códigos indicados
por un punto situado en el centro de su caja envolvente, con los mismos códigos.

```
TRANSFORMA_COMPLEJO_A_PUNTO=BAI_VEG_03_PT VEG_03_PT
```

La orden necesita al menos un código.

```python
punto = digi3d.Point(centro, entidad.codes, 0, (1.0, 1.0, 1.0))
vista.add(punto)
vista.delete(entidad)
...
for codigo in argv:
    transforma_complejo_a_punto(codigo)
vista.redraw()
```

Explicación completa: [Transformar complejos en puntos](panel-de-python/ejemplos/transforma-complejo-a-punto.md).

## Véase también

* [Cómo ejecutar guiones](panel-de-python/ejecutar-guiones.md)
* [Ejemplos de programación del panel de Python](panel-de-python/ejemplos/README.md)
* [PythonCommand](referencia/digi3d/python-command.md)
* [DrawingView](referencia/digi3d/drawing-view.md)
