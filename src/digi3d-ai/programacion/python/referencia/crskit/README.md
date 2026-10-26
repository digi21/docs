# crskit
<!-- id: crskit-python -->

`crskit` es el paquete de Python de [crskit](https://github.com/digi21/crskit), la biblioteca de
sistemas de referencia de coordenadas (SRC) y de transformación de coordenadas que usa Digi3D.AI. El
repositorio de crskit es *open source* (licencia Apache-2.0) y está en
[github.com/digi21/crskit](https://github.com/digi21/crskit).

El paquete permite, desde un programa de Python:

- crear un SRC a partir de un código EPSG o de un WKT (*Well-Known Text*, el texto normalizado que
  describe un SRC, como el de un archivo `.prj`);
- escribir el WKT de un SRC en los dialectos WKT 1 de OGC, WKT 1 de ESRI, WKT 2:2015 y WKT 2:2019;
- transformar coordenadas entre dos SRC, incluidas las alturas ortométricas con un modelo de geoide.

Toda la API está en inglés, con funciones, propiedades y argumentos en `snake_case`. Los nombres de
SRC y de operaciones que devuelve son los de la base de datos de EPSG, en inglés.

## Documentación de crskit

Esta sección describe cómo usar el paquete con la instalación de Digi3D.AI: la base de datos de EPSG
que instala Digi3D.AI, las rejillas de su carpeta y los códigos propios de Digi3D.AI. Para el detalle
del paquete, consulta la documentación del repositorio de crskit:

- [Tutorial en español](https://github.com/digi21/crskit/blob/main/python/TUTORIAL.es.md): conceptos
  de SRC, orden de los ejes, WKT, elección entre varias operaciones, alturas y geoides, y
  transformación de muchos puntos con NumPy.
- [README del paquete de Python](https://github.com/digi21/crskit/blob/main/python/README.md), en
  inglés: referencia breve y enlaces de descarga de las rejillas.
- [Ejemplos ejecutables](https://github.com/digi21/crskit/tree/main/python/examples), en inglés.

## Instalación

Digi3D.AI **no distribuye** el paquete `crskit`: el programa de instalación no lo copia, y el
intérprete de Python que incluye Digi3D.AI no tiene `pip`. Instala el paquete en tu propio Python.

Requisitos del paquete publicado en [PyPI](https://pypi.org/project/crskit/) (el índice de paquetes
de Python), versión 0.6.0:

- Python 3.10 o posterior. PyPI tiene el paquete compilado para Windows de 64 bits y para Linux x86-64;
  en otra plataforma, `pip` compila el código fuente y necesita un compilador de C++23 y CMake.
- NumPy 1.23 o posterior, solo para `Transformation.transform_points`. El resto de la API funciona sin
  NumPy.

Para instalarlo:

1. Abre una ventana de comandos con el Python en el que quieres instalar el paquete.
2. Ejecuta:

   ```
   pip install crskit
   ```

3. Comprueba la instalación:

   ```
   python -c "import crskit; print(crskit.is_initialized())"
   ```

   La orden escribe `False`: el paquete se ha importado y no ha inicializado ninguna base de datos de EPSG.
   Consulta [Inicialización](inicializacion.md).

El paquete `crskit` no contiene la base de datos de EPSG. En un equipo con Digi3D.AI instalado, usa la
base de datos que instala Digi3D.AI. En un equipo sin Digi3D.AI, instala además el paquete
`crskit-epsg`, que contiene la base de datos de EPSG:

```
pip install crskit[epsg]
```

Para usar `transform_points`, instala también NumPy:

```
pip install crskit[numpy]
```

## Páginas de esta sección

| Página | Contenido |
| :--- | :--- |
| [Inicialización](inicializacion.md) | Abrir la base de datos de EPSG de Digi3D.AI, la carpeta de las rejillas y los códigos propios de Digi3D.AI. |
| [Referencia de la API](api.md) | Funciones, clases, enumeraciones y excepciones del módulo. |
| [Ejemplos de programación](ejemplos.md) | Programas completos: de UTM a geográficas, de UTM con altura de Alicante a ETRS89 3D, WKT y códigos propios de Digi3D.AI. |

Para la misma funcionalidad en .NET, consulta el paquete
[Digi21.CoordinateSystems](/digi3d-ai/programacion/.net/referencia/digi21.coordinatesystems/README.md).
