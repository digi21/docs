# Intérprete incluido, pip y entornos virtuales

Digi3D.AI **incluye su propio intérprete de Python 3.12 (x64)**. No necesitas instalar Python
en el sistema: al instalar el programa se despliega, en la carpeta de la aplicación, un
`python.exe` listo para usar con los paquetes `digi21.base` y `digi21.io` ya disponibles.

> Ruta típica de la instalación (64 bits):
> `C:\Program Files\Digi21.net\Digi3D.NET\python.exe`

## Abrir la consola

Ejecuta ese `python.exe` (por ejemplo, desde una ventana de comandos):

```
"C:\Program Files\Digi21.net\Digi3D.NET\python.exe"
```

Y ya puedes importar los paquetes de Digi3D.AI:

```python
import digi21.io.bin as bin_

drawing = bin_.open(r"C:\datos\ciudad.bin")
print(sum(1 for _ in drawing), "geometrías")
```

No hay que tocar `PYTHONPATH` ni ninguna variable de entorno: el intérprete incluido ya trae
`digi21` en su ruta de búsqueda.

## Un intérprete sellado (sin pip)

El intérprete incluido está **sellado a propósito**: trae la biblioteca estándar de Python más
`digi21`, y **no incluye `pip`**. Es el mismo intérprete que usa Digi3D.AI internamente, así que
mantenerlo cerrado lo hace **reproducible y estable**: no puede romperse instalando o actualizando
paquetes, y el comportamiento es idéntico en todas las máquinas.

Por eso, `python.exe -m pip ...` no funcionará. Todos los casos habituales (leer y convertir
archivos de dibujo, extraer información, generar informes, controles por lotes) se cubren solo con
la biblioteca estándar y la API de Digi3D.AI.

## ¿Necesitas paquetes de terceros? Usa un entorno virtual

Si necesitas una biblioteca externa (por ejemplo, `numpy` para cálculo numérico), crea un
**entorno virtual** con el intérprete incluido. El entorno es una copia aislada y **escribible**,
con su propio `pip`, que **reutiliza** el Python 3.12 de Digi3D.AI **sin modificar la instalación**:

```
"C:\Program Files\Digi21.net\Digi3D.NET\python.exe" -m venv C:\mis-scripts\entorno
C:\mis-scripts\entorno\Scripts\pip install numpy
```

A partir de ahí, ejecuta tus programas con el `python.exe` del entorno:

```
C:\mis-scripts\entorno\Scripts\python.exe mi_programa.py
```

Dentro de ese entorno tienes `numpy` (u otros paquetes que instales) **y** `digi21`, y la
instalación de Digi3D.AI sigue intacta y sellada.

## Usar tu propio Python

También puedes usar un Python **3.12 (x64)** instalado por ti. En ese caso, añade a la ruta de
búsqueda la carpeta `python` de la instalación (donde vive el paquete `digi21`):

```python
import sys
sys.path.insert(0, r"C:\Program Files\Digi21.net\Digi3D.NET\python")

import digi21.io.bin as bin_
```

> La versión **debe** ser 3.12 de 64 bits: los módulos nativos de `digi21` se compilan contra esa
> versión. Con otra versión, la importación fallará.
