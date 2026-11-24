# Command line
<!-- id: linea-de-comandos -->
<!-- origen: 1c02045923b112323dc3a74252fcbacb612db406 -->

You can pass parameters to Digi3D.AI from the command line.

For example, start the program, open a drawing file and run a macro instruction file that performs a task and closes the program when finished.

Each command is written after `digi3d.exe` and has its own options, which are described on the page of the command. You can write several commands on the same line, as in the example that combines `foto` and `dibujo`. The names of the commands and of the options are case-sensitive, except `/activar-equipo`.

If the command line contains no command, Digi3D.AI starts as if it had no parameters. If it contains an argument that is not one of the commands or options on this page, Digi3D.AI shows a message box with the error, runs no command and keeps starting as if it had no parameters. For example, Digi3D.AI does not open a file whose name is written alone after `digi3d.exe`: use the `dibujo`, `foto` or `proyecto` commands.

## Options

| Option | Description |
| --- | --- |
| --ayuda | Shows the syntax of the commands and options in a message box. When you close the box, Digi3D.AI keeps starting without running any command. |

## Commands

| Command | Description |
| --- | --- |
| [dibujo](/digi3d-ai/referencia/linea-de-comandos/dibujo/) | Opens a drawing window |
| [foto](/digi3d-ai/referencia/linea-de-comandos/foto.md) | Opens a photogrammetric window |
| [proyecto](/digi3d-ai/referencia/linea-de-comandos/proyecto.md) | Loads a photogrammetric project file |
| [/activar-equipo](/digi3d-ai/referencia/linea-de-comandos/activar-equipo.md) | Activates the computer for all Windows users with a software license activation code, without opening Digi3D.AI. It is written with a leading slash and cannot be combined with the other commands. |
| [/eliminar-activacion-equipo](/digi3d-ai/referencia/linea-de-comandos/eliminar-activacion-equipo.md) | Removes from the computer the software license activation for all Windows users, without opening Digi3D.AI. It is written with a leading slash and cannot be combined with the other commands. |

## Examples

Open the double-precision binary drawing file c:\trabajo\archivo.bind with the codes table c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Open a double-precision binary drawing file with the codes table c:\trabajo\tabla.tab.xml and run the macro instruction file "trabaja":

```powershell
digi3d.exe dibujo --orden @trabaja --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Open a double-precision binary drawing file with the codes table c:\trabajo\tabla.tab.xml, a pattern display scale of 1:2000 and a contour interval of 2.0 drawing work length units:

```powershell
digi3d.exe dibujo --escala 2000 --equidis 2 --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Open a photogrammetric window with model c:\trabajo\modelo.d3d:

```
digi3d.exe foto c:\trabajo\modelo.d3d
```

Open a photogrammetric window with model c:\trabajo\modelo.d3d and a drawing window with double-precision binary drawing file c:\trabajo\archivo.bind and codes table c:\trabajo\tabla.tab.xml:

```powershell
digi3d.exe foto c:\trabajo\modelo.d3d dibujo --tabla c:\trabajo\tabla.tab.xml bind c:\trabajo\archivo.bind
```

Open c:\trabajo\proyecto.prj in the photogrammetric file pane:

```
digi3d.exe proyecto c:\trabajo\proyecto.prj
```

Run the following command, in a console opened with **Run as administrator**, to activate the computer for all Windows users with an activation code (see [/activar-equipo](activar-equipo.md)):

```powershell
digi3d.exe /activar-equipo <code>
```
