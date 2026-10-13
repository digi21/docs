# Reglas de representación dinámica
<!-- id: reglas-de-representacion-dinamica -->

El archivo [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py)
contiene reglas de representación dinámica: funciones con el decorador `@dynamic_representation_rule()` que
cambian la representación con la que Digi3D.AI dibuja una geometría. Las reglas se cargan con el resto del
archivo desde la pestaña
[Entorno Python](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md). La página
[Repositorio de controles de calidad en Python](README.md) explica cómo se instala el archivo.

## Cómo se aplican

1. Ejecuta la orden [ASIGNAR\_REPRESENTACIONES](../../../referencia/ventana-de-dibujo/ordenes/a/asignar-representaciones.md).
2. Añade las reglas a **Reglas a ejecutar** y escribe sus parámetros.
3. Pulsa **Aceptar** para aplicar las reglas, o pulsa **Guardar...** para guardarlas en un archivo
   `.representations`.

Un archivo `.representations` se puede añadir a la tabla de códigos en la pestaña
[Representaciones dinámicas](../../../referencia/editor-de-tablas-de-codigos/pestanas/representaciones-dinamicas.md)
y activar con la orden [REPRESENTACION\_DINAMICA](../../../referencia/ventana-de-dibujo/ordenes/r/representacion-dinamica.md).

Digi3D.AI llama a cada regla con la geometría (`geometry`), el código con el que se dibuja
(`code_drawing`) y la lista de representaciones (`representations`). Todas las reglas de este archivo
modifican solo el primer elemento de la lista, `representations[0]`, y devuelven la lista.

## Parámetros comunes

| Parámetro | Descripción |
|---|---|
| `nombre_codigo` | Código al que se aplica la regla. Admite los comodines `?` y `*`, pero no varias palabras ni etiquetas. La regla no cambia nada si el código con el que se dibuja la geometría no coincide. |
| `color_asignar` | Color. El cuadro de parámetros de ASIGNAR\_REPRESENTACIONES lo escribe como texto `"R G B"`. La función `texto_a_color` lo convierte a `#RRGGBBFF`; un texto `"R G B A"` lo convierte a `#RRGGBBAA`. Un texto de una sola palabra se asigna sin cambios, salvo `#`, que produce `#000000ff`. Un texto de dos palabras o de más de cuatro produce `#ff0000ff`. |
| `grosor_asignar` | Grosor. La regla lo convierte con `int()`. |
| `nombre_atributo` | Nombre del atributo. |
| `valor_esperado` | Valor con el que se compara el atributo. |

## Familias de reglas

Hay tres familias. Cada una cambia una propiedad de la [representación](../referencia/digi3d/representation.md):

| Prefijo | Propiedad que cambia | Último parámetro |
|---|---|---|
| `asignar_color` | `color` | `color_asignar` |
| `asignar_color_relleno` | `fill_type` pasa a `FillType.Color` y `fill_color` toma el color | `color_asignar` |
| `asignar_grosor` | `weight` | `grosor_asignar` |

```python
@dynamic_representation_rule()
def asignar_color_relleno(geometry, code_drawing, representations, nombre_codigo, color_asignar):
	'Asigna como color de relleno el valor color_asignar al código nombre_codigo (admite comodines)'
	if not compara_codigos_con_comodines(code_drawing.code, nombre_codigo):
		return representations

	representations[0].fill_type = digi3d.FillType.Color
	representations[0].fill_color = texto_a_color(color_asignar)
	return representations
```

El nombre de cada regla es el prefijo seguido de una de las condiciones de las tablas siguientes. Por
ejemplo, `asignar_grosor_si_area_mayor_valor` asigna el grosor si el área es mayor que el valor.

### Sin condición

| Sufijo | Parámetros entre `nombre_codigo` y el último | Cambia la representación si |
|---|---|---|
| (ninguno) | Ninguno | Siempre. |

### Atributos de base de datos

Estas reglas leen los atributos de base de datos del primer código de la geometría que coincide con
`nombre_codigo`. Si el atributo no existe, no cambian nada. Antes de comparar, convierten `valor_esperado`
al tipo del atributo.

| Sufijo | Parámetros entre `nombre_codigo` y el último | Cambia la representación si el atributo |
|---|---|---|
| `_si_atributo_bbdd_menor_valor` | `nombre_atributo`, `valor_esperado` | Es menor que `valor_esperado`. |
| `_si_atributo_bbdd_menor_o_igual_valor` | `nombre_atributo`, `valor_esperado` | Es menor o igual que `valor_esperado`. |
| `_si_atributo_bbdd_igual_valor` | `nombre_atributo`, `valor_esperado` | Es igual a `valor_esperado`. |
| `_si_atributo_bbdd_mayor_o_igual` | `nombre_atributo`, `valor_esperado` | Es mayor o igual que `valor_esperado`. |
| `_si_atributo_bbdd_mayor_valor` | `nombre_atributo`, `valor_esperado` | Es mayor que `valor_esperado`. |
| `_si_atributo_bbdd_es_nulo` | `nombre_atributo` | Es nulo. |
| `_si_atributo_bbdd_no_es_nulo` | `nombre_atributo` | No es nulo. |
| `_si_multiples_atributos_bbdd_igual_valores` | `atributos_y_valores` | Todos los atributos tienen el valor indicado. `atributos_y_valores` es un texto con pares `atributo valor` separados por un espacio: `TIPO 3 USO 1`. |

### Atributos de la geometría

Estas reglas leen el diccionario `attributes` de la [geometría](../referencia/digi21.base/geometry.md). Si
el atributo no existe, no cambian nada.

| Sufijo | Parámetros entre `nombre_codigo` y el último | Cambia la representación si el atributo |
|---|---|---|
| `_si_atributo_diccionario_atributos_menor_valor` | `nombre_atributo`, `valor_esperado` | Es menor que `valor_esperado`. |
| `_si_atributo_diccionario_atributos_menor_o_igual_valor` | `nombre_atributo`, `valor_esperado` | Es menor o igual que `valor_esperado`. |
| `_si_atributo_diccionario_atributos_igual_valor` | `nombre_atributo`, `valor_esperado` | Es igual a `valor_esperado`. En la familia `asignar_color` la comparación no convierte tipos. |
| `_si_atributo_diccionario_atributos_mayor_o_igual` | `nombre_atributo`, `valor_esperado` | Es mayor o igual que `valor_esperado`. |
| `_si_atributo_diccionario_atributos_mayor_valor` | `nombre_atributo`, `valor_esperado` | Es mayor que `valor_esperado`. |
| `_si_atributo_diccionario_atributos_es_nulo` | `nombre_atributo` | Es nulo. |
| `_si_atributo_diccionario_atributos_no_es_nulo` | `nombre_atributo` | No es nulo. |
| `_si_multiples_atributos_diccionario_atributos_igual_valores` | `atributos_y_valores` | Todos los atributos tienen el valor indicado, con el mismo formato que la regla de base de datos. |

### Medidas de la geometría

Las reglas de área solo actúan sobre polígonos y líneas cerradas en planta. Las reglas de huecos solo actúan
sobre polígonos. El área y el perímetro se calculan con la
[calculadora geográfica](../referencia/digi3d/geographic-calculator.md) de la ventana de dibujo.

| Sufijo | Parámetro | Medida que se compara con el parámetro |
|---|---|---|
| `_si_area_inferior_valor`, `_si_area_inferior_o_igual_valor`, `_si_area_igual_valor`, `_si_area_mayor_igual_valor`, `_si_area_mayor_valor` | `area` | Valor absoluto del área. |
| `_si_perimetro_inferior_valor`, `_si_perimetro_inferior_o_igual_valor`, `_si_perimetro_igual_valor`, `_si_perimetro_mayor_o_igual_valor`, `_si_perimetro_mayor_valor` | `perimetro` | Perímetro en planta. |
| `_si_z_minima_inferior_valor`, `_si_z_minima_inferior_o_igual_valor`, `_si_z_minima_igual_valor`, `_si_z_minima_mayor_o_igual_valor`, `_si_z_minima_mayor_valor` | `valor` | Z mínima. |
| `_si_z_maxima_inferior_valor`, `_si_z_maxima_inferior_o_igual_valor`, `_si_z_maxima_igual_valor`, `_si_z_maxima_mayor_o_igual_valor`, `_si_z_maxima_mayor_valor` | `valor` | Z máxima. |
| `_si_altura_menor_valor`, `_si_altura_menor_o_igual_valor`, `_si_altura_igual_valor`, `_si_altura_mayor_o_igual_valor`, `_si_altura_mayor_valor` | `valor` | Z máxima menos Z mínima. |
| `_si_poligono_tiene_numero_huecos_menor_valor`, `_si_poligono_tiene_numero_huecos_menor_o_igual_valor`, `_si_poligono_tiene_numero_huecos_igual_valor`, `_si_poligono_tiene_numero_huecos_mayor_o_igual_valor`, `_si_poligono_tiene_numero_huecos_mayor_valor` | `numero_huecos` | Número de huecos del polígono. |
| `_si_numero_vertices_menor_valor`, `_si_numero_vertices_menor_o_igual_valor`, `_si_numero_vertices_igual_valor`, `_si_numero_vertices_mayor_o_igual_valor`, `_si_numero_vertices_mayor_valor` | `numero_vertices` | Número de vértices. |

`inferior` y `menor` equivalen a `<`, `inferior_o_igual` y `menor_o_igual` a `<=`, `igual` a `==`,
`mayor_igual` y `mayor_o_igual` a `>=`, y `mayor` a `>`.

### Color aleatorio por valor de atributo

Solo existen en las familias `asignar_color` y `asignar_color_relleno`:

* `asignar_color_aleatorio_segun_valor_atributo_bbdd(nombre_codigo, nombre_atributo)`
* `asignar_color_aleatorio_segun_valor_atributo_diccionario_atributos(nombre_codigo, nombre_atributo)`
* `asignar_color_relleno_aleatorio_segun_valor_atributo_bbdd(nombre_codigo, nombre_atributo)`
* `asignar_color_relleno_aleatorio_segun_valor_atributo_diccionario_atributos(nombre_codigo, nombre_atributo)`

Estas reglas asignan un color aleatorio a cada valor distinto del atributo. Las geometrías con el mismo valor
se dibujan con el mismo color. Los colores se guardan en un diccionario global del intérprete y se mantienen
mientras Digi3D.AI no vuelve a cargar el entorno Python. Las dos reglas de `asignar_color` comparten el
mismo diccionario.

```python
if valorAtributo not in colores_atributo_bbdd:
    r = random.randint(0, 255)
    g = random.randint(0, 255)
    b = random.randint(0, 255)
    color = "#" + f"{r:02x}" + f"{g:02x}" + f"{b:02x}" + "ff"
    colores_atributo_bbdd[valorAtributo] = color

representations[0].color = colores_atributo_bbdd[valorAtributo]
```

## Reglas que no funcionan como indica su nombre

* `asignar_color_relleno_si_poligono_tiene_numero_huecos_menor_valor` y
  `asignar_grosor_si_poligono_tiene_numero_huecos_menor_valor` usan la variable `valor`, que no existe en
  esas funciones; el parámetro se llama `numero_huecos`. Con un polígono del código indicado, la regla lanza
  `NameError`. Digi3D.AI no muestra el error: esa regla y las siguientes no se aplican a la geometría.
* `asignar_color_relleno_si_z_minima_igual_valor` compara con `<`: cambia el relleno si la Z mínima es
  menor que `valor`, no si es igual.
* `asignar_color_relleno_si_atributo_bbdd_menor_valor` y
  `asignar_color_relleno_si_atributo_diccionario_atributos_menor_valor` están definidas dos veces con el
  mismo código. Python conserva la segunda definición y el comportamiento no cambia.

## Véase también

* [ASIGNAR\_REPRESENTACIONES](../../../referencia/ventana-de-dibujo/ordenes/a/asignar-representaciones.md)
* [Representation](../referencia/digi3d/representation.md)
* [Repositorio de controles de calidad en Python](README.md)
