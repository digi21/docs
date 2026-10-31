# Location of the aerotriangulation schemes file
<!-- id: ubicacion-esquemas-aerotriangulacion -->
<!-- origen: f0fae274fd238c9c94459e959181d436e1f3ce5d -->

The Digi3D.AI installer creates a copy of the assisted aerotriangulation schemes file, but does not store its path in the program's settings.

If you will be taking aerotriangulation measurements, specify the path in the Schemas option of the Relative orientation section of the Configuration dialog.

The following table shows where the Digi3D.AI installer copies the schemes file supplied with version 2007, depending on the operating system:

| Operating system | Location |
| :--- | :--- |
| Windows 10/11 | C:\ProgramData\Digi3D.NET\Esquemas Orientaciones\Esquemas de medida de aerotriangulación.aerotrischeme.xml |

Follow these steps to configure the Von Grouber schemes file for relative orientations:

1. Start **Digi3D.AI**.
2. Close the **New project** dialog.
3. Select **Tools/Configuration...** from the menu.
4. Find the **Aerotriangulation measurement** section.
5. In **Schemas**, paste the aerotriangulation schemes file path for your operating system from the table, or locate your custom schemes file.
6. Accept the **Configuration** dialog.

See also
