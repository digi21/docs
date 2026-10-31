# Python
<!-- id: lot-of-points-python -->
<!-- origen: e03902b701afbddf49a7b686f758da85a2f21dd4 -->

The `lop` module provides an application programming interface (API) to control the viewer from scripts and add ribbon commands. Python commands have the C and C++ software development kit (SDK) operations through `lop.Host`.

## Write and run a script

1. Select the window's **Python** panel.
2. Write the script in the editor or load a `.py` file with **Open script**.
3. Click **Run**.
4. Read messages and errors in **Output**.

**Python** has no opening button on **Visualization**. A collapsed panel expands when hovering over its tab for 400 milliseconds; clicking the tab expands it immediately.

```python
import lop

lop.viewer.PointSizeScale = 3
print(lop.viewer.Domain.Max.Z)
```

| Panel button | Function |
|---|---|
| **Open script** | Loads a `.py` file into the editor. |
| **Save script** | Saves the text to its file or asks for a location. |
| **Run** | Runs the editor text. |
| **Stop** | Requests interruption of the running script. |

Clicking **Run** clears **Output**. If the panel contents are hidden when it receives a write, its tab flashes until the user shows **Output**. The panel receives `print` output, writes to `sys.stdout` and `sys.stderr`, and errors. Editor script errors show their type and message, without the call stack.

The interpreter starts when the program needs to run Python. The editor script works on a background thread; `lop.viewer` and `lop.run_command` marshal calls to the interface thread. One script can run in the panel, and **Run** is disabled during execution.

## Stop a script

Click **Stop** to send `KeyboardInterrupt`. If the script does not catch it, execution ends and **Output** shows “Script stopped”.

Each editor run starts with an empty namespace. The interpreter retains modules imported during the session.

## Install Python commands

1. Create `%AppData%\lop\commands` if the folder does not exist.
2. Copy command `.py` files and their icons into it.
3. Restart Lot Of Points.
4. Check buttons on each command's declared tabs.

Files use `@lop.command` to declare buttons and receive a `lop.Host` on each run. The [extension manager](../../gestor-de-extensiones.md) enables or disables each file and its commands. `@lop.command` declarations are accepted only while loading command files; the panel editor does not register buttons.

`Sdk/example/python` contains **Point data (Python)** and **Select object (Python)**, with PNG (*Portable Network Graphics*) icons. Commands use **Esc** to cancel; **Stop** applies to the editor script.

## Distributed environment

Lot Of Points prepares 64-bit CPython 3.13 and `numpy` 2.5.4 through `Lop.Scripting/Obtener-Python.ps1`. The environment includes neither `pip` nor a package installer in the panel. If the interpreter cannot be found, **Output** shows “No python3XX.dll in *folder*”.

Members of `lop.viewer` retain .NET names, such as `PointSizeScale`. `lop.Host` methods use SDK names, such as `ask_point` and `process_tiles`. See the [examples](ejemplos.md) and [module reference](referencia.md) for contracts and conversions.
