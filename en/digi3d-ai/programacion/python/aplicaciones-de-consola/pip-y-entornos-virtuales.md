# Bundled interpreter, pip and virtual environments
<!-- id: pip-y-entornos-virtuales -->
<!-- origen: be72a5e30e270c1b0e14bf30548f87e10616eb2f -->

Digi3D.AI **includes its own Python 3.12 (x64) interpreter**. You need not install Python separately: installation deploys `python.exe` in the application folder with `digi21.base` and `digi21.io` available.

> Installation path (64-bit):
> `C:\Program Files\Digi21.net\Digi3D.AI\python.exe`

## Opening the console

Run that `python.exe`, for example from a command window:

```
"C:\Program Files\Digi21.net\Digi3D.AI\python.exe"
```

Then import the Digi3D.AI packages:

```python
import digi21.io.bin as bin_

drawing = bin_.open(r"C:\datos\ciudad.bin")
print(sum(1 for _ in drawing), "geometrías")
```

No changes to `PYTHONPATH` or other environment variables are required. The installation's `python._pth` sets the interpreter search path to three folders: `DLLs`, `Lib` and `python`. The `python` folder contains `digi21`.

## The bundled interpreter does not support pip or virtual environments

The bundled interpreter contains only the Python standard library and `digi21`. Digi3D.AI uses it internally too. It has two limitations:

- **No `pip`**: `python.exe -m pip ...` fails.
- **Cannot create virtual environments**: `python.exe -m venv` fails with `Unable to copy
  '...\Digi3D.AI\venvlauncher.exe'` and `[WinError 2]`, because the installation lacks the `venvlauncher.exe` and `venvwlauncher.exe` launchers required by `venv`.

The standard library and Digi3D.AI API suffice for reading and converting drawing files, extracting information, generating reports and running batch checks.

## Using third-party packages with your own Python

For an external library (for example, `numpy` for numerical computation or [crskit](../referencia/crskit/README.md) for coordinate reference systems), use your own **Python 3.12 (x64)**:

1. Install 64-bit Python 3.12 from [python.org](https://www.python.org/downloads/).
2. Create a virtual environment with that interpreter and install the packages you need. The example uses an all-users installation; a per-user interpreter is at `%LOCALAPPDATA%\Programs\Python\Python312\python.exe`:

   ```
   "C:\Program Files\Python312\python.exe" -m venv C:\mis-scripts\entorno
   C:\mis-scripts\entorno\Scripts\pip install numpy
   ```

3. At the start of your program, add the Digi3D.AI installation's `python` folder, which contains `digi21`:

   ```python
   import sys
   sys.path.insert(0, r"C:\Program Files\Digi21.net\Digi3D.AI\python")

   import digi21.io.bin as bin_
   ```

4. Run the program using the environment's `python.exe`:

   ```
   C:\mis-scripts\entorno\Scripts\python.exe mi_programa.py
   ```

> Python **must** be 64-bit 3.12: `digi21` native modules are built against that version. Other versions fail to import them.
