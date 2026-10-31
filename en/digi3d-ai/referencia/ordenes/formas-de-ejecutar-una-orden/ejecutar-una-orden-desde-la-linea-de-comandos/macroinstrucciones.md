# Macroinstructions
<!-- id: macroinstrucciones -->
<!-- origen: e0b9ecb651be4e79f288c0d62dc8ff9c36bb6b1e -->

A macroinstruction is a named sequence of commands.

To run one, enter its name in the command line prefixed with an at sign \(@\).

For example, to run macroinstruction **curvas**, enter this in the program's [command line](./):

```text
@curvas
```

The program recognizes the initial at sign as an instruction to run a macroinstruction.

It runs all commands stored in the macroinstruction one by one.

## Locating the macroinstruction

Search for the macroinstruction in this order:

* In the active code table's [macroinstruction list](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/macroinstrucciones.md).
* In a text file named _@\[macroinstruction name\]_ in the current Windows directory.
* In a text file named _@\[macroinstruction name\]_ in the drawing file directory.
* In a text file named _@\[macroinstruction name\]_ in the Macroinstructions directory.
* In a text file named _@\[macroinstruction name\]_ in directory _c:\digi_.
* In a text file named _@\[macroinstruction name\]_ in the program directory.

## Comments and description

Lines starting with `//` or `#` in a macroinstruction file are comments and are not executed.

If the first line is a comment, its text is the macroinstruction description, displayed in the **Description** column of [MACRO_INSTRUCTIONS](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/m/macroinstrucciones.md). For example, file _@fina_:

```text
# Enable intermediate contour lines
on 020123
```

appears in the list with description "Enable intermediate contour lines".

> When creating a macroinstruction file in Notepad, remove the .txt extension when saving. If retained, include it when running the macroinstruction, for example: @curvas.txt.
