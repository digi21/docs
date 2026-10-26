# C y C++
<!-- id: lot-of-points-c-cpp -->

El kit de desarrollo de software (SDK) de Lot Of Points permite añadir comandos como bibliotecas de enlace
dinámico (DLL) de Windows de 64 bits. Cada comando declara su botón y ejecuta una función `run` en un hilo
propio. El comando elige las nubes y solicita al programa las operaciones que necesita.

La interfaz de programación de aplicaciones (API) de C está definida en `lop_sdk.h`. La DLL exporta
`lop_register_commands`, que devuelve sus declaraciones `lop_command`. La API de C++ envuelve esa interfaz
con las clases de `lop/sdk.hpp`. La [API de Python](../python/referencia.md#comandos-de-python) expone las
mismas operaciones del anfitrión.

## Archivos del SDK

| Archivo o carpeta | Contenido |
|---|---|
| `Sdk/include/lop_sdk.h` | Tipos de C, constantes y firma de registro. |
| `Sdk/include/lop/sdk.hpp` | Clases de C++20; la implementación está en la cabecera. |
| `Sdk/example/` | Cinco comandos de `lop_examples.dll` y su archivo `CMakeLists.txt`. |
| `Sdk/example/python/` | Datos del punto y Seleccionar objeto escritos en Python. |
| `Sdk/tools/png_to_header.ps1` | Conversión de un icono en formato PNG (*Portable Network Graphics*) en una cabecera de C. |

`LOP_SDK_API_VERSION` vale `1`. La DLL debe compilarse con la cabecera actual.
La rama actual ha eliminado `lop_algorithms.h` y no carga extensiones que exporten únicamente `lop_register`.

## Operaciones de un comando

`run` recibe un `lop_command_host`, el anfitrión que proporciona Lot Of Points. Las funciones que esperan
un clic o la carga de puntos bloquean el hilo del comando; la interfaz continúa atendiendo la navegación.

| Operación | Función |
|---|---|
| Consultar las nubes abiertas y sus condiciones de procesamiento | `clouds` |
| Esperar un punto y filtrar candidatos por sus atributos o por su nube | `ask_point` |
| Obtener los puntos de una esfera | `points_in_sphere` |
| Dejar puntos seleccionados para una acción posterior del usuario | `select_points` |
| Procesar las nubes elegidas por teselas | `process_tiles` |
| Cargar tablas de un GeoPackage como capas | `load_geopackage` |
| Consultar el nombre actual de una clase | `class_name` |

El comando combina `LOP_REQUIRES_*` en `requirements` para declarar cuándo se habilita su botón.
El comando comprueba además los datos concretos que necesita al ejecutarse.

Para desarrollar una extensión, consulta el [ejemplo en C](ejemplo-en-c.md), la [capa de C++](cpp.md) y la
[referencia de lop_sdk.h](referencia.md). La página [Instalar y comprobar una DLL](instalar-y-comprobar.md)
describe la instalación y los diagnósticos de carga.
