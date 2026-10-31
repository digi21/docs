# Location of the Von Grouber schemes file for relative orientations
<!-- id: ubicacion-esquemas-von-grouber -->
<!-- origen: 8438fd0e18665aacb995719dd1fd3d7f2442b2ab -->

Digi3D.AI does not require a relative orientation schemes configuration file, because it includes an option to calculate the Von Grouber photo coordinates automatically based on the image size.

You can configure the Von Grouber schemes file used in earlier versions in the Schemas field of the Relative orientation section of the configuration dialog.

The Digi3D.AI installer installs a copy of the file supplied with version 2007 in the following location, depending on the operating system:

| Operating system | Location |
| :--- | :--- |
| Windows 10/11 | C:\ProgramData\Digi3D.NET\Esquemas Orientaciones\Esquemas de orientación relativa.relscheme.xml |

Follow these steps to configure the Von Grouber schemes file for relative orientations:

1. Start **Digi3D.AI**.
2. Close the **New project** dialog.
3. Select **Tools/Configuration...** from the menu.
4. Find the **Relative orientation** section.
5. In **Schemas**, paste the Von Grouber schemes file path for your operating system from the table, or locate your custom schemes file.
6. Accept the **Configuration** dialog.
