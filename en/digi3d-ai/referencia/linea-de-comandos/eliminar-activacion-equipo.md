# /eliminar-activacion-equipo
<!-- id: eliminar-activacion-equipo -->
<!-- origen: e3ed5bf0a4fbf32831394d3b448f4614472033f3 -->

The `/eliminar-activacion-equipo` command removes from the computer the Digi3D.AI software license activation for all Windows users, the one that the [/activar-equipo](activar-equipo.md) command creates. The command shows no windows, does not open the Digi3D.AI interface and ends the `Digi3D.exe` process with an exit code that indicates the result.

The **Use the HASP key** button of the [Software licenses](../cuadros-de-dialogo/licencias-de-software.md#returning-to-the-dongle) dialog box runs this command with administrator permission when the computer has an activation for all Windows users.

## Syntax

```powershell
digi3d.exe /eliminar-activacion-equipo
```

The command has no arguments.

## What it removes

* The `%ProgramData%\Digi21.LicenciasDeSoftware\digi3d` folder, with the usage authorization (`token.jwt`) and the clock state (`reloj.json`). The command does not follow junctions or symbolic links and does not modify the contents of files with hard links. It keeps the `%ProgramData%\Digi21.LicenciasDeSoftware` folder, which Digi3D.AI, MDTopX and Topcal21 share, unless that folder is a reparse point or its owner is neither the Administrators group nor SYSTEM: in that case it removes the folder with all its contents.
* The `Digi21.Licencias.digi3d.equipo` computer cryptographic key, from the Trusted Platform Module (TPM) and from the software key storage provider.

The command does not remove the activations of each Windows user and does not notify digi21.net: the seat that the computer occupied in the license remains occupied until the activation ends or Digi21 revokes it. See [Number of computers of a license](../../../licencias-de-software/activar-ordenadores.md#number-of-computers-of-a-license).

## Differences from the other commands

* `/eliminar-activacion-equipo` is written with a leading slash and is not case-sensitive. The [dibujo](dibujo/README.md), [foto](foto.md) and [proyecto](proyecto.md) commands and the `--ayuda` option are written without a slash (the option with two hyphens) and are case-sensitive.
* `/eliminar-activacion-equipo` cannot be combined with other commands. If the command line contains `/eliminar-activacion-equipo`, Digi3D.AI runs only that command and does not parse the rest of the line. If the line also contains `/activar-equipo`, Digi3D.AI runs only `/activar-equipo`.

## Requirements

The process must run with the Administrators group enabled: open the console with **Run as administrator**. If the group is not enabled, the command removes nothing and ends with code 108. The command does not need an internet connection.

## Result

The command writes one line of text with the result, in the language of the Digi3D.AI interface. The command writes to the standard output of the process or, if unavailable, to the parent process console. If neither destination is available, the command writes nothing. When the output is redirected to a file or a pipe, the command writes in UTF-8.

The exit code of the process indicates the result, with the same meaning as in `/activar-equipo`:

| Code | Meaning |
| --- | --- |
| 100 | The activation for all Windows users has been removed, or the computer did not have one. |
| 107 | Windows returned an error while deleting a file, a folder or the computer key; part of the activation may remain. |
| 108 | The command requires administrator permission. Nothing has been removed. |

## Example

Digi3D.AI is a windowed application. To wait for the process to end and read its exit code, run the command with PowerShell opened with **Run as administrator**:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\installation\Digi3D.exe' -ArgumentList '/eliminar-activacion-equipo' -Wait -PassThru
$process.ExitCode
```

Replace the path in the example with the absolute path of `Digi3D.exe`. To save the result text to a file, add `-RedirectStandardOutput 'C:\Path\result.txt'` to `Start-Process`.
