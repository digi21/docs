# Python

Digi3D.NET se puede **programar en Python**. Según dónde y cómo se ejecute el código, hay
**tres formas** de hacerlo, cada una pensada para un propósito distinto:

| Forma | Qué es | ¿Usa el objeto `digi3d`? |
|---|---|---|
| [Aplicaciones de consola](aplicaciones-de-consola/README.md) | Programas Python normales (fuera de Digi3D.NET) que leen y procesan archivos de dibujo. | No |
| [Panel de Python](panel-de-python/README.md) | Guiones que se ejecutan dentro de Digi3D.NET, sobre el dibujo activo. | Sí |
| [Controles de calidad](controles-de-calidad/README.md) | Funciones que validan las geometrías de un código. | Sí |

> Versión de Python objetivo: **3.12 (x64)**. Toda la API está **en inglés**: clases en
> `PascalCase`; métodos, propiedades y argumentos en `snake_case`. Las coordenadas se
> representan como tuplas `(x, y, z)`.

## Aplicaciones de consola

Programas de Python **normales**, ejecutados en un intérprete de tu sistema **fuera de
Digi3D.NET**, que usan los paquetes `digi21.base` y `digi21.io` para **leer y procesar archivos
de dibujo** (convertir, extraer información, generar informes…). No usan el objeto `digi3d`.

- [Ir a la sección](aplicaciones-de-consola/README.md)
- [Ejemplos de programación](aplicaciones-de-consola/ejemplos/README.md)
- [Referencia de la API](referencia/README.md)

## Panel de Python

Guiones que se ejecutan **dentro de Digi3D.NET**, con acceso al **dibujo activo** a través del
objeto `digi3d`. Se lanzan desde el panel de Guiones Python o como una orden por su nombre.

- [Ir a la sección](panel-de-python/README.md)
- [Ejemplos de programación](panel-de-python/ejemplos/README.md)
- [Referencia de la API](referencia/README.md)

## Controles de calidad

Funciones que **validan las geometrías** de un código (en tiempo real mientras se digitaliza o
bajo demanda). También usan el objeto `digi3d`.

- [Ir a la sección](controles-de-calidad/README.md)
- [Ejemplos de programación](controles-de-calidad/ejemplos/README.md)
- [Referencia de la API](referencia/README.md)

## Referencia

La [Referencia de la API](referencia/README.md) describe formalmente los tres módulos:
`digi21.base` (tipos del núcleo), `digi21.io` (lectura de archivos) y `digi3d` (el módulo
disponible dentro del programa).
