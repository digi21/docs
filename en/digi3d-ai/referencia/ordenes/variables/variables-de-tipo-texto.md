# Text variables
<!-- id: variables-de-tipo-texto -->
<!-- origen: 140712e34219b574646305ee442f3002cc3b0db6 -->

These variables can store text.

## Parameters

Pass the value as a command parameter to assign a value to these variables.

## Examples

The text variable [AUTONUM\_FORMAT](/digi3d-ai/referencia/ventana-de-dibujo/variables/f/formato-autonum.md) specifies the text to store automatically when you run TEXT without parameters, if the numeric variable AUTONUM has been assigned a value.

Run the following commands to digitize the text sequence _Hoja 1, Hoja 2, Hoja 3_, etc., automatically:

```text
AUTONUM_FORMAT="Hoja %d"
AUTONUM=1
TEXT
```
