# Assign superelevation to a road
<!-- id: asignar-peraltes-a-vial -->
<!-- origen: 377b980fece92a6be5b7147acf619579c7c7ee99 -->

[Superelevation table](/mdtopx/modulo-viales/tabla-de-peraltes/tabla-de-peraltes.md)

This tool calculates superelevations needed for a viable alignment according to its curved elements. Specify a previously defined table relating radii to superelevations.

![Assign superelevation to road dialog](../../../images/image-96.png)

The dialog contains these fields:

* **Current road**: selected alignment name and length.
* **Available Superelevation lists**: stored superelevation lists, managed through [Superelevation table list](tabla-de-peraltes.md). Select a list and click Apply to calculate superelevations for the selected alignment; results appear below.
* **Relationships**: radius-to-superelevation relationships calculated for the current road, with chainages of important points where they apply, the curved elements' tangent points. Two buttons on the right modify this list: Delete all removes every relationship and resets superelevations to zero; Edit changes one relationship.

Click **OK** to accept the calculated superelevations. The program automatically calculates transitions between them.

Edit calculated superelevations later by running the tool again and selecting the same road.
