# C and C++
<!-- id: lot-of-points-c-cpp -->
<!-- origen: f69a00bd72eaa1d6fea5a2ee13ee7cffa16e0b7e -->

The Lot Of Points software development kit (SDK) adds commands as 64-bit Windows dynamic-link libraries (DLLs). Each command declares its button and runs a `run` function on its own thread. The command chooses clouds and requests the operations it needs from the program.

The C application programming interface (API) is defined in `lop_sdk.h`. The DLL exports `lop_register_commands`, which returns its `lop_command` declarations. The C++ API uses the C interface through the classes in `lop/sdk.hpp`. The [Python API](../python/referencia.md#python-commands) exposes the same host operations.

## SDK files

| File or folder | Contents |
|---|---|
| `Sdk/include/lop_sdk.h` | C types, constants and registration signature. |
| `Sdk/include/lop/sdk.hpp` | C++20 classes; implementation is in the header. |
| `Sdk/example/` | Five `lop_examples.dll` commands and their `CMakeLists.txt`. |
| `Sdk/example/python/` | Point data and Select object in Python. |
| `Sdk/tools/png_to_header.ps1` | Converts a PNG (*Portable Network Graphics*) icon into a C header. |

`LOP_SDK_API_VERSION` is `1`. Compile the DLL with the current header. The current branch has removed `lop_algorithms.h` and does not load extensions exporting only `lop_register`.

## Command operations

`run` receives a `lop_command_host`, the host supplied by Lot Of Points. Functions waiting for a click or point loading block the command thread; the interface continues handling navigation.

| Operation | Function |
|---|---|
| Query open clouds and their processing conditions | `clouds` |
| Wait for a point and filter candidates by attributes or cloud | `ask_point` |
| Get points in a sphere | `points_in_sphere` |
| Leave points selected for a later user action | `select_points` |
| Process chosen clouds by tiles | `process_tiles` |
| Load GeoPackage tables as layers | `load_geopackage` |
| Query a class's current name | `class_name` |

The command combines `LOP_REQUIRES_*` in `requirements` to declare when its button is enabled. It also checks the specific data it needs when running.

To develop an extension, see the [C example](ejemplo-en-c.md), [C++ wrapper](cpp.md) and [lop_sdk.h reference](referencia.md). [Install and check a DLL](instalar-y-comprobar.md) describes installation and loading diagnostics.
