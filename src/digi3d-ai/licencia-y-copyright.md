# Licencia y copyright
<!-- id: licencia-y-copyright -->

Vexcel, UltraCam, ActiveX, Internet Explorer, Microsoft, Visual Basic, Visual Basic .NET, Visual C# .NET, Visual C++ .NET, Visual Studio, Visual Studio, Windows, Windows 95, Windows 98, Windows 2000, Windows Millennium Edition, Windows .NET server family, Windows NT, Windows XP, Windows Vista y Windows 7 son marcas registradas o marcas comerciales de Microsoft Corporation en los Estados Unidos y/o en otros países.

AutoCAD y DXF/DWG son marcas registradas de Autodesk, Inc.

MicroStation® es una marca registrada de Bentley Systems.

Stealth 3D Mouse es una marca registrada de Stealth International, LLC.

Softmouse3D es una marca registrada de Global Geo Supplies.

Immersion Interface Box es una marca registrada de Immersion Corporation.

Topomouse es una marca registrada de Pacific Geoproducts.

Logitech Trackman y Marble son marcas registradas de Logitech Corporation.

NVIDIA y Quadro son marcas registradas de nVidia Corporation.

ADS40 y ADS80 son marcas registradas de Leica Geosystems.

Google Earth es una marca registrada de Google Corporation.

Los nombres de las compañías y productos reales aquí mencionados pueden ser marcas registradas de sus respectivos propietarios.

## Librerías de terceros

Digi3D.AI incluye las bibliotecas de terceros que se enumeran a continuación. Cada biblioteca se distribuye bajo la licencia de su titular, identificada por su código [SPDX](https://spdx.org/licenses/). La columna **Versión** indica la versión que instala el programa de instalación de Digi3D.AI. Cuando el programa de instalación instala dos versiones de la misma biblioteca, la tabla indica las dos.

Digi3D.AI se basa en parte en el trabajo del Independent JPEG Group.

### Bibliotecas de código abierto

| Biblioteca | Versión | Licencia | Titular del copyright | Uso en Digi3D.AI |
|---|---|---|---|---|
| [Apache log4cxx](https://logging.apache.org/log4cxx/) | 0.10.0 | `Apache-2.0` (Apache License 2.0) | The Apache Software Foundation | Dependencia del sensor VisionMap A3 Edge. |
| [assimp](https://github.com/assimp/assimp) | 6.0.4 | `BSD-3-Clause` (BSD de 3 cláusulas) | assimp team | Carga de modelos 3D en el motor OpenGL. |
| [Boost](https://www.boost.org/) | 1.52 | `BSL-1.0` (Boost Software License 1.0) | Autores de Boost | Dependencia del sensor VisionMap A3 Edge. |
| [bzip2](https://sourceware.org/bzip2/) | 1.0.8 | `bzip2-1.0.6` (licencia de bzip2) | Julian R. Seward | Compresión bzip2 para libzip y para Python. |
| [CLI11](https://github.com/CLIUtils/CLI11) | 2.6.2 | `BSD-3-Clause` (BSD de 3 cláusulas) | University of Cincinnati (desarrollada por Henry Schreiner) | Lectura de los parámetros de la línea de órdenes. |
| [Clipper](https://sourceforge.net/projects/polyclipping/) | 6.4.2 | `BSL-1.0` (Boost Software License 1.0) | Angus Johnson | Recorte de polígonos dentro de assimp. |
| [curl](https://curl.se/) (libcurl) | 8.19.0 | `curl AND BSD-3-Clause AND ISC` (licencia de curl, BSD de 3 cláusulas e ISC) | Daniel Stenberg y colaboradores | Descargas HTTP del visor de nubes de puntos. |
| [Expat](https://github.com/libexpat/libexpat) | 2.7.4 | `MIT` (licencia MIT) | Thai Open Source Software Center Ltd, Clark Cooper y los mantenedores de Expat | Lectura de XML en Python. |
| [GLEW](https://github.com/nigels-com/glew) | 2.2.0 | `BSD-3-Clause AND MIT` (BSD de 3 cláusulas y MIT) | Milan Ikits, Marcelo E. Magallon, Lev Povalahev, Brian Paul y The Khronos Group | Inicialización de las extensiones de OpenGL. |
| [GLM](https://github.com/g-truc/glm) | 1.0.3 | `MIT` (licencia MIT) | G-Truc Creation | Cálculo matricial en el motor OpenGL. |
| [Guidelines Support Library (GSL)](https://github.com/microsoft/GSL) | 4.2.1 | `MIT` (licencia MIT) | Microsoft Corporation | Tipos auxiliares de C++ en todos los módulos. |
| [IFC++](https://github.com/ifcquery/ifcplusplus) | 4.1.1 | `MIT` (licencia MIT) | Fabian Gerold | Exportación a formato IFC. |
| [kuba--/zip](https://github.com/kuba--/zip) | 0.3.7 | `MIT` (licencia MIT) | Kuba Podgórski | Lectura de archivos ZIP dentro de assimp. |
| [LASzip](https://laszip.org/) | 3.5.0 | `Apache-2.0` (Apache License 2.0) | rapidlasso GmbH | Lectura de archivos LAZ. |
| [libE57Format](https://github.com/asmaloney/libE57Format) | 3.3.0 | `BSL-1.0` (Boost Software License 1.0) | Kevin Ackley y Andy Maloney | Lectura de archivos E57. |
| [libffi](https://github.com/libffi/libffi) | 3.5.2 | `MIT` (licencia MIT) | Anthony Green, Red Hat, Inc. y otros | Llamadas a funciones nativas desde Python (`ctypes`). |
| [libjpeg-turbo](https://libjpeg-turbo.org/) | 2.1.5 y 3.1.4 | `IJG AND BSD-3-Clause AND Zlib` (licencia del IJG, BSD de 3 cláusulas y zlib) | D. R. Commander, Independent JPEG Group y Viktor Szathmáry | Lectura y escritura de imágenes JPEG. |
| [liblzma (XZ Utils)](https://tukaani.org/xz/) | 5.4.1 y 5.8.2 | Dominio público (5.4.1) y `0BSD` (BSD Zero Clause, 5.8.2) | Autores y colaboradores de XZ Utils | Compresión LZMA para LibTIFF y para Python. |
| [libpng](https://github.com/pnggroup/libpng) | 1.6.39 | `libpng-2.0` (licencia de libpng 2.0) | The PNG Reference Library Authors | Lectura y escritura de imágenes PNG. |
| [libpq (PostgreSQL)](https://www.postgresql.org/) | 18.3 | `PostgreSQL` (licencia de PostgreSQL) | PostgreSQL Global Development Group y The Regents of the University of California | Conexión con bases de datos PostGIS. |
| [LibTIFF](https://libtiff.gitlab.io/libtiff/) | 4.5.0 y 4.7.1 | `libtiff` (licencia de LibTIFF) | Sam Leffler y Silicon Graphics, Inc. | Lectura y escritura de imágenes TIFF. |
| [libzip](https://libzip.org/) | 1.9.2 | `BSD-3-Clause` (BSD de 3 cláusulas) | Dieter Baron y Thomas Klausner | Lectura y escritura de archivos ZIP. |
| [Microsoft WebView2 (cargador)](https://www.nuget.org/packages/Microsoft.Web.WebView2) | 1.0.3967.48 | `BSD-3-Clause` (BSD de 3 cláusulas) | Microsoft Corporation | Panel de chat con IA. |
| [MiniZip](https://github.com/madler/zlib/tree/master/contrib/minizip) | 1.3.1 | `Zlib` (licencia zlib) | Gilles Vollant y Mathias Svensson | Lectura de archivos ZIP dentro de assimp. |
| [nlohmann/json](https://github.com/nlohmann/json) | 3.12.0 | `MIT` (licencia MIT) | Niels Lohmann | Lectura y escritura de JSON. |
| [OpenSSL](https://www.openssl.org/) | 3.6.1 | `Apache-2.0` (Apache License 2.0) | The OpenSSL Project Authors | Conexiones cifradas de libpq y de Python. |
| [poly2tri](https://github.com/jhasse/poly2tri) | 2023-12-27 | `BSD-3-Clause` (BSD de 3 cláusulas) | Poly2Tri Contributors | Triangulación de polígonos. |
| [pugixml](https://github.com/zeux/pugixml) | 1.15 | `MIT` (licencia MIT) | Arseny Kapoulkine | Lectura de XML dentro de assimp. |
| [pybind11](https://github.com/pybind/pybind11) | 3.0.1 | `BSD-3-Clause` (BSD de 3 cláusulas) | Wenzel Jakob | Módulos de Python `digi21`. |
| [Python](https://www.python.org/) | 3.12.13 | `Python-2.0` (Python License 2.0) | Python Software Foundation | Intérprete de Python embebido y su biblioteca estándar. |
| [RapidJSON](https://rapidjson.org/) | 2025-02-26 | `MIT` (licencia MIT) | THL A29 Limited (Tencent) y Milo Yip | Lectura de JSON dentro de assimp. |
| [Scintilla](https://www.scintilla.org/) y [Lexilla](https://www.scintilla.org/Lexilla.html) | 5.3.1 y 5.2.0 | `HPND` (Historical Permission Notice and Disclaimer) | Neil Hodgson | Editor de código con resaltado de sintaxis. |
| [SQLite](https://sqlite.org/) | 3.52.0 | `blessing` (dominio público) | Sin titular: el código es de dominio público | Bases de datos SQLite. |
| [stb](https://github.com/nothings/stb) | 2024-07-29 | `MIT OR Unlicense` (MIT o dominio público) | Sean Barrett | Carga de imágenes en el motor OpenGL. |
| [UTF8-CPP](https://github.com/nemtrif/utfcpp) | 4.0.9 | `BSL-1.0` (Boost Software License 1.0) | Nemanja Trifunovic | Conversión UTF-8 dentro de assimp. |
| [Xerces-C++](https://xerces.apache.org/xerces-c/) | 3.3.0 | `Apache-2.0` (Apache License 2.0) | The Apache Software Foundation | Lectura de XML para libE57Format. |
| [zlib](https://www.zlib.net/) | 1.2.13 y 1.3.1 | `Zlib` (licencia zlib) | Jean-loup Gailly y Mark Adler | Compresión y descompresión. |
| [Zstandard](https://facebook.github.io/zstd/) | 1.5.7 | `BSD-3-Clause` (BSD de 3 cláusulas; el proyecto también ofrece `GPL-2.0-only`) | Meta Platforms, Inc. | Compresión del visor de nubes de puntos. |

### Bibliotecas .NET

| Biblioteca | Versión | Licencia | Titular del copyright | Uso en Digi3D.AI |
|---|---|---|---|---|
| [PDFsharp](https://www.pdfsharp.com/) | 6.1.1 | `MIT` (licencia MIT) | empira Software GmbH | Exportación a PDF. |
| [Microsoft.Extensions.Logging.Abstractions](https://www.nuget.org/packages/Microsoft.Extensions.Logging.Abstractions) | 6.0.0 | `MIT` (licencia MIT) | Microsoft Corporation | Dependencia de PDFsharp. |
| [System.Speech](https://www.nuget.org/packages/System.Speech) | 10.0.12 | `MIT` (licencia MIT) | Microsoft Corporation | Síntesis de voz. |

### Componentes comerciales y de fabricantes de hardware

| Componente | Versión | Licencia | Titular del copyright | Uso en Digi3D.AI |
|---|---|---|---|---|
| [Codejock Xtreme Toolkit Pro](https://codejock.com/) | 20.3.0 | Licencia comercial de Codejock Software | Codejock Software | Interfaz de usuario. |
| [3DxWare SDK](https://3dconnexion.com/) | 3.0 | Licencia del SDK de 3Dconnexion | 3Dconnexion | Conexión con los dispositivos de 3Dconnexion. |
| [ERDAS ECW/JP2 SDK](https://hexagon.com/) | 5.4.0 | Licencia comercial de Hexagon | Intergraph Corporation (Hexagon) | Lectura de imágenes ECW y JPEG 2000. |
| [MrSID Decode SDK](https://www.extensis.com/support/developers) | 9.5.4 | Licencia del SDK de MrSID | LizardTech (Extensis) | Lectura de imágenes MrSID. |
| Intel Threading Building Blocks | 4.1 | Distribuida con el MrSID Decode SDK | Intel Corporation | Dependencia del MrSID Decode SDK. |
| [ODA Platform (Teigha)](https://www.opendesign.com/) | 19.5 | Licencia comercial de la Open Design Alliance | Open Design Alliance | Lectura y escritura de archivos DGN y DWG. |
| [Esri File Geodatabase API](https://github.com/Esri/file-geodatabase-api) | 1.5.4 | `Apache-2.0` (Apache License 2.0) | Esri, Inc. | Lectura de geodatabases de archivos (FileGDB). |
| VisionMap VMQuasiPanoramicModel | 4.1.6 | Licencia de VisionMap | VisionMap Ltd. | Sensor Visionmap A3 Edge. |
| Intel Math Kernel Library y Intel OpenMP Runtime | 11.1 y 5.0 | Licencia de redistribución de Intel | Intel Corporation | Dependencias del sensor Visionmap A3 Edge. |
| Sentinel LDK License Generation API | 7.5 | Licencia comercial de Thales | SafeNet, Inc. (Thales) | Gestión de licencias y llaves de protección. |
| Silicon Labs USBXpress | 3.5.0 | Licencia de Silicon Laboratories | Silicon Laboratories, Inc. | Conexión con el dispositivo Topomouse USB. |
| Analytica DPWUSB | 2.5.0 | Licencia de Analytica | Analytica | Conexión con el dispositivo USB BOX. |

### Programa de instalación

| Componente | Versión | Licencia | Titular del copyright | Uso |
|---|---|---|---|---|
| [WiX Toolset](https://wixtoolset.org/) (motor Burn, `WixToolset.BootstrapperApplicationApi` y acciones personalizadas) | 5.0.2 | `MS-RL` (Microsoft Reciprocal License) | .NET Foundation and contributors | Programa de instalación. |
| [.NET](https://dotnet.microsoft.com/) (entorno de ejecución autocontenido e `ijwhost.dll`) | 10.0 | `MIT` (licencia MIT) | .NET Foundation and Contributors | Interfaz del programa de instalación y carga de los módulos C++/CLI. |
| [Vortice.MediaFoundation](https://github.com/amerkoleci/Vortice.Windows), Vortice.DirectX y Vortice.Mathematics | 3.8.3, 3.8.3 y 2.1.0 | `MIT` (licencia MIT) | Amer Koleci y colaboradores | Reproducción de los vídeos del programa de instalación. |
| [SharpGen.Runtime](https://github.com/SharpGenTools/SharpGenTools) y SharpGen.Runtime.COM | 2.4.2-beta | `MIT` (licencia MIT) | Alexandre Mutel, Jeremy Koritzinsky y Amer Koleci | Dependencia de Vortice. |
| Microsoft Visual C++ Redistributable 2012, 2013 y 2022, .NET Desktop Runtime 10.0.12 y Microsoft Access Database Engine | Las que publica Microsoft | Licencias de redistribución de Microsoft | Microsoft Corporation | Requisitos previos que instala el programa de instalación. |
