# Command-line options
<!-- id: topcal21-opciones-de-la-linea-de-ordenes -->
<!-- origen: d6093905c8e9e57b59b47ae51b6acef41fee75c0 -->

You can pass parameters to Topcal21 from the command line. Topcal21 accepts a file name and two software license commands, `/activar-equipo` and `/servidor-licencias`.

| Syntax | Description |
| --- | --- |
| `Topcal21.exe [file]` | Starts Topcal21 and opens the file. |
| `Topcal21.exe /activar-equipo <code>` | Activates the computer, for all Windows users, with a software license activation code. |
| `Topcal21.exe /servidor-licencias <address>` | Saves the address of the local license server. |
| `Topcal21.exe /servidor-licencias /quitar` | Deletes the address of the local license server. |

## Open a file

```powershell
Topcal21.exe c:\trabajo\proyecto.prt
```

Topcal21 opens the file you specify, for example a project (.PRT), a points file (.PTS), an observations file (.OBS) or a sketches file (.CRQ), or a file in another format that Topcal21 can open. If the path contains spaces, write it between quotation marks.

If you specify no file, Topcal21 opens the last project when the preference to open the last project is enabled and the file exists. If you specify no file and the preference is disabled, there is no last project or the file does not exist, Topcal21 opens an empty project.

## Software license commands

The `/activar-equipo` and `/servidor-licencias` commands show no windows, do not open the Topcal21 interface and end the `Topcal21.exe` process with an exit code that indicates the result. They are written with a leading slash and are not case-sensitive. If the command line contains `/activar-equipo`, Topcal21 runs only that command and opens no file. If it contains `/servidor-licencias` and does not contain `/activar-equipo`, it runs only `/servidor-licencias`.

Both commands require the process to run with the Administrators group enabled: open the console with **Run as administrator**. Each command writes one line of text with the result, in the language of the Topcal21 interface, to the standard output of the process or, if the process has no standard output, to the console of the process that started it.

Topcal21 is a windowed application. To wait for the process to end and read its exit code, run the command with PowerShell opened with **Run as administrator**:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\installation\Topcal21.exe' -ArgumentList '/activar-equipo', '<code>' -Wait -PassThru
$process.ExitCode
```

Replace the path in the example with the absolute path of `Topcal21.exe` and `<code>` with the activation code.

### /activar-equipo

Syntax: `Topcal21.exe /activar-equipo <code>`. The code is the argument that immediately follows the command. If it is missing, the command ends with code 109. The exit codes, 100 to 109, are described in [With the `/activar-equipo` command](../licencias-de-software/activar-ordenadores.md#with-the-activar-equipo-command). To activate the computer you need an internet connection to digi21.net.

### /servidor-licencias

Syntax: `Topcal21.exe /servidor-licencias <address>` or `Topcal21.exe /servidor-licencias /quitar`. The address has the format `http://server:port` or `https://server:port`, without a path. If you specify an address, the command saves the address in the `ServidorLocal` value of the `HKEY_LOCAL_MACHINE\SOFTWARE\Digi21\LicenciasDeSoftware` key of the Windows registry, which Digi3D.AI and MDTopX also read, and queries the server to check that it responds with a valid certificate. If you specify `/quitar`, the command deletes the `ServidorLocal` value. The exit codes, 110 to 117, are described in [MDTopX and Topcal21](../licencias-de-software/servidor-de-licencias.md#mdtopx-and-topcal21).
