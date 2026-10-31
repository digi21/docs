# Built-in Digi3D.AI command
<!-- id: orden-interna-de-digi3d.ai -->
<!-- origen: c0c3e75805ce11d45551c6cabff5dd6fe6a82a05 -->

These commands are included with Digi3D.AI. See the list in [Commands](/digi3d-ai/referencia/editor-de-tablas-de-codigos/pestanas/ordenes.md).

Enter a built-in command name in the [command line](./) to run it. For example, to run [ZOOME](/digi3d-ai/referencia/ventana-de-dibujo/ordenes/z/zoome.md), enter:

```
ZOOME
```

Some commands accept parameters. Enter the name, an equals sign (=), and space-separated parameters:

```
SMODE=2 4 7
```

Some commands require text parameters. Quote text containing spaces:

```
EXPORT="c:\mis trabajos\2021001\prueba.bin"
```

## Internal command name

Digi3D.AI runs in Spanish or English.

Command names vary with the interface language.

Each command has an internal name. An alias file maps language-specific names to that internal name.

For example, real variable [AA](../../../ventana-de-dibujo/variables/a/aa.md) (active angle) has internal name {55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}.

Internal names also run Digi3D.AI commands. Run this to set the active angle to 27 sexagesimal degrees:

```
{55EDDC5E-2B30-4bd0-B4FF-1BD954EF937C}=27
```

An internal name lets you assign a command to a key and run it regardless of the configured interface language.
