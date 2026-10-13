# Controles de coordenada Z
<!-- id: controles-de-coordenada-z -->

Estos controles de calidad de
[guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py) comprueban
la coordenada Z de los vértices de la geometría analizada. La página
[Repositorio de controles de calidad en Python](README.md) explica cómo se instala el archivo y cómo se
asigna un control a un código.

Todos devuelven un [GeometryError](../referencia/digi3d/exceptions.md) con las coordenadas del vértice que
falla, salvo los dos controles de curvas maestras y finas, que no indican coordenadas.

## Evolución de la Z a lo largo de la geometría

Estos controles no tienen parámetros propios. Devuelven el error en el primer vértice que no cumple la
condición.

| Control | Da error si un vértice tiene |
|---|---|
| `debe_tener_todos_los_vertices_con_la_misma_coordenada_z` | Una Z distinta de la del primer vértice. |
| `debe_tener_coordenadas_z_crecientes` | Una Z menor o igual que la del vértice anterior. |
| `debe_tener_coordenadas_z_crecientes_moderado` | Una Z menor que la del vértice anterior. |
| `debe_tener_coordenadas_z_decrecientes` | Una Z mayor o igual que la del vértice anterior. |
| `debe_tener_coordenadas_z_decrecientes_moderado` | Una Z mayor que la del vértice anterior. |

`debe_tener_todos_los_vertices_con_la_misma_coordenada_z` compara primero la Z mínima y la Z máxima de la
geometría con `digi3d.same_coordinates`, que tiene en cuenta la tolerancia configurada. Si son iguales, no
hay error. Si no lo son, busca el primer vértice cuya Z es distinta de la del primer vértice, con una
comparación exacta.

```python
@quality_control()
def debe_tener_todos_los_vertices_con_la_misma_coordenada_z(geometry, adding_geometry, code_index):
    'Comunica un error si localiza un vértice con la coordenada Z distinta de la del primer vértice'
    if digi3d.same_coordinates(geometry.min[2], geometry.max[2]):
        return

    zInicial = geometry[0][2]
    for coordenada in geometry:
        if coordenada[2] != zInicial:
            return digi3d.GeometryError('Las geometrías con este código deben tener todos los vértices con la misma coordenada Z', coordenada)
```

## Curvas maestras y finas

Estos controles leen la equidistancia de la propiedad `equidistance` de la ventana de dibujo, que
corresponde a la variable [EQUIDISTANCIA](../../../referencia/ventana-de-dibujo/variables/e/equidistancia.md).
Una curva maestra es una de cada cinco curvas.

| Control | Da error si la Z del primer vértice |
|---|---|
| `la_coordenada_z_del_primer_vertice_debe_ser_el_de_una_curva_maestra` | No es múltiplo de cinco veces la equidistancia. Mensaje: «No es maestra». |
| `la_coordenada_z_del_primer_vertice_debe_ser_el_de_una_curva_fina` | No es múltiplo de la equidistancia, o es múltiplo de cinco veces la equidistancia. Mensaje: «No es fina». |

La comprobación usa el operador `%` sin tolerancia. Con equidistancias decimales, como 0,1, el resto de la
división puede no ser exactamente 0 por el redondeo de los números en coma flotante.

```python
def es_maestra(coordenada_z, equidistancia, intervalo_maestras=5):
    if not es_curva_fina_o_maestra(coordenada_z, equidistancia):
        return False

    return 0 == coordenada_z % (intervalo_maestras * equidistancia)
```

## Diferencia con el modelo digital del terreno

Estos controles proyectan cada vértice sobre el terreno con el método `project` de la
[ventana de dibujo](../referencia/digi3d/drawing-view.md). Si un vértice no se puede proyectar, el control
lo salta. El parámetro `distancia` es la diferencia de Z permitida. El control devuelve el error en el
primer vértice que no cumple la condición.

| Control | Da error si |
|---|---|
| `marcar_error_si_diferencia_z_al_proyectar_mdt_superior_a` | El valor absoluto de la diferencia entre la Z proyectada y la Z del vértice es mayor que `distancia`. |
| `marcar_error_si_diferencia_z_al_proyectar_mdt_inferior_a` | El valor absoluto de la diferencia es menor que `distancia`. |
| `marcar_error_si_diferencia_z_de_zetas_absolutas_al_proyectar_mdt_es_superior_a_valor` | El valor absoluto de la diferencia entre las dos Z truncadas a entero es mayor que `distancia`. |
| `marcar_error_si_diferencia_z_de_zetas_absolutas_al_proyectar_mdt_es_interior_a_valor` | El valor absoluto de la diferencia entre las dos Z truncadas a entero es menor que `distancia`. |

Los dos últimos controles convierten cada Z con `int()`, que elimina los decimales, antes de restar.

```python
for coordenada in geometry:
    z_proyectada = v.project(coordenada)

    if z_proyectada is None:
        continue

    distancia_calculada = abs(z_proyectada - coordenada[2])
    if distancia_calculada > distancia:
        return digi3d.GeometryError('Vértice de la geometría con una diferencia en Z con respecto al MDT de: {} que es superior a: {}'.format(distancia_calculada, distancia), coordenada)
```

## Diferencia de Z donde se tocan las líneas

Los controles `al_tocar_lineas_debe_haber_una_diferencia_de_z_…` reciben dos parámetros:

| Parámetro | Descripción |
|---|---|
| `código_o_etiqueta_analizar` | Códigos de las geometrías con las que se compara. Admite comodines y etiquetas. Consulta [Códigos, comodines y etiquetas](README.md#códigos-comodines-y-etiquetas). |
| `tolerancia` | Diferencia de Z con la que se compara. |

El control toma las geometrías no borradas que tienen esos códigos y cuya caja envolvente en planta se
solapa con la de la geometría analizada. Después llama a `digi3d.get_intersections`, que devuelve los
vértices de la geometría analizada que coinciden en planta con un vértice de otra geometría. Un cruce entre
dos segmentos sin vértice común no es un punto de contacto para estos controles. En cada punto de contacto,
el control calcula el valor absoluto de la diferencia entre la Z del vértice de cada geometría.

| Control | Da error si la diferencia es |
|---|---|
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_inferior_a` | Mayor o igual que `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_inferior_o_igual_a` | Mayor que `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_superior_a` | Menor o igual que `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_superior_o_igual_a` | Menor que `tolerancia`. |
| `al_tocar_lineas_debe_haber_una_diferencia_de_z_igual_a` | Distinta de `tolerancia`. |

Los cinco controles devuelven una lista con un `GeometryError` por cada punto de contacto que falla, con las coordenadas del vértice de la
geometría analizada. En tiempo real devuelven solo el primero.

```python
intersecciones = digi3d.get_intersections(geometry, candidatos)
for coordenadas_interseccion in intersecciones:
    geometrias_que_llegan_a_esta_interseccion = intersecciones[coordenadas_interseccion]
    vertice_geometria_analizando = geometrias_que_llegan_a_esta_interseccion[geometry]
    coordenada_de_geometria_analizando = geometry[vertice_geometria_analizando]
    coordenada_z_comparar = coordenada_de_geometria_analizando[2]

    for otra_geometria in geometrias_que_llegan_a_esta_interseccion:
        if otra_geometria == geometry:
            continue

        vertice_otra_geometria = geometrias_que_llegan_a_esta_interseccion[otra_geometria]
        coordenada_z_otra_geometria = otra_geometria[vertice_otra_geometria][2]

        diferenciaZ = abs(coordenada_z_otra_geometria - coordenada_z_comparar)
        if diferenciaZ >= tolerancia:
            errores_detectados.append(digi3d.GeometryError("Las geometrías se tocan con una diferencia en la coordenada Z de {} (superior o igual a {})".format(diferenciaZ, tolerancia), coordenada_de_geometria_analizando))

            if adding_geometry:
                return errores_detectados

return errores_detectados
```

## Véase también

* [Repositorio de controles de calidad en Python](README.md)
* [DrawingView](../referencia/digi3d/drawing-view.md): `project` y `equidistance`.
* [Funciones del módulo digi3d](../referencia/digi3d/functions.md): `get_intersections` y `same_coordinates`.
