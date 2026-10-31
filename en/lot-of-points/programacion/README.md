# Programming
<!-- id: lot-of-points-programacion -->
<!-- origen: 2dbf577c9baab5f90e6ac20dd6f282ebdd1f6041 -->

Lot Of Points lets you add C, C++ and Python commands through its software development kit (SDK). Each command can query open clouds, ask the user for a point, select points, process clouds by tiles and load a GeoPackage as layers. Each command runs on its own thread, with navigation remaining available while it waits for a response.

The [C and C++](c-cpp/README.md) SDK distributes commands as 64-bit Windows dynamic-link libraries (DLLs). The C header is `lop_sdk.h`; `lop/sdk.hpp` provides the C++ classes.

[Python](python/README.md) offers the same host operations through `lop.Host` and declares buttons with `@lop.command`. Command files are installed in `%AppData%\lop\commands`.

To distribute commands to other users, publish them in the digi21.net [extension store](publicar-en-la-tienda.md). Users install extensions from **Settings** > **Store**. For commands declaring a module, Lot Of Points checks that a license activated on the computer includes that module.

The **Python** panel runs scripts controlling the viewer through `lop.viewer` and launching commands with `lop.run_command`. The panel runs the editor text; installed commands run from their ribbon buttons.
