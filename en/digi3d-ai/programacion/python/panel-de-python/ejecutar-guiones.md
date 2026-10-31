# Running Python scripts
<!-- id: ejecutar-guiones -->
<!-- origen: 19b862c06c74e5221011d78390d6d4342cee7ba2 -->

Digi3D.AI runs Python scripts in **three ways**: from the pane, as a command (by name from the command console), and as a quality control.

## 1. From the Python script pane

The dockable Python script pane (**Window/Python script**) lets you **type or paste** and immediately run scripts. Use it to test scripts and perform one-off tasks. See [Python script](../../../referencia/paneles/guion-python.md).

```python
import digi3d

view = digi3d.current_view()
digi3d.show_results(True)
digi3d.add_result(f"El dibujo tiene {len(view)} geometrías")
```

## 2. As a command (from the command console)

Run a script **by name**, like a native Digi3D.AI command:

1. Save the `.py` in the **macro directory**, configured under **Tools → Configuration → Drawing window → Macro directory**.
2. With a drawing window open, press **Enter**: a text field appears in the **status bar** for a **command name** and parameters.
3. Type the name and, if required, `=` followed by space-separated parameters.

If the name matches **no** native command, Digi3D.AI searches the macro directory for a matching `.py`, loads it in the interpreter and runs it with the parameters. Run the script like any other command.

For example, with `FILTRAR.py` in the macro directory, entering:

```
FILTRAR=020124 020123 1
```

loads `FILTRAR.py` and runs it with those three parameters, because `FILTRAR` is not a native command.

### Receiving parameters: `argv`

Parameters arrive in the global **`argv`** list as **strings**, in the order entered:

```python
import digi3d

if len(argv) < 1:
    digi3d.music(digi3d.MusicType.Error)
    raise Exception("Falta el código")

codigo = argv[0]
distancia = float(argv[1]) if len(argv) > 1 else 1.0
# ... usa codigo y distancia
```

> For an **interactive** command awaiting drawing input, create a class derived from [PythonCommand](../referencia/digi3d/python-command.md) instead of a linear script. See [Text from the Cadastre street directory](ejemplos/dibuja-texto-extraido-callejero-catastro.md) and [Azure Maps](ejemplos/dibuja-texto-extraido-servicio-mapas-azure.md).

## 3. As a quality control

A Python function can be a code's **quality control**: Digi3D.AI runs it on geometries with that code to check rules, on demand or in real time while digitizing. See [Quality controls](../controles-de-calidad/README.md).

## See also

- [Programming examples](ejemplos/README.md): ready-to-use scripts and commands.
- [Quality controls](../controles-de-calidad/README.md)
- [The `digi3d` module](README.md)
