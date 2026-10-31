# C++
<!-- id: lot-of-points-sdk-cpp -->
<!-- origen: 3a28b794f69cbf5ff55c1f12883a8110ec699ec9 -->

`lop/sdk.hpp` provides C++20 classes over `lop_sdk.h`, the software development kit's (SDK) C interface. A dynamic-link library (DLL) can declare commands with `lop::declare` and export them with `LOP_SDK_COMMANDS`. The program creates one `lop::Command` object per run.

## Declare a command

Save this example as `point_data.cpp`:

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

The example accepts candidates based on the cloud. To filter by point, use attributes of the acceptance function's first argument, such as `point.classification`. The two button requirements demand a visible cloud and an editable cloud; they can be different clouds. The acceptance function checks each candidate's cloud.

`LOP_SDK_COMMANDS` exports `lop_register_commands` with `extern "C"` and `LOP_SDK_EXPORT`. The C++ wrapper catches `run` exceptions, writes the reason to **Output** and returns `LOP_FAILED` to the C interface. An exception in a thread created by the command must be caught in that thread.

## Use the host

| `lop::Host` method | Result |
|---|---|
| `ask_point(prompt, accept_point = {})` | `std::optional<lop::Point>`; empty on cancellation. Propagates filter exceptions. |
| `points_in_sphere(center, radius, cloud_ids = {})` | `std::optional<lop::Points>`; empty on cancellation. An empty identifier set queries visible clouds. |
| `select_points(points, indices)` | `true` if selection changes; `false` if the user cancels or has closed a cloud containing those points. |
| `class_name(classification)` | Current class name as `std::string`, or an empty string. |
| `clouds()` | `std::optional<std::vector<lop::Cloud>>`; empty on cancellation. Each cloud includes the reference system and units described in [lop_cloud](referencia.md#lop_cloud-and-clouds). |
| `process_tiles(cloud_ids, options, process_tile)` | `std::optional<lop::TilesSummary>`; empty on cancellation, and throws `lop::ProcessTilesFailed` on failure. |
| `load_geopackage(geopackage_file_path)` | `true` if layers load; `false` on cancellation or failure. |
| `parameter_value(id)` | Parameter value; throws `std::out_of_range` if undeclared. |

`lop::Points` releases memory when destroyed and supports move but not copy. Column methods such as `x()` or `classification()` return read-only `std::span` objects. It must be destroyed before `run` ends, while the host remains valid.

## Process tiles

The command chooses identifiers from `host.clouds()` and calls `host.process_tiles` with a `lop::TileOptions` and a function with this signature:

```cpp
void process_tile(lop::Tile const& tile, lop::TileResult* result,
                  lop::TileHost const& host);
```

`TileOptions` contains the [lop_tile_options](referencia.md#lop_tile_options) option fields, with Boolean `concurrent` and `read_only`. The processing function is passed separately. With `read_only = true`, `result` is null. With `concurrent = true`, the program can call the function from several threads at once.

`lop::TileHost` provides `report_tile_progress(fraction)`, `cancelled()`, `log(message)` and `max_worker_thread_count()`. The calculation must check `cancelled()` and return when cancellation is requested. The C++ wrapper converts this return to `LOP_CANCELLED`. A calculation exception is logged to **Output** and causes `process_tiles` to fail.

## Build with CMake

Save this as `CMakeLists.txt` beside the example:

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

Run the [C example build commands](ejemplo-en-c.md#build-with-cmake). Then follow [Install and check a DLL](instalar-y-comprobar.md).
