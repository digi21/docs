# Programación
<!-- id: lot-of-points-programacion -->

Lot Of Points permite añadir comandos en C, C++ y Python mediante su kit de desarrollo de software (SDK).
Cada comando puede consultar las nubes abiertas, pedir un punto al usuario, seleccionar puntos, procesar nubes
por teselas y cargar un GeoPackage como capas. El programa ejecuta cada comando en un hilo propio y mantiene
la navegación mientras el comando espera una respuesta.

El SDK de [C y C++](c-cpp/README.md) permite distribuir los comandos como bibliotecas de enlace dinámico
(DLL) de Windows de 64 bits. La cabecera de C es `lop_sdk.h`; la cabecera `lop/sdk.hpp` proporciona las clases
de C++.

[Python](python/README.md) ofrece las mismas operaciones del anfitrión mediante `lop.Host` y declara botones
con `@lop.command`. Los archivos de comandos se instalan en `%AppData%\lop\commands`.

Para distribuir los comandos a otros usuarios, publícalos en la [tienda de extensiones](publicar-en-la-tienda.md)
de digi21.net. El usuario instala las extensiones desde **Configuración** > **Tienda**. Para los comandos que declaran
un módulo, Lot Of Points comprueba que una licencia activada en el equipo incluya ese módulo.

El panel **Python** permite ejecutar guiones para controlar el visor mediante `lop.viewer` y lanzar órdenes
con `lop.run_command`. El panel ejecuta el texto del editor; los comandos instalados se ejecutan desde sus
botones del ribbon.
