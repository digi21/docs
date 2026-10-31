# Digi3DNET.db configuration file
<!-- id: archivo-de-configuracion-digi3dnet.db -->
<!-- origen: 1d89e716c0e9532edad10ab6c39905efdc988953 -->

This database stores Digi3D.AI settings.

Historically, Digi3D.AI stored settings in the _Windows_ registry.

Settings shared by all users \(such as the stereoscopy type, which does not vary on a computer depending on the logged-in user\) were stored in the registry key **Computer\HKEY\_LOCAL\_MACHINE\SOFTWARE\Digi21\Digi3D.NET**.

User-specific settings \(such as the preferred floating mark color in the photogrammetric window\) were stored in the registry key **Computer\HKEY\_CURRENT\_USER\SOFTWARE\Digi21\Digi3D.NET**.

Storing settings for all users under **HKEY\_LOCAL\_MACHINE** requires administrator privileges, which some users do not have. For this reason, computer settings are stored in a SQLITE database at **C:\ProgramData\Digi3D.NET\Digi3DNET.db**.

You can copy Digi3DNET.db between computers to avoid configuring multiple machines separately.

The Digi3D.AI installer does not create Digi3DNET.db. It still stores computer settings in the registry under **LOCAL\_MACHINE** \(because installing the program requires administrator privileges on the computer\). On first startup, Digi3D.AI creates the file with empty tables. Whenever Digi3D.AI reads a value that is missing from the file, it copies that value from **LOCAL\_MACHINE**, or saves the default value if it is also missing from that registry key. Real values are the exception: Digi3D.AI only stores them if they exist in **LOCAL\_MACHINE**; if a real value is missing from that registry key, Digi3D.AI uses the default without saving it. The file therefore contains only values Digi3D.AI has read at least once.

You can edit Digi3DNET.db with programs such as _DB Browser For SQLite_ or the [Advanced configuration](../cuadros-de-dialogo/configuracion-avanzada.md) dialog box.

The page for each option in the [Configuration](../cuadros-de-dialogo/configuracion/README.md), [Configure projects](../cuadros-de-dialogo/configurar-proyectos.md), and [Input device configuration](../cuadros-de-dialogo/configuracion-de-dispositivos-de-entrada.md) dialog boxes specifies, under **Where it is stored**, the folder, table, and value name used to store the option, and the SQL statements that change it. The [Configuration file values](valores-del-archivo-de-configuracion-digi3dnet.db.md) page lists values without an option page.
