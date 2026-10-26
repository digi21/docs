# C++
<!-- id: lot-of-points-sdk-cpp -->

La cabecera `lop/sdk.hpp` ofrece clases de C++20 sobre `lop_sdk.h`, la interfaz de C del kit de desarrollo
de software (SDK). La biblioteca de enlace dinámico (DLL) puede declarar comandos con `lop::declare` y exportarlos
con `LOP_SDK_COMMANDS`. El programa crea un objeto `lop::Command` por ejecución.

## Declarar un comando

Guarda este ejemplo como `point_data.cpp`:

```cpp
#include <lop/sdk.hpp>
#include <format>
#include <string_view>
#include <vector>

class PointData final : public lop::Command
{
    void run(lop::Host& host) override
    {
        while (auto point = host.ask_point(
            "Pulsa un punto de una nube editable; Esc para terminar",
            [](lop::Point const&, lop::Cloud const& cloud)
            {
                return cloud.editable && cloud.has_original_point_indices;
            }))
        {
            host.log(std::format("X {:.3f}  Y {:.3f}  Z {:.3f} | nube {}",
                point->x, point->y, point->z, point->cloud_id));
        }
    }
};

std::vector<lop::Declaration> commands(std::string_view)
{
    return { lop::declare<PointData>({
        .id = "example.editable_point",
        .name = "Datos de un punto editable",
        .existing_tab_id = "lop.tab.view",
        .ribbon_section = "Mis comandos",
        .requirements = LOP_REQUIRES_VISIBLE_CLOUD | LOP_REQUIRES_EDITABLE_CLOUD
    }) };
}

LOP_SDK_COMMANDS(commands)
```

El ejemplo acepta candidatos según la nube. Para filtrar por punto, utiliza los atributos
del primer argumento de la función de aceptación, como `point.classification`.
Los dos requisitos del botón exigen que exista una nube visible y una nube editable; las dos condiciones
pueden corresponder a nubes diferentes. La función de aceptación comprueba la nube de cada candidato.

`LOP_SDK_COMMANDS` exporta `lop_register_commands` con `extern "C"` y `LOP_SDK_EXPORT`.
La capa de C++ captura las excepciones de `run`, escribe el motivo en **Salida** y devuelve `LOP_FAILED`
a la interfaz de C. Una excepción en un hilo creado por el comando debe capturarse en ese hilo.

## Usar el anfitrión

| Método de `lop::Host` | Resultado |
|---|---|
| `ask_point(prompt, accept_point = {})` | `std::optional<lop::Point>`; vacío al cancelar. Propaga las excepciones del filtro. |
| `points_in_sphere(center, radius, cloud_ids = {})` | `std::optional<lop::Points>`; vacío al cancelar. Un conjunto vacío de identificadores consulta las nubes visibles. |
| `select_points(points, indices)` | `true` si cambia la selección; `false` si el usuario cancela o ha cerrado una nube de esos puntos. |
| `class_name(classification)` | Nombre actual de la clase como `std::string`, o cadena vacía. |
| `clouds()` | `std::optional<std::vector<lop::Cloud>>`; vacío al cancelar. |
| `process_tiles(cloud_ids, options, process_tile)` | `std::optional<lop::TilesSummary>`; vacío al cancelar y excepción `lop::ProcessTilesFailed` al fallar. |
| `load_geopackage(geopackage_file_path)` | `true` si carga las capas; `false` al cancelar o fallar. |
| `parameter_value(id)` | Valor del parámetro; lanza `std::out_of_range` si no está declarado. |

`lop::Points` libera la memoria al destruirse y admite movimiento, pero no copia.
Sus métodos de columna, como `x()` o `classification()`, devuelven `std::span` de solo lectura.
El objeto debe destruirse antes de terminar `run`, mientras el anfitrión siga siendo válido.

## Procesar teselas

El comando elige identificadores de `host.clouds()` y llama a `host.process_tiles` con un
`lop::TileOptions` y una función con esta firma:

```cpp
void process_tile(lop::Tile const& tile, lop::TileResult* result,
                  lop::TileHost const& host);
```

`TileOptions` contiene los campos de opciones de [lop_tile_options](referencia.md#lop_tile_options),
con `concurrent` y `read_only` como booleanos. La función de procesamiento se pasa aparte.
Con `read_only = true`, `result` es nulo.
Con `concurrent = true`, el programa puede llamar a la función desde varios hilos a la vez.

`lop::TileHost` proporciona `report_tile_progress(fraction)`, `cancelled()`, `log(message)` y
`max_worker_thread_count()`. El cálculo debe comprobar `cancelled()` y retornar cuando se solicite
la cancelación. La capa de C++ convierte ese retorno en `LOP_CANCELLED`.
Una excepción del cálculo se registra en **Salida** y provoca el fallo de `process_tiles`.

## Compilar con CMake

Guarda este archivo como `CMakeLists.txt` junto al ejemplo:

```cmake
cmake_minimum_required(VERSION 3.20)
project(point_data CXX)
set(LOP_SDK_DIR "" CACHE PATH "Carpeta de lop_sdk.h")
add_library(point_data SHARED point_data.cpp)
target_include_directories(point_data PRIVATE ${LOP_SDK_DIR})
target_compile_features(point_data PRIVATE cxx_std_20)
if (MSVC)
    target_compile_options(point_data PRIVATE /utf-8 /EHsc)
endif()
```

Ejecuta los comandos de [compilación del ejemplo en C](ejemplo-en-c.md#compilar-con-cmake).
Después, sigue [Instalar y comprobar una DLL](instalar-y-comprobar.md).
