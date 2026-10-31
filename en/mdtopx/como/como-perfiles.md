# Profiles
<!-- id: como-perfiles -->
<!-- origen: 2022630b38eab6b9729eaf8f63b03c6d910487d0 -->

[DTM tools Civil products](../fichas-de-herramientas/ficha-de-herramientas-mdt/productos-civil.md)

The program projects profiles previously defined in a drawing file. It calculates profile data bands, longitudinal and cross profiles, and volumes for a potential corridor over the terrain.

A digital model must be the active document to calculate profile projection.

Run the tool by:

* Clicking Profiles on the [DTM tools](/mdtopx/herramientas-mdt/) tab.
* Pressing \[CTRL] + \[P].

A [dialog](../herramientas-mdt/perfiles/) configures profiles. Click **OK** to calculate them and generate:

* If longitudinal profile output is enabled, a drawing document containing longitudinal profiles.
* If cross profile output is enabled, a drawing document containing cross profiles and another with longitudinal and cross profiles projected onto the plan mapping. If corridor volume calculation is enabled in the cross profile dialog, another document contains that calculation.

This tool also runs from the [command line](../desde-linea-de-comando/linea-de-comando-perfiles.md).

See [Example 2: Obtain longitudinal and cross profiles along a corridor](/mdtopx/ejemplos/ejemplo2.md) for an example.
