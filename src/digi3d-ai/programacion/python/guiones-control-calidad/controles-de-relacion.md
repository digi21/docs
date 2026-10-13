# Controles de relación entre geometrías
<!-- id: controles-de-relacion -->

Estos controles de calidad de
[guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) comparan
la geometría analizada con las geometrías no borradas que tienen un código determinado. Digi3D.AI recorre
las geometrías de todos los archivos cargados: el archivo de dibujo y los archivos de referencia. La página [Repositorio de controles de calidad en Python](README.md) explica cómo se instala el
archivo y cómo se asigna un control a un código.

## Parámetros comunes

| Parámetro | Descripción |
|---|---|
| `código_o_etiqueta_areas_analizar`, `código_o_etiqueta_lineas_analizar`, `código_o_etiqueta_puntos_analizar` | Códigos de las geometrías con las que se compara la geometría analizada. Admite varios códigos separados por espacios, los comodines `?` y `*` y etiquetas precedidas de `#`. Consulta [Códigos, comodines y etiquetas](README.md#códigos-comodines-y-etiquetas). |
| `mensaje` | Texto del error que se muestra al usuario. |

En estas páginas, **área** es un polígono o una línea cerrada en planta (propiedad `closed_2d`), **línea**
es una geometría de tipo `Line`, abierta o cerrada, y **punto** es una geometría de tipo `Point`. Las
geometrías de tipo `Polygon` no cuentan como líneas.

Cada control comprueba primero el tipo de la geometría analizada. Si el tipo no es el del nombre del control
(`si_es_area_…`, `si_es_linea_…` o `si_es_punto_…`), el control no devuelve ningún error.

Salvo `si_es_linea_no_puede_cruzar_linea`, todos devuelven un
[GeometryError](../referencia/digi3d/exceptions.md) con el texto de `mensaje`.

## Cómo se buscan las geometrías relacionadas

Los controles de áreas, líneas y puntos usan funciones auxiliares que devuelven `True` si alguna geometría
del archivo de dibujo cumple una condición. Por ejemplo, `si_es_area_no_puede_solapar_otra_area`:

```python
def algun_area_con_codigo(geometría_analizando, código_o_etiqueta_areas_analizar, callback_condicion):
    return alguna_geometria(geometría_analizando, lambda g: es_area(g) and tiene_el_codigo_o_etiqueta(g, código_o_etiqueta_areas_analizar), callback_condicion)

@quality_control()
def si_es_area_no_puede_solapar_otra_area(geometry, adding_geometry, code_index, código_o_etiqueta_areas_analizar, mensaje):
    'Si la geometría que se está analizando es un área, comunica un error si se localiza en el archivo de dibujo un área que solape el área que se está analizando.'
    if not es_area(geometry):
        return

    if algun_area_con_codigo(geometry, código_o_etiqueta_areas_analizar, lambda área: geometry.overlaps(área)):
        return digi3d.GeometryError(mensaje)
```

Las condiciones usan los métodos de relación de [Geometry](../referencia/digi21.base/geometry.md):
`adjacent`, `within`, `completely_within`, `disjoint`, `equals`, `touches`, `overlaps`, `crosses`,
`terminates_within`, `endpoint_touches`, `endpoint_touches_interior`, `coincident` y
`coincident_and_terminates`. Cada método admite solo algunas combinaciones de tipos de geometría. Con una
combinación no admitida, el método lanza `TypeError: La relacion '…' no esta definida para esa combinacion
de tipos de geometria.` y Digi3D.AI muestra el error en un cuadro de mensaje. Las notas de cada tabla indican
en qué casos ocurre.

La función auxiliar no excluye la geometría analizada. Consulta
[La geometría analizada no se excluye](README.md#la-geometría-analizada-no-se-excluye).

## La geometría analizada es un área

| Control | Da error si |
|---|---|
| `si_es_area_debe_ser_adyacente_area` | Ningún área cumple `área.adjacent(geometry)`. |
| `si_es_area_debe_estar_completamente_dentro_de_area` | Ningún área cumple `geometry.completely_within(área)`. |
| `si_es_area_debe_estar_dentro_de_area` | Ningún área cumple `geometry.within(área)`. |
| `si_es_area_debe_ser_estar_separado_de_area` | Algún área cumple `not área.disjoint(geometry)`. |
| `si_es_area_debe_ser_igual_a_otra_area` | Ningún área cumple `área.equals(geometry)`. |
| `si_es_area_debe_unirse_con_otra_area` | Ningún área cumple `área.touches(geometry)`. |
| `si_es_area_debe_solapar_otra_area` | Ningún área cumple `geometry.overlaps(área)`. |
| `si_es_area_no_puede_solapar_otra_area` | Algún área cumple `geometry.overlaps(área)`. |

Combinaciones que lanzan `TypeError`:

* `si_es_area_debe_estar_completamente_dentro_de_area`: la geometría analizada es una línea cerrada.
  `completely_within` solo admite un polígono como geometría analizada.
* `si_es_area_debe_ser_igual_a_otra_area`: la geometría analizada es un polígono y el área con la que se
  compara es una línea cerrada. `equals` no admite una línea comparada con un polígono.
* `si_es_area_debe_solapar_otra_area` y `si_es_area_no_puede_solapar_otra_area`: la geometría analizada es
  una línea cerrada y el área con la que se compara es un polígono. `overlaps` no admite una línea
  comparada con un polígono.

## La geometría analizada es una línea

| Control | Da error si |
|---|---|
| `si_es_linea_debe_ser_adyacente_a_area` | Ningún área cumple `geometry.adjacent(área)`. |
| `si_es_linea_debe_estar_completamente_dentro_de_area` | Ningún área cumple `geometry.within(área)`. Usa la misma condición que un control de «dentro», no `completely_within`. |
| `si_es_linea_debe_cruzar_area` | Ningún área cumple `geometry.crosses(área)`. |
| `si_es_linea_debe_cruzar_linea` | Ninguna línea cumple `geometry.crosses(línea)`. |
| `si_es_linea_debe_estar_separado_de_area` | Algún área cumple `not geometry.disjoint(área)`. |
| `si_es_linea_debe_estar_separado_de_linea` | Alguna línea cumple `not geometry.disjoint(línea)`. |
| `si_es_linea_debe_ser_igual_a_linea` | Ninguna línea cumple `geometry.equals(línea)`. |
| `si_es_linea_debe_unirse_con_area` | Ningún área cumple `geometry.touches(área)`. |
| `si_es_linea_debe_unirse_con_linea` | Ninguna línea cumple `geometry.touches(línea)`. |
| `si_es_linea_debe_solapar_linea` | Ninguna línea cumple `geometry.overlaps(línea)`. |
| `si_es_linea_debe_terminar_dentro_de_area` | Ningún área cumple `geometry.terminates_within(área)`. |
| `si_es_linea_debe_terminar_en_borde_area` | Ningún área cumple `geometry.endpoint_touches(área)`. |
| `si_es_linea_debe_terminar_en_extremo_de_linea` | Ninguna línea cumple `geometry.endpoint_touches(línea)`. |
| `si_es_linea_debe_terminar_en_linea` | Ninguna línea cumple `geometry.endpoint_touches_interior(línea)`: el extremo de la geometría analizada toca la otra línea fuera de sus extremos. |
| `si_es_linea_solo_puede_continuar_con_lineas_con_codigo` | Alguna línea que **no** tiene los códigos del parámetro cumple `geometry.endpoint_touches(línea)`. |

La cadena de documentación de algunos de estos controles no coincide con el código. La tabla describe lo que
hace el código. Por ejemplo, la de `si_es_linea_debe_cruzar_linea` habla de áreas y la de
`si_es_linea_debe_ser_igual_a_linea` describe la condición contraria.

### si_es_linea_no_puede_cruzar_linea

Este control compara la línea analizada con las geometrías no borradas que tienen los códigos del parámetro
y cuya caja envolvente en planta se solapa con la de la línea analizada. Por cada cruce devuelve un
[GeometryRelationError](../referencia/digi3d/exceptions.md) con la otra geometría, el `mensaje` y las
coordenadas del vértice de cruce. En tiempo real (`adding_geometry` vale `True`) devuelve solo el primer
cruce. Este control sí salta la geometría analizada.

```python
for candidato in candidatos:
    if candidato == geometry:
        continue

    vertices_de_cruce = geometry.cross_vertices(candidato, adding_geometry)
    if len(vertices_de_cruce) == 0:
        continue

    if adding_geometry:
        return digi3d.GeometryRelationError(candidato, mensaje, geometry[vertices_de_cruce[0]])

    for vertice in vertices_de_cruce:
        errores_detectados.append(digi3d.GeometryRelationError(candidato, mensaje, geometry[vertice]))
```

Este control no filtra los candidatos por tipo. `cross_vertices` solo admite dos líneas: si una geometría
con los códigos del parámetro es un polígono, un punto, un texto o un complejo y su caja envolvente se
solapa con la de la línea analizada, el control lanza `TypeError`.

## La geometría analizada es un punto

| Control | Da error si |
|---|---|
| `si_es_punto_debe_coincidir_con_area` | Ningún área cumple `geometry.coincident(área)`. |
| `si_es_punto_debe_coincidir_con_extremo_linea` | Ninguna línea cumple `geometry.coincident_and_terminates(línea)`: el punto no coincide con el extremo de ninguna línea. |
| `si_es_punto_debe_coincidir_con_linea` | Ninguna línea cumple `geometry.coincident(línea)`. |
| `si_es_punto_debe_coincidir_con_punto` | Ningún punto cumple `geometry.coincident(punto)`. |
| `si_es_punto_debe_estar_separado_de_area` | Algún área cumple `not geometry.disjoint(área)`. |
| `si_es_punto_debe_estar_separado_de_linea` | Alguna línea cumple `not geometry.disjoint(línea)`. |
| `si_es_punto_debe_estar_separado_de_punto` | Algún punto cumple `not geometry.disjoint(punto)`. |
| `si_es_punto_debe_estar_en_el_interior_de_area` | Ningún área cumple `geometry.within(área)`. |

## Véase también

* [Repositorio de controles de calidad en Python](README.md)
* [Geometry](../referencia/digi21.base/geometry.md): métodos de relación entre geometrías.
* [Relaciones entre geometrías](../aplicaciones-de-consola/ejemplos/relaciones-entre-geometrias.md)
