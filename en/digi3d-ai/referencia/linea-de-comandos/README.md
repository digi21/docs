# Command line
<!-- id: linea-de-comandos -->
<!-- origen: f2750310ac0c604605532176246121e331ab3110 -->

You can pass parameters to Digi3D.AI from the command line.

For example, start the program, open a drawing file and run a macro instruction file that performs a task and closes the program when finished.

The program accepts one or more commands from the command line. Without commands, it performs no task.

A command-line parameter may require additional optional parameters.

## Options

| Option | Description |
| --- | --- |
| --ayuda | Displays help |

## Commands

| Command | Description |
| --- | --- |
| [dibujo](/digi3d-ai/referencia/linea-de-comandos/dibujo/) | Opens a drawing window |
| [foto](/digi3d-ai/referencia/linea-de-comandos/foto.md) | Opens a photogrammetric window |
| [proyecto](/digi3d-ai/referencia/linea-de-comandos/proyecto.md) | Loads a photogrammetric project file |

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
