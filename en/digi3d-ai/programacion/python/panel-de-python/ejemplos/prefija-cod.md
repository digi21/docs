# Prefixing the selected geometry's codes
<!-- id: prefija-cod -->
<!-- origen: 8d4c097bfbe72bd7977db91f24c608b68d4d3573 -->

File: `prefija_cod.py` · **interactive command** ([PythonCommand](../../referencia/digi3d/python-command.md)) with one parameter.

Prefixes codes of each geometry selected with a data input or multiple selection command. Intended for mapping updates where each element has one of these states:

| Code | State |
| --- | --- |
| `ORO_01_LN` | Unchanged from original mapping. |
| `ACT_ORO_01_LN` | New or modified after photo interpretation. |
| `BAI_ORO_01_LN` | Disappeared after photo interpretation. |

Manually changing thousands of codes is slow. This command requires only clicking each geometry.

## Usage

1. If your Digi3D.AI version does not install ComandosDigi3DPython commands in its `OrdenesPython` folder, copy `prefija_cod.py` to the macro directory. [Python commands from ComandosDigi3DPython](../../ordenes-python.md) explains search folders and installed command modifications.
2. Assign the command to two keys or toolbar buttons, with a different prefix for each:

   ```
   PREFIJA_COD=ACT_
   PREFIJA_COD=BAI_
   ```

3. Press the desired prefix's key or button, then click geometries. Remains active until reset.
4. For bulk changes, run [SELECT\_WINDOW](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-ventana.md), [SELECT\_COD](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/s/selecciona-cod.md) or another selection command while active. Prefixes all selected drawing file geometries.

Leaves codes already starting with `ACT_`, `BAI_` or the supplied prefix unchanged. If all a geometry's codes have prefixes, it is unchanged; no changes plays the error sound. Each code retains its database table and record. Each data input and multiple selection has its own transaction: UNDO reverses that input's geometry change or the entire selection's changes.

Without exactly one parameter, plays the error sound and displays “Missing prefix.” with usage.

Requires a Digi3D.AI version with [`PythonCommand.select_geometry`](../../referencia/digi3d/python-command.md#selecting-a-geometry), [`on_geometries_selected`](../../referencia/digi3d/python-command.md#multiple-selection) and [`DrawingView.replace`](../../referencia/digi3d/drawing-view.md#replacing-a-geometry).

## Code

```python
import digi3d

USO = 'PREFIJA_COD=[prefijo]'

# Prefixes of already processed codes. Add the command parameter to this list.
PREFIJOS = ('ACT_', 'BAI_')


def error(mensaje):
    """Emite el sonido de error y muestra el mensaje con la forma de uso de la orden."""
    digi3d.music(digi3d.MusicType.Error)
    digi3d.show_info('{}\n\nUso: {}'.format(mensaje, USO))


class PrefijaCod(digi3d.PythonCommand):
    def __init__(self, prefijo):
        digi3d.PythonCommand.__init__(self, 'prefija_cod')
        self.prefijo = prefijo
        self.prefijos = PREFIJOS + (prefijo,)

    def on_set_focus(self):
        digi3d.print_statusbar('Selecciona la geometría a la que añadir el prefijo {}'.format(self.prefijo))

    # For each input, request the nearest geometry as the snap pedal does. Digi3D.AI delivers it through
    # on_geometry_selected. The filter excludes read-only reference file geometries.
    def on_data_up(self, coordenadas):
        ruta = self.view.drawing_file.path
        self.select_geometry(coordenadas, lambda geometria: geometria.file is not None and geometria.file.path == ruta)
        return True

    def on_geometry_selected(self, geometria, coordenadas, primer_vertice, segundo_vertice):
        self.prefija_geometrias([geometria])

    # Multiple selection commands and panes deliver selected geometries here.
    def on_geometries_selected(self, geometrias):
        self.prefija_geometrias(geometrias)

    def prefija_geometrias(self, geometrias):
        # Modify only nondeleted geometries from the drawing file: snapping, selection commands
        # and panes also deliver reference file geometries and, with DELETED=1, deleted geometries.
        # The database editor delivers a geometry once per code linked to the record.
        ruta = self.view.drawing_file.path
        vistas = set()
        originales = []
        for geometria in geometrias:
            if id(geometria) in vistas or geometria.deleted or geometria.file is None or geometria.file.path != ruta:
                continue
            vistas.add(id(geometria))
            if not all(codigo.code.startswith(self.prefijos) for codigo in geometria.codes):
                originales.append(geometria)

        if not originales:
            digi3d.music(digi3d.MusicType.Error)
            return

        # Drawing geometries are read-only: replace each original with a clone carrying the new codes.
        # replace runs quality controls and notifies extensions. If the clone is rejected, leaves the
        # original unchanged and returns None.
        cambiadas = 0
        for geometria in originales:
            clon = geometria.clone()
            clon.codes = tuple(self.prefija(codigo) for codigo in geometria.codes)
            if self.view.replace(geometria, clon) is not None:
                cambiadas += 1

        self.view.redraw()

        # One transaction per selection: UNDO reverses all selected geometry changes together.
        self.new_transaction()

        if cambiadas == 0:
            digi3d.music(digi3d.MusicType.Error)

    def prefija(self, codigo):
        if codigo.code.startswith(self.prefijos):
            return codigo

        nuevo = digi3d.FeatureCode(self.prefijo + codigo.code)
        nuevo.table = codigo.table
        nuevo.id = codigo.id
        return nuevo


v = digi3d.current_view()
if len(argv) != 1:
    error('Falta el prefijo.')
elif v is None:
    print('No hay ninguna ventana de dibujo abierta')
else:
    # Global variable: the Python object remains alive after the script finishes.
    orden = PrefijaCod(argv[0])
    v.add_command(orden)
```

## How it works

- **Parameter**: Digi3D.AI supplies global `argv`. With `PREFIJA_COD=BAI_`, `argv` is `('BAI_',)`. Splits parameters on spaces, tabs and `=`, so prefixes cannot contain them. Unless `argv` has exactly one element, `error` plays the error sound and displays the reason and usage through [`digi3d.show_info`](../../referencia/digi3d/functions.md), without creating the command.
- **Selection**: `on_data_up` calls [`select_geometry`](../../referencia/digi3d/python-command.md#selecting-a-geometry), finding the geometry nearest the input like the snap pedal. Digi3D.AI delivers it through `on_geometry_selected`.
- **Filter**: `select_geometry` takes a second argument deciding selectable geometries. Each geometry's [`file`](../../referencia/digi21.base/geometry.md#properties) identifies its containing file. Accepts only geometries from the active drawing (`self.view.drawing_file`): reference file geometries cannot be modified.
- **Multiple selection**: defining [`on_geometries_selected`](../../referencia/digi3d/python-command.md#multiple-selection) lets selection commands and pane **Send selection to the active command** pass a geometry list. These bypass `select_geometry` filtering: may belong to any loaded file, be deleted when DELETED is enabled, or appear twice from the database editor. `prefija_geometrias` discards other-file, deleted (`deleted`) and duplicate geometries. Also handles the single-item list from `on_geometry_selected`, which can likewise arrive unfiltered, for example from the snap pedal.
- **Prefixes**: `str.startswith` accepts a tuple and returns `True` if a string starts with any item. `self.prefijos` contains `ACT_`, `BAI_` and the supplied prefix.
- **Changing codes**: drawing geometries are read-only. Creates a `clone()`, assigns new codes and replaces the original using [`view.replace`](../../referencia/digi3d/drawing-view.md#replacing-a-geometry), which runs quality controls and notifies extensions. If Digi3D.AI rejects the clone (for example, unsupported prefixed codes), `replace` leaves the original unchanged and returns `None`. Each new [FeatureCode](../../referencia/digi21.base/featurecode.md) retains the original table and identifier, as in [Renaming a code while retaining attributes](renomcod-manteniendo-atributos.md).
- **Undo**: `self.new_transaction()` closes the input or selection transaction and starts one for the next input or selection.
- **The `orden` variable**: scripts run in `__main__`, retained between executions. A global variable keeps the Python command object alive while active, like [Text from the Cadastre street directory](dibuja-texto-extraido-callejero-catastro.md).

## See also

- [PythonCommand](../../referencia/digi3d/python-command.md): `select_geometry`, `on_geometry_selected`, `on_geometries_selected`, `new_transaction`
- [FeatureCode](../../referencia/digi21.base/featurecode.md)
- [Renaming a code while retaining attributes](renomcod-manteniendo-atributos.md)
