# /activar-equipo
<!-- id: activar-equipo -->
<!-- origen: 5b2da54e9245a98c1c23522c18575d0b0cfc5e55 -->

The `/activar-equipo` command activates the computer, for all Windows users, with a software license activation code. The command shows no windows, does not open the Digi3D.AI interface and ends the `Digi3D.exe` process with an exit code that indicates the result.

Before running `/activar-equipo`, see [Activate computers](../../../licencias-de-software/activar-ordenadores.md), which explains what an activation code is and how to get one.

## Syntax

```powershell
digi3d.exe /activar-equipo <code>
```

| Argument | Description |
| --- | --- |
| `<code>` | Activation code delivered by Digi21. It is the argument that immediately follows `/activar-equipo`. |

## Differences from the other commands

* `/activar-equipo` is written with a leading slash and is not case-sensitive. The [dibujo](dibujo/README.md), [foto](foto.md) and [proyecto](proyecto.md) commands and the `--ayuda` option are written without a slash (the option with two hyphens) and are case-sensitive.
* `/activar-equipo` cannot be combined with `dibujo`, `foto` or `proyecto`. If the command line contains `/activar-equipo`, Digi3D.AI runs only that command and does not parse the rest of the line: it opens no drawing or photogrammetric window and loads no project.

## Requirements

* The process must run with the Administrators group enabled: open the console with **Run as administrator**. If the group is not enabled, the command sends no request to digi21.net and ends with code 108.
* The computer needs an internet connection to digi21.net.

## Result

The command writes one line of text with the result, in the language of the Digi3D.AI interface. The command writes to the standard output of the process or, if unavailable, to the parent process console. If neither destination is available, the command writes nothing. When the output is redirected to a file or a pipe, the command writes in UTF-8.

The exit code of the process indicates the result. The exit codes, 100 to 109, are described in [With the `/activar-equipo` command](../../../licencias-de-software/activar-ordenadores.md#with-the-activar-equipo-command). Code 100 indicates that the computer is activated for all Windows users.

## Example

Digi3D.AI is a windowed application. To wait for the process to end and read its exit code, run the command with PowerShell opened with **Run as administrator**:

```powershell
$process = Start-Process -FilePath 'C:\Path\to\installation\Digi3D.exe' -ArgumentList '/activar-equipo', '<code>' -Wait -PassThru
$process.ExitCode
```

Replace the path in the example with the absolute path of `Digi3D.exe` and `<code>` with the activation code. To save the result text to a file, add `-RedirectStandardOutput 'C:\Path\result.txt'` to `Start-Process`.
