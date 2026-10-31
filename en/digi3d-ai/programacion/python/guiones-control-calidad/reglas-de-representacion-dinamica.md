# Dynamic representation rules
<!-- id: reglas-de-representacion-dinamica -->
<!-- origen: 5a073ed5cbf47ee36ba921686360c9e3da098138 -->

[guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) contains `@dynamic_representation_rule()` functions changing how Digi3D.AI draws geometries. Load them with the file's other functions under [Python environment](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md). See [Python quality control repository](README.md) for installation.

## Applying rules

1. Run [ASSIGN\_REPRESENTATIONS](../../../referencia/ventana-de-dibujo/ordenes/a/asignar-representaciones.md).
2. Add rules to **Rules to be executed** and enter parameters.
3. Click **OK** to apply, or **Save...** to save a `.representations` file.

Add a `.representations` file to the codes table under [Dynamic representations](../../../referencia/editor-de-tablas-de-codigos/pestanas/representaciones-dinamicas.md), then activate it with [DYNAMIC\_REPRESENTATION](../../../referencia/ventana-de-dibujo/ordenes/r/representacion-dinamica.md).

Digi3D.AI passes each rule the geometry (`geometry`), drawing code (`code_drawing`) and representation list (`representations`). These rules modify only `representations[0]` and return the list.

## Common parameters

| Parameter | Description |
| --- | --- |
| `nombre_codigo` | Code to match. Accepts `?` and `*`, without multiple words or tags. Unmatched drawing codes remain unchanged. |
| `color_asignar` | Color. The ASSIGN\_REPRESENTATIONS parameter dialog writes `"R G B"`; `texto_a_color` converts it to `#RRGGBBFF`, or `"R G B A"` to `#RRGGBBAA`. A single word is assigned unchanged except `#`, which becomes `#000000ff`. Two or more than four words produce `#ff0000ff`. |
| `grosor_asignar` | Width, converted with `int()`. |
| `nombre_atributo` | Attribute name. |
| `valor_esperado` | Value compared against the attribute. |

## Rule families

Three families each change a [representation](../referencia/digi3d/representation.md) property:

| Prefix | Changed property | Last parameter |
| --- | --- | --- |
| `asignar_color` | `color` | `color_asignar` |
| `asignar_color_relleno` | `fill_type` becomes `FillType.Color`; `fill_color` receives the color | `color_asignar` |
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

Rule names combine a prefix and a condition below. For example, `asignar_grosor_si_area_mayor_valor` assigns width when area exceeds the value.

### Unconditional

| Suffix | Parameters between `nombre_codigo` and the last | Changes representation |
| --- | --- | --- |
| (none) | None | Always. |

### Database attributes

Read database attributes from the geometry's first code matching `nombre_codigo`. Missing attributes cause no change. Convert `valor_esperado` to the attribute type before comparison.

| Suffix | Parameters between `nombre_codigo` and the last | Changes representation if attribute |
| --- | --- | --- |
| `_si_atributo_bbdd_menor_valor` | `nombre_atributo`, `valor_esperado` | Is below `valor_esperado`. |
| `_si_atributo_bbdd_menor_o_igual_valor` | `nombre_atributo`, `valor_esperado` | Is at or below `valor_esperado`. |
| `_si_atributo_bbdd_igual_valor` | `nombre_atributo`, `valor_esperado` | Equals `valor_esperado`. |
| `_si_atributo_bbdd_mayor_o_igual` | `nombre_atributo`, `valor_esperado` | Is at or above `valor_esperado`. |
| `_si_atributo_bbdd_mayor_valor` | `nombre_atributo`, `valor_esperado` | Exceeds `valor_esperado`. |
| `_si_atributo_bbdd_es_nulo` | `nombre_atributo` | Is null. |
| `_si_atributo_bbdd_no_es_nulo` | `nombre_atributo` | Is not null. |
| `_si_multiples_atributos_bbdd_igual_valores` | `atributos_y_valores` | Every attribute matches its value. `atributos_y_valores` is text containing space-separated `atributo valor` pairs: `TIPO 3 USO 1`. |

### Geometry attributes

Read the [geometry](../referencia/digi21.base/geometry.md)'s `attributes` dictionary. Missing attributes cause no change.

| Suffix | Parameters between `nombre_codigo` and the last | Changes representation if attribute |
| --- | --- | --- |
| `_si_atributo_diccionario_atributos_menor_valor` | `nombre_atributo`, `valor_esperado` | Is below `valor_esperado`. |
| `_si_atributo_diccionario_atributos_menor_o_igual_valor` | `nombre_atributo`, `valor_esperado` | Is at or below `valor_esperado`. |
| `_si_atributo_diccionario_atributos_igual_valor` | `nombre_atributo`, `valor_esperado` | Equals `valor_esperado`. The `asignar_color` family does not convert types for this comparison. |
| `_si_atributo_diccionario_atributos_mayor_o_igual` | `nombre_atributo`, `valor_esperado` | Is at or above `valor_esperado`. |
| `_si_atributo_diccionario_atributos_mayor_valor` | `nombre_atributo`, `valor_esperado` | Exceeds `valor_esperado`. |
| `_si_atributo_diccionario_atributos_es_nulo` | `nombre_atributo` | Is null. |
| `_si_atributo_diccionario_atributos_no_es_nulo` | `nombre_atributo` | Is not null. |
| `_si_multiples_atributos_diccionario_atributos_igual_valores` | `atributos_y_valores` | Every attribute matches its value, in the database rule's format. |

### Geometry measurements

Area rules apply only to polygons and plan-closed lines. Hole rules apply only to polygons. Area and perimeter use the drawing window's [geographic calculator](../referencia/digi3d/geographic-calculator.md).

| Suffix | Parameter | Compared measurement |
| --- | --- | --- |
| `_si_area_inferior_valor`, `_si_area_inferior_o_igual_valor`, `_si_area_igual_valor`, `_si_area_mayor_igual_valor`, `_si_area_mayor_valor` | `area` | Absolute area. |
| `_si_perimetro_inferior_valor`, `_si_perimetro_inferior_o_igual_valor`, `_si_perimetro_igual_valor`, `_si_perimetro_mayor_o_igual_valor`, `_si_perimetro_mayor_valor` | `perimetro` | Plan perimeter. |
| `_si_z_minima_inferior_valor`, `_si_z_minima_inferior_o_igual_valor`, `_si_z_minima_igual_valor`, `_si_z_minima_mayor_o_igual_valor`, `_si_z_minima_mayor_valor` | `valor` | Minimum Z. |
| `_si_z_maxima_inferior_valor`, `_si_z_maxima_inferior_o_igual_valor`, `_si_z_maxima_igual_valor`, `_si_z_maxima_mayor_o_igual_valor`, `_si_z_maxima_mayor_valor` | `valor` | Maximum Z. |
| `_si_altura_menor_valor`, `_si_altura_menor_o_igual_valor`, `_si_altura_igual_valor`, `_si_altura_mayor_o_igual_valor`, `_si_altura_mayor_valor` | `valor` | Maximum Z minus minimum Z. |
| `_si_poligono_tiene_numero_huecos_menor_valor`, `_si_poligono_tiene_numero_huecos_menor_o_igual_valor`, `_si_poligono_tiene_numero_huecos_igual_valor`, `_si_poligono_tiene_numero_huecos_mayor_o_igual_valor`, `_si_poligono_tiene_numero_huecos_mayor_valor` | `numero_huecos` | Polygon hole count. |
| `_si_numero_vertices_menor_valor`, `_si_numero_vertices_menor_o_igual_valor`, `_si_numero_vertices_igual_valor`, `_si_numero_vertices_mayor_o_igual_valor`, `_si_numero_vertices_mayor_valor` | `numero_vertices` | Vertex count. |

`inferior` and `menor` mean `<`; `inferior_o_igual` and `menor_o_igual` mean `<=`; `igual` means `==`; `mayor_igual` and `mayor_o_igual` mean `>=`; `mayor` means `>`.

### Random color by attribute value

Available only in `asignar_color` and `asignar_color_relleno`:

* `asignar_color_aleatorio_segun_valor_atributo_bbdd(nombre_codigo, nombre_atributo)`
* `asignar_color_aleatorio_segun_valor_atributo_diccionario_atributos(nombre_codigo, nombre_atributo)`
* `asignar_color_relleno_aleatorio_segun_valor_atributo_bbdd(nombre_codigo, nombre_atributo)`
* `asignar_color_relleno_aleatorio_segun_valor_atributo_diccionario_atributos(nombre_codigo, nombre_atributo)`

Assign a random color per distinct attribute value; geometries sharing a value share a color. Colors persist in a global interpreter dictionary until Digi3D.AI reloads Python environment. Both `asignar_color` rules share that dictionary.

```python
if valorAtributo not in colores_atributo_bbdd:
    r = random.randint(0, 255)
    g = random.randint(0, 255)
    b = random.randint(0, 255)
    color = "#" + f"{r:02x}" + f"{g:02x}" + f"{b:02x}" + "ff"
    colores_atributo_bbdd[valorAtributo] = color

representations[0].color = colores_atributo_bbdd[valorAtributo]
```

## See also

* [ASSIGN\_REPRESENTATIONS](../../../referencia/ventana-de-dibujo/ordenes/a/asignar-representaciones.md)
* [Representation](../referencia/digi3d/representation.md)
* [Python quality control repository](README.md)
