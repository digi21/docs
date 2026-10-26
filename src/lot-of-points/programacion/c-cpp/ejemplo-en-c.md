# Ejemplo en C
<!-- id: lot-of-points-sdk-ejemplo-c -->

Este ejemplo declara **Borrar por intensidad** con el kit de desarrollo de software (SDK) actual.
La biblioteca de enlace dinámico (DLL) consulta las nubes, elige las que tienen registro de ediciones e índices
del archivo original y llama a `process_tiles`.

## Código

Guarda el siguiente contenido como `intensity_filter.c`:

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

La declaración y sus textos son estáticos para que el programa pueda leerlos mientras la DLL está cargada.
Este ejemplo devuelve textos en español para cualquier idioma recibido.

`run` no filtra por `visible`: procesa también las nubes ocultas que cumplan las condiciones.
La función pasa el umbral a cada tesela mediante `options.user_data`.
`process_tiles` espera a que terminen las teselas antes de retornar, de modo que el puntero al umbral
sigue siendo válido durante el procesamiento.

`LOP_TILES_CONCURRENT` permite llamadas simultáneas a `process_tile`.
El cálculo lee el umbral compartido y escribe únicamente en el resultado de su tesela.
La estimación de memoria de 1 byte por punto corresponde a un cálculo que no reserva memoria adicional.
Con 0, el programa aplicaría la estimación predeterminada de 1024 bytes por punto.

## Compilar con CMake

Guarda este `CMakeLists.txt` junto al archivo de C:

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

Ejecuta estos comandos desde PowerShell en la carpeta del ejemplo:

```powershell
cmake -S . -B build -A x64 -DLOP_SDK_DIR="C:\ruta\al\Sdk\include"
cmake --build build --config Release
```

Con el generador de Visual Studio, la DLL queda en `build\Release\intensity_filter.dll`.
`-A x64` selecciona 64 bits y `/utf-8` conserva los textos con tildes en la codificación que lee Lot Of Points.

## Instalar y comprobar

1. Copia la DLL a `%AppData%\lop\algorithms` con Lot Of Points cerrado.
2. Abre Lot Of Points y comprueba el botón **Borrar por intensidad**, en **Filtros** de **Clasificación de puntos**.
3. Abre una nube y ajusta **Intensidad mínima** en **Configuración**, dentro de **Filtros**.
4. Pulsa **Borrar por intensidad**.
5. Pulsa **Deshacer** en la barra de título para revertir el evento confirmado.

Consulta [Instalar y comprobar una DLL](instalar-y-comprobar.md) si el programa no carga el comando.
