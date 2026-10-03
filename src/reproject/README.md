# Reproject

![Icono de Reproject](../images/reproject-icono.png)

**Reproject** es un programa para Windows que transforma coordenadas entre dos sistemas de referencia de coordenadas (SRC). Usa el catálogo EPSG completo.

Reproject sustituye al antiguo Transformador Universal de Coordenadas.

## Funciones

* Selección de los sistemas de origen y destino por código EPSG o por nombre, por categoría (geográfico 2D, geográfico 3D, proyectado, vertical), como sistema compuesto (horizontal + vertical), a partir de un WKT o desde una lista de favoritos.
* Transformación inmediata: el resultado se actualiza línea a línea mientras se escriben o pegan las coordenadas.
* Importación de listas de coordenadas desde archivos de texto (`.txt`, `.csv`) y exportación del resultado a `.txt` o `.csv`.
* Importación y exportación de definiciones de sistemas de coordenadas en archivos `.prj` o `.wkt`.
* Elección de la transformación cuando el catálogo EPSG ofrece varias entre los dos sistemas.
* Descarga de los modelos de geoide que necesitan algunas transformaciones.
* Control de la orientación de ejes (Este-Norte o Norte-Este) y panel de detalles del sistema (zona de uso, datum, elipsoide).
* Recuerda los últimos sistemas utilizados entre sesiones.
* Sigue el tema claro u oscuro y el idioma de Windows. Idiomas disponibles: inglés, español, gallego, euskera, catalán, italiano, francés y alemán. Si el idioma de Windows no está entre ellos, el programa se muestra en inglés.

## Licencia y código fuente

Reproject es un programa _open source_ con licencia [Apache 2.0](https://github.com/digi21/reproject/blob/main/LICENSE).

* Repositorio: [https://github.com/digi21/reproject](https://github.com/digi21/reproject)
* Motor de cálculo: la librería [CrsKit](https://github.com/digi21/crskit).

El programa incluye el _EPSG Geodetic Parameter Dataset_, propiedad de IOGP (International Association of Oil & Gas Producers), utilizado conforme a los [EPSG Dataset Terms of Use](https://epsg.org/terms-of-use.html). Los datos EPSG no están cubiertos por la licencia Apache 2.0. El cuadro **Acerca de** del programa muestra la versión del catálogo EPSG que incluye.

## Contenido

* [Instalación](/reproject/instalacion.md)
* [Ventana principal](/reproject/ventana-principal.md)
* [Selección del sistema de coordenadas](/reproject/seleccion-del-sistema-de-coordenadas.md)
* [Transformaciones y modelos de geoide](/reproject/transformaciones-y-modelos-de-geoide.md)
