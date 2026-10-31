# Python quality control repository
<!-- id: guiones-control-calidad -->
<!-- origen: b334febed68513be8c859a7dd33af0b93d601bdc -->

The public repository [**Guiones-Control-Calidad-Python-Digi3D**](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D) contains one file, [guiones.py](https://github.com/digi21/Guiones-Control-Calidad-Python-Digi3D/blob/main/guiones.py), with two function groups:

* **Quality controls**: `@quality_control()` functions assigned to codes. [Quality controls](../controles-de-calidad/README.md) explains declaration and error reporting.
* **Dynamic representation rules**: `@dynamic_representation_rule()` functions changing a geometry's drawing color, fill color or width.

Uses [`digi3d`](../referencia/digi3d/README.md), available only inside Digi3D.AI.

## Installing the file in a codes table

Digi3D.AI loads [Python environment](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md) whenever the table changes. To install `guiones.py`:

1. Open the table with [Code table editor](../../../referencia/editor-de-tablas-de-codigos/README.md).
2. Select **Python environment**.
3. Click **Download the latest version from GitHub**. Downloads `guiones.py` from `main`, replacing all tab contents.
4. Click **OK**.

Offline, download `guiones.py` from GitHub (**Download raw file**), copy its contents and paste them into **Python environment**.

Step 3 deletes custom functions. Copy them before downloading `guiones.py`, then append them to the downloaded contents. For earlier Digi3D tables, see [Update a code table's Python quality controls](../../../usuarios-de-versiones-anteriores/actualizar-guiones-python.md).

## Assigning a quality control to a code

1. Select a code on the editor's codes tab.
2. Click **Quality controls to apply** to open [Quality controls](../../../referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md).
3. Select a control in **Available quality controls** and click **Add**.
4. Enter any parameters in **Quality control parameters**, then click **OK**.
5. Click **OK** in **Quality controls** and the editor.

Run assigned controls with [QUALITY\_CONTROL\_COD](../../../referencia/ventana-de-dibujo/ordenes/c/control-calidad-cod.md), [QUALITY\_CONTROL\_VISIBLE\_ENTITIES](../../../referencia/ventana-de-dibujo/ordenes/c/control-calidad-entidades-visibles.md) and [QUALITY\_CONTROL\_SELECTION](../../../referencia/ventana-de-dibujo/ordenes/c/control-calidad-seleccion.md). With [QUALITY\_CONTROL\_ON\_ENTITY\_END](../../../referencia/ventana-de-dibujo/variables/c/control-calidad.md) and **Analyze quality control when digitizing** enabled, also runs them when digitizing finishes, before file storage.

### Writing parameters

**Quality control parameters** stores values as a Python dictionary. Integers without leading zeros, all-zero values (`0`, `00`) and numbers containing a decimal point (`0.5`, `.5`, `020.`) become numbers; other values become text. See the full rule in [Quality control parameters dialog](../../../referencia/editor-de-tablas-de-codigos/pestanas/codigos/propiedades-del-codigo.md).

Numeric codes without leading zeros, such as `120400`, become numbers. Controls convert parameters to text before code matching, so `120400` also works as a numeric value. Leading-zero codes such as `020123` remain text. Python number formatting can change the original: `00` becomes `0`, `12.` becomes `12.0`, `.5` becomes `0.5`, and `1.10` becomes `1.1`. These codes no longer match the entered text.

### Codes, wildcards and tags

Parameters starting with `código_o_etiqueta` accept space-separated words. A geometry matches if any code matches any word:

* `?` replaces one character: `0201?3` matches `020123` and `020133`.
* `*` accepts the remaining code: `0201*` matches `020123` and `0201ABC`, but not `0201`: at least one character is required at the `*` position.
* A word starting with `#` is a tag: `#edificios` matches codes tagged `edificios` in the active table.

Matching uses `compara_codigos_con_comodines`:

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

### The analyzed geometry is not compared with itself

Relationship controls iterate nondeleted geometries from every loaded drawing and reference file using `alguna_geometria`, which skips the analyzed geometry:

```python
for g in no_eliminadas(digi3d.current_view()):
    # Exclude the geometry being analyzed
    if g == geometría_analizando:
        continue
```

With quality control commands, the analyzed geometry already belongs to the drawing file. Even when its code matches `código_o_etiqueta_...`, it is not compared with itself. For example, `si_es_punto_debe_estar_separado_de_punto` using that point's own code fails only if another point with the code is not disjoint from it.

## Pages in this section

* [Geometry relationship controls](controles-de-relacion.md): areas, lines and points that must touch, cross, contain one another or be disjoint.
* [Type and measurement controls](controles-de-tipo-y-medidas.md): geometry type, area, perimeter, dimensions and point distance.
* [Z coordinate controls](controles-de-coordenada-z.md): constant, increasing or decreasing Z, index and intermediate contours, DTM differences and intersection Z differences.
* [Attribute controls](controles-de-atributos.md): geometry and database attributes.
* [Dynamic representation rules](reglas-de-representacion-dinamica.md): color, fill and width according to code, attributes or measurements.

## See also

* [Quality controls](../controles-de-calidad/README.md)
* [Exceptions](../referencia/digi3d/exceptions.md): `GeometryError`, `GeometryRelationError`, `GeometryWarning` and `DatabaseFieldError`.
* [Python environment tab](../../../referencia/editor-de-tablas-de-codigos/pestanas/entorno-python.md)
