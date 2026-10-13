# Repositorio de controles de calidad en Python
<!-- id: guiones-control-calidad -->

El repositorio público
[**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D)
contiene un único archivo, [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py),
con dos grupos de funciones:

* **Controles de calidad**: funciones con el decorador `@quality_control()` que se asignan a un código en
  la tabla de códigos. La página [Controles de calidad](../controles-de-calidad/README.md) explica cómo se
  declaran y cómo comunican los errores.
* **Reglas de representación dinámica**: funciones con el decorador `@dynamic_representation_rule()` que
  cambian el color, el color de relleno o el grosor con el que se dibuja una geometría.

El archivo usa el módulo [`digi3d`](../referencia/digi3d/README.md), que solo existe dentro de Digi3D.AI.

## Instalar el archivo en una tabla de códigos

Digi3D.AI carga el contenido de la pestaña
[Entorno Python](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md) de la tabla de
códigos cada vez que la tabla cambia. Para instalar `guiones.py`:

1. Abre la tabla de códigos con el [Editor de tablas de códigos](../../../referencia/editor-de-tablas-de-codigos/README.md).
2. Selecciona la pestaña **Entorno Python**.
3. Pulsa **Descargar de GitHub la última versión**. El editor descarga `guiones.py` de la rama `main` y
   sustituye todo el contenido de la pestaña.
4. Pulsa **Aceptar**.

Sin conexión a Internet, descarga `guiones.py` desde GitHub (botón **Download raw file**), copia su
contenido y pégalo en el editor de la pestaña **Entorno Python**.

El paso 3 borra las funciones propias que hubiera en la pestaña. Cópialas antes y pégalas después al final
del contenido descargado. Las tablas de códigos de versiones anteriores de Digi3D se actualizan con el
procedimiento de
[Actualizar los controles de calidad Python de una tabla de códigos](../../../usuarios-de-versiones-anteriores/actualizar-guiones-python.md).

## Asignar un control de calidad a un código

1. En la pestaña de códigos del editor, selecciona el código.
2. Pulsa el botón de la propiedad **Controles de calidad a aplicar**. Se abre el cuadro
   [Controles de calidad](../../../referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md).
3. Selecciona el control en **Controles de calidad disponibles** y pulsa **Añadir**.
4. Si el control tiene parámetros, escribe sus valores en el cuadro **Parámetros del control de calidad** y
   pulsa **Aceptar**.
5. Pulsa **Aceptar** en el cuadro **Controles de calidad** y en el editor.

Digi3D.AI ejecuta los controles asignados al ejecutar las órdenes
[CONTROL\_CALIDAD\_COD](../../../referencia/ventana-de-dibujo/ordenes/c/control-calidad-cod.md),
[CONTROL\_CALIDAD\_ENTIDADES\_VISIBLES](../../../referencia/ventana-de-dibujo/ordenes/c/control-calidad-entidades-visibles.md)
y [CONTROL\_CALIDAD\_SELECCION](../../../referencia/ventana-de-dibujo/ordenes/c/control-calidad-seleccion.md).
Si están activadas la variable
[CONTROL\_CALIDAD\_AL\_FINALIZAR\_ENTIDAD](../../../referencia/ventana-de-dibujo/variables/c/control-calidad.md)
y la propiedad **Analizar control de calidad al digitalizar** del código, Digi3D.AI ejecuta también los
controles al terminar de digitalizar cada geometría, antes de guardarla en el archivo de dibujo.

### Cómo se escriben los parámetros

El cuadro **Parámetros del control de calidad** guarda los valores como un diccionario de Python. Un número
entero sin ceros a la izquierda o un número con punto decimal se guarda como número; el resto se guarda
como texto. La regla completa está en
[Cuadro de diálogo Parámetros del control de calidad](../../../referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md).
Un código formado solo por cifras y sin cero a la izquierda, como `120400`, se guarda por tanto como número. Los controles que buscan códigos llaman a `split()` sobre el parámetro, y
con un número fallan con el error `AttributeError: 'int' object has no attribute 'split'`. Un código con
cero a la izquierda, como `020123`, se guarda como texto y funciona.

### Códigos, comodines y etiquetas

Los parámetros cuyo nombre empieza por `código_o_etiqueta` admiten una o varias palabras separadas por
espacios. La geometría cumple la condición si alguno de sus códigos coincide con alguna de las palabras:

* `?` sustituye a un carácter: `0201?3` coincide con `020123` y con `020133`.
* `*` acepta el resto del código a partir de su posición: `0201*` coincide con `020123` y con
  `0201ABC`, pero no con `0201`, porque la comparación exige al menos un carácter en la posición del `*`.
* Una palabra que empieza por `#` es una etiqueta: `#edificios` coincide con los códigos que tienen la
  etiqueta `edificios` en la tabla de códigos activa.

La función que hace la comparación es `compara_codigos_con_comodines`:

```python
def compara_codigos_con_comodines(codigo_a, codigo_b):
    tamanoCodigoA = len(codigo_a)
    tamanoCodigoB = len(codigo_b)
    for i in range(min(tamanoCodigoA, tamanoCodigoB)):
        if codigo_a[i] == '*' or codigo_b[i] == '*':
            return True
        if codigo_a[i] == '?' or codigo_b[i] == '?':
            continue
        if codigo_a[i] != codigo_b[i]:
            return False
    if tamanoCodigoA == tamanoCodigoB:
        return True
    return False
```

### La geometría analizada no se excluye

Los controles de relación entre geometrías recorren las geometrías no borradas del archivo de dibujo con la
función auxiliar `alguna_geometria`. La línea que debería saltar la geometría analizada no la salta, porque
ejecuta `pass` en lugar de `continue`:

```python
for g in no_eliminadas(digi3d.current_view()):
    # No contamos la geometría que se está analizando
    if g == geometría_analizando:
        pass
```

Cuando el control se ejecuta con las órdenes de control de calidad, la geometría analizada ya está en el
archivo de dibujo. Si su código coincide con el parámetro `código_o_etiqueta_...`, el control la compara
consigo misma. Por ejemplo, `si_es_punto_debe_estar_separado_de_punto` con el mismo código del punto
analizado da siempre error, y `si_es_punto_debe_coincidir_con_punto` no da nunca error. En tiempo real la
geometría todavía no está en el archivo de dibujo y el problema no aparece.

## Páginas de esta sección

* [Controles de relación entre geometrías](controles-de-relacion.md): áreas, líneas y puntos que deben
  tocarse, cruzarse, contenerse o estar separados.
* [Controles de tipo y medidas](controles-de-tipo-y-medidas.md): tipo de geometría, área, perímetro,
  dimensiones y distancia entre puntos.
* [Controles de coordenada Z](controles-de-coordenada-z.md): Z constante, creciente o decreciente,
  curvas maestras y finas, diferencia con el MDT y diferencia de Z en las intersecciones.
* [Controles de atributos](controles-de-atributos.md): atributos de la geometría y de base de datos.
* [Reglas de representación dinámica](reglas-de-representacion-dinamica.md): color, color de relleno y
  grosor según el código, los atributos o las medidas de la geometría.

## Véase también

* [Controles de calidad](../controles-de-calidad/README.md)
* [Excepciones](../referencia/digi3d/exceptions.md): `GeometryError`, `GeometryRelationError`,
  `GeometryWarning` y `DatabaseFieldError`.
* [Pestaña Entorno Python](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md)
