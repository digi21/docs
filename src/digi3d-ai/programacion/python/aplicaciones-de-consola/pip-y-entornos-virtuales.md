# Intérprete incluido, pip y entornos virtuales
<!-- id: pip-y-entornos-virtuales -->

Digi3D.AI **incluye su propio intérprete de Python 3.12 (x64)**. No necesitas instalar Python
en el sistema: al instalar el programa se despliega, en la carpeta de la aplicación, un
`python.exe` con los paquetes `digi21.base` y `digi21.io` ya disponibles.

> Ruta de la instalación (64 bits):
> `C:\Program Files\Digi21.net\Digi3D.AI\python.exe`

## Abrir la consola

Ejecuta ese `python.exe`, por ejemplo desde una ventana de comandos:

```
"C:\Program Files\Digi21.net\Digi3D.AI\python.exe"
```

A continuación, importa los paquetes de Digi3D.AI:

```python
import digi21.io.bin as bin_

drawing = bin_.open(r"C:\datos\ciudad.bin")
print(sum(1 for _ in drawing), "geometrías")
```

No hay que modificar `PYTHONPATH` ni ninguna otra variable de entorno. El archivo `python._pth` de
la instalación fija la ruta de búsqueda del intérprete en tres carpetas: `DLLs`, `Lib` y `python`.
La carpeta `python` contiene el paquete `digi21`.

## El intérprete incluido no admite pip ni entornos virtuales

El intérprete incluido contiene la biblioteca estándar de Python y el paquete `digi21`, y nada más.
Digi3D.AI usa ese mismo intérprete internamente. Tiene dos limitaciones:

- **No incluye `pip`**: `python.exe -m pip ...` falla.
- **No permite crear entornos virtuales**: `python.exe -m venv` falla con `Unable to copy
  '...\Digi3D.AI\venvlauncher.exe'` y `[WinError 2]`, porque la instalación no contiene los
  lanzadores `venvlauncher.exe` y `venvwlauncher.exe` que necesita el módulo `venv`.

Para leer y convertir archivos de dibujo, extraer información, generar informes o ejecutar controles
por lotes basta con la biblioteca estándar y la API de Digi3D.AI.

## Usar paquetes de terceros con tu propio Python

Para usar una biblioteca externa (por ejemplo, `numpy` para cálculo numérico, o
[crskit](../referencia/crskit/README.md) para sistemas de referencia de coordenadas), usa un Python
**3.12 (x64)** instalado por ti:

1. Instala Python 3.12 de 64 bits desde [python.org](https://www.python.org/downloads/).
2. Crea un entorno virtual con ese intérprete e instala en él los paquetes que necesites. La ruta
   del ejemplo es la de una instalación para todos los usuarios; si instalaste Python solo para tu
   usuario, el intérprete está en `%LOCALAPPDATA%\Programs\Python\Python312\python.exe`:

   ```
   "C:\Program Files\Python312\python.exe" -m venv C:\mis-scripts\entorno
   C:\mis-scripts\entorno\Scripts\pip install numpy
   ```

3. Añade al principio de tu programa la carpeta `python` de la instalación de Digi3D.AI, que
   contiene el paquete `digi21`:

   ```python
   import sys
   sys.path.insert(0, r"C:\Program Files\Digi21.net\Digi3D.AI\python")

   import digi21.io.bin as bin_
   ```

4. Ejecuta el programa con el `python.exe` del entorno:

   ```
   C:\mis-scripts\entorno\Scripts\python.exe mi_programa.py
   ```

> La versión **debe** ser 3.12 de 64 bits: los módulos nativos de `digi21` se compilan contra esa
> versión. Con otra versión, la importación falla.
