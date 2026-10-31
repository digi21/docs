# Location of table files
<!-- id: ubicacion-archivo-tablas -->
<!-- origen: e29902f11bf178e75438040c2a103a69fdef1a9f -->

Installers for earlier versions of Digi3D stored table directories in the _`c:\Archivos de programa\Digi21.net\Digi3D 2007\Tablas`_ folder.

This location is not suitable for Windows 10 and Windows 11, because users do not have permission to modify these directories \(even if they are administrators\). The Digi3D.AI installer therefore places table files \(default code table, default key assignments, symbol directory, etc.\) in the following folder:

| Operating system | Location |
| :--- | :--- |
| Windows 10/11 | C:\ProgramData\Digi3D.NET\ |

The folder containing the code table file may not appear in File Explorer. To select a file in that folder, enter the folder's path in File Explorer \(and press Enter\) to display its contents.
