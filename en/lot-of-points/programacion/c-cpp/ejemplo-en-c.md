# C example
<!-- id: lot-of-points-sdk-ejemplo-c -->
<!-- origen: 6d5f7131f48fcf88d55b38ec68c3ee723f8dc61e -->

This example declares **Borrar por intensidad** (Delete by intensity) using the current software development kit (SDK). The dynamic-link library (DLL) queries clouds, chooses those with an edit log and original-file indices, and calls `process_tiles`.

## Code

Save this as `intensity_filter.c`:

```c
#include "lop_sdk.h"
#include <stdlib.h>

static lop_parameter const parameters[] = {
    { "min_intensity", "Intensidad mínima", "Borra puntos de menor intensidad.",
      LOP_PARAMETER_INTEGER, 100.0, 0.0, 65535.0, "", NULL }
};

static int process_tile(void* user_data, lop_tile const* tile,
    lop_tile_result* result, lop_tile_host const* host)
{
    double const minimum = *(double const*)user_data;
    uint64_t i;
    for (i = 0; i < tile->point_count; ++i)
    {
        if (0 == (i & 0xFFFF))
        {
            if (host->cancelled(host->context))
                return LOP_CANCELLED;
            host->report_tile_progress(host->context,
                (double)i / (double)tile->point_count);
        }
        if (tile->intensity[i] < minimum)
            result->deleted[i] = 1;
    }
    return LOP_OK;
}

static int run(lop_command const* command, double const* values,
    lop_command_host const* host)
{
    lop_cloud const* clouds;
    uint32_t count, chosen = 0, i;
    uint32_t* ids;
    lop_tile_options options = {0};
    lop_tiles_summary summary = {0};
    int outcome;
    (void)command;

    outcome = host->clouds(host->context, &clouds, &count);
    if (outcome != LOP_OK)
        return outcome;
    ids = (uint32_t*)malloc(sizeof(uint32_t) * (count ? count : 1));
    if (!ids)
    {
        host->log(host->context, "Borrar por intensidad: sin memoria.");
        return LOP_FAILED;
    }
    for (i = 0; i < count; ++i)
        if (clouds[i].editable && clouds[i].has_original_point_indices)
            ids[chosen++] = clouds[i].cloud_id;
    if (chosen == 0)
    {
        free(ids);
        host->log(host->context, "Borrar por intensidad: no hay nubes editables con índices originales.");
        return LOP_OK;
    }
    options.tile_core_side_length_cloud_units = 100.0;
    options.point_order = LOP_ORDER_ORIGINAL_POINT_INDEX;
    options.flags = LOP_TILES_CONCURRENT;
    options.estimated_peak_bytes_per_point = 1.0;
    options.process_tile = process_tile;
    options.user_data = (void*)&values[0];
    outcome = host->process_tiles(host->context, ids, chosen, &options, &summary);
    free(ids);
    if (outcome == LOP_OK)
        host->log(host->context, "Borrar por intensidad: procesamiento terminado.");
    return outcome;
}

LOP_SDK_EXPORT int lop_register_commands(uint32_t api_version, char const* language,
    lop_command const** commands, uint32_t* command_count)
{
    static lop_command list[1] = {0};
    (void)language;
    if (api_version != LOP_SDK_API_VERSION)
        return LOP_FAILED;
    list[0].id = "example.intensity_filter";
    list[0].name = "Borrar por intensidad";
    list[0].existing_tab_id = "lop.tab.classification";
    list[0].ribbon_section = "Filtros";
    list[0].description = "Borra puntos cuya intensidad es menor que el umbral.";
    list[0].parameters = parameters;
    list[0].parameter_count = 1;
    list[0].run = run;
    list[0].requirements = LOP_REQUIRES_EDITABLE_CLOUD;
    *commands = list;
    *command_count = 1;
    return LOP_OK;
}
```

The declaration and its text are static so the program can read them while the DLL is loaded. This example returns Spanish text for every received language.

`run` does not filter by `visible`: it also processes hidden clouds meeting the conditions. It passes the threshold to each tile through `options.user_data`. `process_tiles` waits for tiles to finish before returning, so the threshold pointer remains valid throughout processing.

`LOP_TILES_CONCURRENT` allows concurrent calls to `process_tile`. The calculation reads the shared threshold and writes only to its tile's result. The 1-byte-per-point memory estimate corresponds to a calculation allocating no additional memory. With 0, the program would apply the default estimate of 1024 bytes per point.

## Build with CMake

Save this `CMakeLists.txt` beside the C file:

```cmake
cmake_minimum_required(VERSION 3.20)
project(intensity_filter C)
set(LOP_SDK_DIR "" CACHE PATH "Carpeta de lop_sdk.h")
add_library(intensity_filter SHARED intensity_filter.c)
target_include_directories(intensity_filter PRIVATE ${LOP_SDK_DIR})
if (MSVC)
    target_compile_options(intensity_filter PRIVATE /utf-8)
endif()
```

Run these commands from PowerShell in the example folder:

```powershell
cmake -S . -B build -A x64 -DLOP_SDK_DIR="C:\ruta\al\Sdk\include"
cmake --build build --config Release
```

With the Visual Studio generator, the DLL is written to `build\Release\intensity_filter.dll`. `-A x64` selects 64 bits and `/utf-8` preserves accented text in the encoding read by Lot Of Points.

## Install and check

1. Copy the DLL to `%AppData%\lop\algorithms` with Lot Of Points closed.
2. Open Lot Of Points and check **Borrar por intensidad**, in **Filtros** on **Point classification**.
3. Open a cloud and adjust **Intensidad mínima** in **Settings**, under **Filtros**.
4. Click **Borrar por intensidad**.
5. Click **Undo** on the title bar to undo the committed event.

See [Install and check a DLL](instalar-y-comprobar.md) if the command does not load.
