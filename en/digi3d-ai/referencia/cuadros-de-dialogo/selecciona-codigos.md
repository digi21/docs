# Select codes
<!-- id: selecciona-codigos -->
<!-- origen: ad27198b56d977ea24bb29d27fa6ac16fad3a0e1 -->

A command opens this dialog box for you to specify the codes it will operate on. Commands that open it include [ON](../ventana-de-dibujo/ordenes/o/on.md), [OFF](../ventana-de-dibujo/ordenes/o/off.md), [ON\_TYPE](../ventana-de-dibujo/ordenes/o/on-tipo.md), [OFF\_TYPE](../ventana-de-dibujo/ordenes/o/off-tipo.md), [DELETE\_COD](../ventana-de-dibujo/ordenes/b/borra-cod.md), [BINTOP](../ventana-de-dibujo/ordenes/b/bintop.md), and [BINTRAM](../ventana-de-dibujo/ordenes/b/bintram.md). The title bar can display text specific to the command that opened it.

## Fields

* **Top drop-down list**: lists code table tags prefixed with `#`. Choosing a tag replaces the code list with codes that have that tag. The drop-down list then becomes empty again and focus moves to the code list.
* **Code list**: codes to pass to the command, with their color, type, and description. When the dialog box opens, it contains the codes supplied by the command, or is empty if none were supplied. This list has focus when the dialog box opens. Only one code can be selected at a time.
* **Add...**: opens [Select codes](seleccione-codigos.md), which searches the code table and adds codes to the list. It does not check for existing codes, so a code can appear more than once.
* **Delete**: removes the selected code from the list.
* **Clear**: empties the list.
* **Command options**: some commands, such as BINTOP, BINTRAM, DELETE\_COD, and ON\_TYPE, add their own fields below the list. Each command's page explains them. Press F1 in a dialog box with command options to open that command's page.
* **OK**: passes the listed codes to the command.
* **Cancel**: closes the dialog box and passes an empty code list to the command, even if the command supplied codes when opening it.

## Using the dialog box

1. Click **Add...** and select one or more codes, or choose a tag in the top drop-down list.
2. Repeat until the list contains all codes needed by the command. Remove unwanted codes with **Delete**.
3. Fill in any command-specific options displayed below the list.
4. Click **OK**.

## Notes

Enable the [automatic Add option](configuracion/diging/auto-pulsar-anadir-en-los-dialogos-que-solicitan-codigos.md) to make the dialog box click **Add...** when it opens.

The dialog box remembers its position and size separately for each command. ON\_TYPE, OFF\_TYPE, ONS\_TYPE, OFFS\_TYPE, OND\_TYPE, and OFFD\_TYPE share the same position and size.
