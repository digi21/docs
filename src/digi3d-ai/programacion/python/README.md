# Python
<!-- id: python-3 -->

Digi3D.AI se puede **programar en Python**. Según dónde y cómo se ejecute el código, hay
**tres formas** de hacerlo, cada una pensada para un propósito distinto:

| Forma | Qué es | ¿Usa el objeto `digi3d`? |
|---|---|---|
| [Aplicaciones de consola](aplicaciones-de-consola/README.md) | Programas Python normales (fuera de Digi3D.AI) que leen, procesan y crean archivos de dibujo. | No |
| [Panel de Python](panel-de-python/README.md) | Guiones que se ejecutan dentro de Digi3D.AI, sobre el dibujo activo. | Sí |
| [Controles de calidad](controles-de-calidad/README.md) | Funciones que validan las geometrías de un código. | Sí |

> Versión de Python objetivo: **3.12 (x64)**. Toda la API está **en inglés**: clases en
> `PascalCase`; métodos, propiedades y argumentos en `snake_case`. Las coordenadas se
> representan como tuplas `(x, y, z)`.

## Aplicaciones de consola

Las aplicaciones de consola son programas de Python ejecutados en un intérprete de tu sistema **fuera de
Digi3D.AI**, que usan los paquetes `digi21.base` y `digi21.io` para **leer, procesar y crear
archivos de dibujo** (convertir de un formato a otro, extraer información, generar informes…). No
usan el objeto `digi3d`.

- [Ir a la sección](aplicaciones-de-consola/README.md)
- [Ejemplos de programación](aplicaciones-de-consola/ejemplos/README.md)
- [Referencia de la API](referencia/README.md)

## Panel de Python

El panel de Python permite ejecutar guiones **dentro de Digi3D.AI**, con acceso al **dibujo activo** a través del
objeto `digi3d`. Se lanzan desde el panel de Guiones Python o como una orden por su nombre.

- [Ir a la sección](panel-de-python/README.md)
- [Ejemplos de programación](panel-de-python/ejemplos/README.md)
- [Referencia de la API](referencia/README.md)

## Controles de calidad

Los controles de calidad son funciones que **validan las geometrías** de un código (en tiempo real mientras se digitaliza o
bajo demanda). También usan el objeto `digi3d`.

- [Ir a la sección](controles-de-calidad/README.md)
- [Ejemplos de programación](controles-de-calidad/ejemplos/README.md)
- [Referencia de la API](referencia/README.md)

## Repositorios de guiones de Digi21

Digi21 publica en GitHub dos repositorios de guiones para Digi3D.AI:

- [Órdenes en Python del repositorio ComandosDigi3DPython](ordenes-python.md): guiones que se ejecutan
  como órdenes desde la línea de comandos.
- [Repositorio de controles de calidad en Python](guiones-control-calidad/README.md): el archivo
  `guiones.py`, con controles de calidad y reglas de representación dinámica para la tabla de códigos.

## Referencia

La [Referencia de la API](referencia/README.md) describe formalmente los tres módulos:
`digi21.base` (tipos del núcleo), `digi21.io` (lectura y escritura de archivos) y `digi3d` (el módulo
disponible dentro del programa).

Para transformar coordenadas entre sistemas de referencia desde un programa de Python, usa el paquete
[crskit](referencia/crskit/README.md), la biblioteca de sistemas de referencia de Digi3D.AI. Digi3D.AI no
lo distribuye: se instala con `pip install crskit`.
