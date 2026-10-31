# License and copyright
<!-- id: licencia-y-copyright -->
<!-- origen: 975c8ed1b4cfc8e9a7bd303895f955d3746480ca -->

Vexcel, UltraCam, ActiveX, Internet Explorer, Microsoft, Visual Basic, Visual Basic .NET, Visual C# .NET, Visual C++ .NET, Visual Studio, Visual Studio, Windows, Windows 95, Windows 98, Windows 2000, Windows Millennium Edition, Windows .NET server family, Windows NT, Windows XP, Windows Vista and Windows 7 are registered trademarks or trademarks of Microsoft Corporation in the United States and/or other countries.

AutoCAD and DXF/DWG are registered trademarks of Autodesk, Inc.

MicroStation® is a registered trademark of Bentley Systems.

Stealth 3D Mouse is a registered trademark of Stealth International, LLC.

Softmouse3D is a registered trademark of Global Geo Supplies.

Immersion Interface Box is a registered trademark of Immersion Corporation.

Topomouse is a registered trademark of Pacific Geoproducts.

Logitech Trackman and Marble are registered trademarks of Logitech Corporation.

NVIDIA and Quadro are registered trademarks of nVidia Corporation.

ADS40 and ADS80 are registered trademarks of Leica Geosystems.

Google Earth is a registered trademark of Google Corporation.

The names of actual companies and products mentioned here may be trademarks of their respective owners.

## Third-party libraries

Digi3D.AI includes the third-party libraries listed below. Each library is distributed under its owner's license, identified by its [SPDX](https://spdx.org/licenses/) code. **Version** indicates the version installed by the Digi3D.AI installer. If the installer installs two versions of the same library, both are listed.

Digi3D.AI is based in part on the work of the Independent JPEG Group.

The full license text and notices for each library are in `THIRD-PARTY-NOTICES.txt`, copied by the installer to the Digi3D.AI installation folder. With the default installation folder, the path is `C:\Program Files\Digi21.net\Digi3D.AI\THIRD-PARTY-NOTICES.txt`. The file also includes the ownership notice for IOGP's (International Association of Oil and Gas Producers) EPSG dataset, installed by Digi3D.AI in `epsg-fiel.sqlite` (EPSG dataset version 12.057).

### Open-source libraries

| Library | Version | License | Copyright holder | Use in Digi3D.AI |
| --- | --- | --- | --- | --- |
| [Apache log4cxx](https://logging.apache.org/log4cxx/) | 0.10.0 | `Apache-2.0` (Apache License 2.0) | The Apache Software Foundation | Dependency of the VisionMap A3 Edge sensor. |
| [assimp](https://github.com/assimp/assimp) | 6.0.4 | `BSD-3-Clause` (3-clause BSD) | assimp team | Loading 3D models in the OpenGL engine. |
| [Boost](https://www.boost.org/) | 1.52 | `BSL-1.0` (Boost Software License 1.0) | Boost authors | Dependency of the VisionMap A3 Edge sensor. |
| [bzip2](https://sourceware.org/bzip2/) | 1.0.8 | `bzip2-1.0.6` (bzip2 license) | Julian R. Seward | bzip2 compression for libzip and Python. |
| [CDT](https://github.com/artem-ogre/CDT) | 1.4.4 | `MPL-2.0 AND BSD-3-Clause AND Apache-2.0 WITH LLVM-exception` (Mozilla Public License 2.0, 3-clause BSD and Apache License 2.0 with the LLVM exception) | Leica Geosystems Technology AB and CDT contributors; William C. Lenthe (geometric predicates); LLVM Project (`nth_element`) | Triangulation of polygons and TrueType text fills in the photogrammetric window. |
| [CLI11](https://github.com/CLIUtils/CLI11) | 2.6.2 | `BSD-3-Clause` (3-clause BSD) | University of Cincinnati (developed by Henry Schreiner) | Reading command-line parameters. |
| [Clipper](https://sourceforge.net/projects/polyclipping/) | 6.4.2 | `BSL-1.0` (Boost Software License 1.0) | Angus Johnson | Polygon clipping within assimp. |
| [curl](https://curl.se/) (libcurl) | 8.19.0 | `curl AND ISC AND BSD-4-Clause-UC` (curl license, ISC and University of California 4-clause BSD) | Daniel Stenberg and contributors | HTTP downloads for the point cloud viewer. |
| [Expat](https://github.com/libexpat/libexpat) | 2.7.4 | `MIT` (MIT license) | Thai Open Source Software Center Ltd, Clark Cooper and the Expat maintainers | Reading XML in Python. |
| [GLEW](https://github.com/nigels-com/glew) | 2.3.1 | `BSD-3-Clause AND MIT` (3-clause BSD and MIT) | Milan Ikits, Marcelo E. Magallon, Lev Povalahev, Brian Paul and The Khronos Group | Initializing OpenGL extensions. |
| [GLM](https://github.com/g-truc/glm) | 1.0.3 | Happy Bunny License or `MIT` (MIT license), at the licensee's choice | G-Truc Creation | Matrix calculations in the OpenGL engine. |
| [Guidelines Support Library (GSL)](https://github.com/microsoft/GSL) | 4.2.1 | `MIT` (MIT license) | Microsoft Corporation | C++ helper types in all modules. |
| [IFC++](https://github.com/ifcquery/ifcplusplus) | 4.1.1 | `MIT` (MIT license) | Fabian Gerold | IFC export. |
| [kuba--/zip](https://github.com/kuba--/zip) | 0.3.7 | `MIT` (MIT license) | Kuba Podgórski | Reading ZIP files within assimp. |
| [LASzip](https://laszip.org/) | 3.5.0 | `Apache-2.0` (Apache License 2.0) | rapidlasso GmbH | Reading LAZ files. |
| [libE57Format](https://github.com/asmaloney/libE57Format) | 3.3.0 | `BSL-1.0` (Boost Software License 1.0) | Kevin Ackley and Andy Maloney | Reading E57 files. |
| [libffi](https://github.com/libffi/libffi) | 3.5.2 | `MIT` (MIT license) | Anthony Green, Red Hat, Inc. and others | Calling native functions from Python (`ctypes`). |
| [libjpeg-turbo](https://libjpeg-turbo.org/) | 3.1.4.1 | `IJG AND BSD-3-Clause AND Zlib` (IJG license, 3-clause BSD and zlib) | D. R. Commander, Independent JPEG Group and Viktor Szathmáry | Reading and writing JPEG images. |
| [liblzma (XZ Utils)](https://tukaani.org/xz/) | 5.8.2 | `0BSD` (BSD Zero Clause) | XZ Utils authors and contributors | LZMA compression for LibTIFF and Python. |
| [libpng](https://github.com/pnggroup/libpng) | 1.6.55 | `libpng-2.0` (libpng 2.0 license) | The PNG Reference Library Authors | Reading and writing PNG images. |
| [libpq (PostgreSQL)](https://www.postgresql.org/) | 18.3 | `PostgreSQL` (PostgreSQL license) | PostgreSQL Global Development Group and The Regents of the University of California | Connecting to PostGIS databases. |
| [LibTIFF](https://libtiff.gitlab.io/libtiff/) | 4.7.1 | `libtiff` (LibTIFF license) | Sam Leffler and Silicon Graphics, Inc. | Reading and writing TIFF images. |
| [libzip](https://libzip.org/) | 1.11.4 | `BSD-3-Clause` (3-clause BSD) | Dieter Baron and Thomas Klausner | Reading and writing ZIP files. |
| [Microsoft WebView2 (loader)](https://www.nuget.org/packages/Microsoft.Web.WebView2) | 1.0.3967.48 | `BSD-3-Clause` (3-clause BSD) | Microsoft Corporation | AI chat pane. |
| [MiniZip](https://github.com/madler/zlib/tree/master/contrib/minizip) | 1.3.1 | `Zlib` (zlib license) | Gilles Vollant and Mathias Svensson | Reading ZIP files within assimp. |
| [nlohmann/json](https://github.com/nlohmann/json) | 3.12.0 | `MIT` (MIT license) | Niels Lohmann | Reading and writing JSON. |
| [OpenSSL](https://www.openssl.org/) | 3.6.1 | `Apache-2.0` (Apache License 2.0) | The OpenSSL Project Authors | Encrypted connections for libpq and Python. |
| [poly2tri](https://github.com/jhasse/poly2tri) | 2023-12-27 | `BSD-3-Clause` (3-clause BSD) | Poly2Tri Contributors | Polygon triangulation within assimp. |
| [pugixml](https://github.com/zeux/pugixml) | 1.15 | `MIT` (MIT license) | Arseny Kapoulkine | Reading XML within assimp. |
| [pybind11](https://github.com/pybind/pybind11) | 3.0.1 | `BSD-3-Clause` (3-clause BSD) | Wenzel Jakob | `digi21` Python modules. |
| [Python](https://www.python.org/) | 3.12.13 | `Python-2.0` (Python License 2.0) | Python Software Foundation | Embedded Python interpreter and its standard library. |
| [RapidJSON](https://rapidjson.org/) | 2025-02-26 | `MIT` (MIT license) | THL A29 Limited (Tencent) and Milo Yip | Reading JSON within assimp. |
| [Scintilla](https://www.scintilla.org/) and [Lexilla](https://www.scintilla.org/Lexilla.html) | 5.3.1 and 5.2.0 | `HPND` (Historical Permission Notice and Disclaimer) | Neil Hodgson | Code editor with syntax highlighting. |
| [SQLite](https://sqlite.org/) | 3.52.0 | `blessing` (public domain) | No owner: the code is in the public domain | SQLite databases. |
| [stb](https://github.com/nothings/stb) | 2024-07-29 | `MIT OR Unlicense` (MIT or public domain) | Sean Barrett | Loading images in the OpenGL engine. |
| [UTF8-CPP](https://github.com/nemtrif/utfcpp) | 4.0.9 | `BSL-1.0` (Boost Software License 1.0) | Nemanja Trifunovic | UTF-8 conversion within assimp. |
| [Xerces-C++](https://xerces.apache.org/xerces-c/) | 3.3.0 | `Apache-2.0` (Apache License 2.0) | The Apache Software Foundation | Reading XML for libE57Format. |
| [zlib](https://www.zlib.net/) | 1.2.13 and 1.3.1 | `Zlib` (zlib license) | Jean-loup Gailly and Mark Adler | Compression and decompression. |
| [Zstandard](https://facebook.github.io/zstd/) | 1.5.7 | `BSD-3-Clause` (3-clause BSD; the project also offers `GPL-2.0-only`) | Meta Platforms, Inc. | Compression for the point cloud viewer. |

### .NET libraries

| Library | Version | License | Copyright holder | Use in Digi3D.AI |
| --- | --- | --- | --- | --- |
| [PDFsharp](https://www.pdfsharp.com/) | 6.1.1 | `MIT` (MIT license) | empira Software GmbH | PDF export. |
| [Microsoft.Extensions.Logging.Abstractions](https://www.nuget.org/packages/Microsoft.Extensions.Logging.Abstractions) | 6.0.0 | `MIT` (MIT license) | Microsoft Corporation | PDFsharp dependency. |
| [System.Speech](https://www.nuget.org/packages/System.Speech) | 10.0.12 | `MIT` (MIT license) | Microsoft Corporation | Speech synthesis. |

### Commercial and hardware manufacturer components

| Component | Version | License | Copyright holder | Use in Digi3D.AI |
| --- | --- | --- | --- | --- |
| [Codejock Xtreme Toolkit Pro](https://codejock.com/) | 20.3.0 | Codejock Software commercial license | Codejock Software | User interface. |
| [3DxWare SDK](https://3dconnexion.com/) | 3.0 | 3Dconnexion SDK license | 3Dconnexion | Connecting to 3Dconnexion devices. |
| [ERDAS ECW/JP2 SDK](https://hexagon.com/) | 5.4.0 | Hexagon commercial license | Intergraph Corporation (Hexagon) | Reading ECW and JPEG 2000 images. |
| [MrSID Decode SDK](https://www.extensis.com/support/developers) | 9.5.4 | MrSID SDK license | LizardTech (Extensis) | Reading MrSID images. |
| Intel Threading Building Blocks | 4.1 | Distributed with the MrSID Decode SDK | Intel Corporation | MrSID Decode SDK dependency. |
| [ODA Platform (Teigha)](https://www.opendesign.com/) | 19.5 | Open Design Alliance commercial license | Open Design Alliance | Reading and writing DGN and DWG files. |
| [Esri File Geodatabase API](https://github.com/Esri/file-geodatabase-api) | 1.5.4 | `Apache-2.0` (Apache License 2.0) | Esri, Inc. | Reading file geodatabases (FileGDB). |
| VisionMap VMQuasiPanoramicModel | 4.1.6 | VisionMap license | VisionMap Ltd. | Visionmap A3 Edge sensor. |
| Intel Math Kernel Library and Intel OpenMP Runtime | 11.1 and 5.0 | Intel redistribution license | Intel Corporation | Dependencies of the Visionmap A3 Edge sensor. |
| Sentinel LDK License Generation API | 7.5 | Thales commercial license | SafeNet, Inc. (Thales) | License and dongle management. |
| Silicon Labs USBXpress | 3.5.0 | Silicon Laboratories license | Silicon Laboratories, Inc. | Connecting to the Topomouse USB device. |
| Analytica DPWUSB | 2.5.0 | Analytica license | Analytica | Connecting to the USB BOX device. |

### Installer

| Component | Version | License | Copyright holder | Use |
| --- | --- | --- | --- | --- |
| [WiX Toolset](https://wixtoolset.org/) (Burn engine, `WixToolset.BootstrapperApplicationApi` and custom actions) | 5.0.2 | `MS-RL` (Microsoft Reciprocal License) | .NET Foundation and contributors | Installer. |
| [.NET](https://dotnet.microsoft.com/) (self-contained runtime and `ijwhost.dll`) | 10.0 | `MIT` (MIT license) | .NET Foundation and Contributors | Installer interface and loading C++/CLI modules. |
| [Vortice.MediaFoundation](https://github.com/amerkoleci/Vortice.Windows), Vortice.DirectX and Vortice.Mathematics | 3.8.3, 3.8.3 and 2.1.0 | `MIT` (MIT license) | Amer Koleci and contributors | Playing installer videos. |
| [SharpGen.Runtime](https://github.com/SharpGenTools/SharpGenTools) and SharpGen.Runtime.COM | 2.4.2-beta | `MIT` (MIT license) | Alexandre Mutel, Jeremy Koritzinsky and Amer Koleci | Vortice dependency. |
| Microsoft Visual C++ Redistributable 2012, 2013 and 2022, .NET Desktop Runtime 10.0.12 and Microsoft Access Database Engine | Those published by Microsoft | Microsoft redistribution licenses | Microsoft Corporation | Prerequisites installed by the installer. |
