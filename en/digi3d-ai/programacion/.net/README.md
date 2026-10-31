# .NET
<!-- id: .net -->
<!-- origen: f006bd6483ac3eb8ab269b4539f3d54a62f3526c -->

Digi3D.AI exposes a .NET API for creating two types of programs:

- **Console applications** that read or write drawing files without opening Digi3D.AI, for example to convert or check files in batches.
- **Extensions** loaded inside Digi3D.AI: commands, geometry finders, quality controls, panes…

Programs are written in C# for **.NET 10** and reference Digi21 NuGet packages, version 26.0.0. The packages are listed in the [reference](referencia/README.md).

To get started, follow one of these two tutorials:

- [Tutorial: creating a console application](tutorial-aplicacion-de-consola.md).
- [Tutorial: creating an extension](tutorial-extension.md).

If you have programs created for earlier versions (24.0.0 packages or .NET 8), read [Migrating to .NET 10](migracion-a-net-10.md).

To learn to use the API types, follow the [C# programming course](curso-de-programacion-en-c/README.md).

The public [Examples-Programacion-Digi3D](https://github.com/digi21/Ejemplos-Programacion-Digi3D) repository contains complete programs: console applications that read and write `.bind` files, an extension, and code table utilities. Each example is explained in [Programming examples](ejemplos/README.md).
